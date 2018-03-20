package edu.mum.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import edu.mum.domain.Movie;
import edu.mum.domain.UserCredentials;
import edu.mum.service.MovieService;
import edu.mum.service.UserCredentialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import edu.mum.domain.Poll;
import edu.mum.service.PollService;

import java.util.Set;

@Controller
@RequestMapping({"/polls"})
public class PollController {

    @Autowired
    private PollService pollService;

    @Autowired
    private MovieService movieService;

    @Autowired
    private UserCredentialsService userCredentialsService;

    @RequestMapping
    public String listPolls(Model model) {
        model.addAttribute("polls", pollService.findAll());
        return "poll/polls";
    }

    @RequestMapping("/{id}")
    public String getPoll(@PathVariable("id") Long id, Model model) {
        Poll poll = pollService.findOne(id);
        model.addAttribute("poll", poll);
        return "poll/poll";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPoll(@ModelAttribute("newPoll") Poll newPoll,
                          Model model) {

        model.addAttribute("movieList", movieService.findAll());
        return "poll/addPoll";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String savePoll(@Valid @ModelAttribute("newPoll") Poll poll,
                           BindingResult result, Model model) {

        if (result.hasErrors()) {
            model.addAttribute("movieList", movieService.findAll());
            return "poll/addPoll";
        }

        pollService.save(poll);

        return "redirect:/polls";

    }

    @RequestMapping(value = "/vote/{id}", method = RequestMethod.POST)
    public String userVote(@PathVariable("id") Long id,
                           @RequestParam(value = "movieId", required = false) Long movieId) {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserCredentials user = userCredentialsService.findByUserName(auth.getName());

        System.out.println("======== " + auth.getName() + "-----------" + auth.getCredentials());
        Poll poll = pollService.findOne(id);

        if (!poll.getUsers().contains(user)) {
            poll.addUser(user);
//            Movie movie = movieService.findOne(movieId);
            movieService.voteMovie(movieId);
            pollService.save(poll);
        }

        return "redirect:/movies";

    }

    @InitBinder
    protected void initBinder(WebDataBinder binder) throws Exception {
        binder.registerCustomEditor(Set.class, "movies", new CustomCollectionEditor(Set.class) {
            protected Object convertElement(Object element) {
                if (element instanceof String) {
                    return movieService.findOne(Long.valueOf(element.toString()));
                }
                return null;
            }
        });
    }


}
