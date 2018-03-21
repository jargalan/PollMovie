package edu.mum.dao.impl;

import edu.mum.dao.PollMovieDao;
import edu.mum.domain.PollMovie;
import edu.mum.domain.UserCredentials;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;

@Repository
public class PollMovieDaoImpl extends GenericDaoImpl<PollMovie> implements PollMovieDao {

    public PollMovieDaoImpl() {
        super.setDaoType(PollMovie.class);
    }

    public PollMovie findByPollIdMovieId(Long pollId, Long movieId) {

        Query query = entityManager.createQuery(
                "select pm from PollMovie pm where pm.poll.id =:pollId and pm.movie.id =:movieId");
        return (PollMovie) query
                .setParameter("pollId", pollId)
                .setParameter("movieId", movieId)
                .getSingleResult();
    }

    @Override
    public void voteMovie(Long pollId, Long movieId) {

        PollMovie pollMovie = findByPollIdMovieId(pollId, movieId);

        if (pollMovie != null) {

            synchronized (this) {
                pollMovie.setVotes(pollMovie.getVotes() + 1);
            }

        }
    }
}
