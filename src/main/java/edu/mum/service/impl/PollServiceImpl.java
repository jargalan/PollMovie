package edu.mum.service.impl;

import edu.mum.aspect.annotation.MailNotification;
import edu.mum.dao.PollDao;
import edu.mum.dao.PollMovieDao;
import edu.mum.domain.Movie;
import edu.mum.domain.Poll;
import edu.mum.domain.PollMovie;
import edu.mum.service.PollService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@Transactional
public class PollServiceImpl implements PollService {

    @Autowired
    private PollDao pollDao;

    @Autowired
    private PollMovieDao pollMovieDao;

    @MailNotification
    public void save(Poll poll) {
        for(Movie movie: poll.getMovies()) {
            poll.addPollMovie(new PollMovie(poll, movie));
        }
        pollDao.save(poll);
    }

    public List<Poll> findAll() {
        return (List<Poll>)pollDao.findAll();
    }

    public Poll findOne(Long id) {
        return pollDao.findOne(id);
    }

    public void delete(Long id) {
        pollDao.delete(id);
    }

    public Poll update(Poll poll) {
        return pollDao.update(poll);
    }

    public void voteMovie(Long id, Long movieId) {
        pollMovieDao.voteMovie(id, movieId);
    }
}
