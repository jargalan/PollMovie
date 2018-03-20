package edu.mum.controller;

import edu.mum.domain.Movie;
import edu.mum.domain.Poll;
import edu.mum.domain.UserCredentials;
import edu.mum.service.MovieService;
import edu.mum.service.UserCredentialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping({"/movies"})
public class MovieController {

    @Autowired
    private MovieService movieService;

    @RequestMapping
    public String listMovies(Model model) {
        model.addAttribute("movies", movieService.findAll());
        return "/movie/movies";
    }

    @RequestMapping("/{id}")
    public String getMovie(@PathVariable Long id, Model model) {
        Movie movie = movieService.findOne(id);
        model.addAttribute("movie", movie);
        model.addAttribute("edit", "editMovie");
        return "/movie/movie";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addMovie(@ModelAttribute("newMovie") Movie newMovie,
                           Model model) {
//        model.addAttribute("movie", new Movie());
        return "/movie/addMovie";
    }

    @RequestMapping("/edit")
    public String editMovies(Model model) {
        model.addAttribute("movie", new Movie());
        model.addAttribute("movieList", movieService.findAll());
        return "/movie/editMovies";
    }



    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveMovie(@Valid @ModelAttribute("newMovie") Movie movie,
                            BindingResult result) {

        if (result.hasErrors()) {
            return "/movie/addMovie";
        } else {

//            Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//            String name = auth.getName();
//            movie.setAddedBy(name);
            movieService.save(movie);

            return "redirect:/movies";
        }
    }

    @RequestMapping("/delete/{id}")
    public String deleteMovie(@PathVariable("id") Long id) {

        movieService.delete(id);
        return "redirect:/movies";
    }


}