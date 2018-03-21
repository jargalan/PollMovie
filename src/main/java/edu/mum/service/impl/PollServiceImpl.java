package edu.mum.service.impl;

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
//        Set<PollMovie> pollMoviesToBeRemoved = new HashSet<>();
//
//        // If any movie list were omitted, remove that PollMovie object
//        for(PollMovie pm: poll.getPollMovies()) {
//            if(poll.getMovies().stream()
//                    .filter(m -> m.equals(pm.getMovie()))
//                    .findFirst().orElse(null) == null) {
//
//                pollMoviesToBeRemoved.add(pm);
//            }
//        }
//        for(PollMovie pm: pollMoviesToBeRemoved) {
//            poll.getPollMovies().remove(pm);
//        }
//
//        // If any new movie added, create and add new PollMovie object
//        for(Movie movie: poll.getMovies()) {
//            if(poll.getPollMovies().stream()
//                    .filter(pm -> pm.getMovie().equals(movie))
//                    .findFirst().orElse(null) == null) {
//
//                poll.addPollMovie(new PollMovie(poll, movie));
//            }
//        }
        return pollDao.update(poll);
    }

    public void voteMovie(Long id, Long movieId) {
        pollMovieDao.voteMovie(id, movieId);
    }
}
