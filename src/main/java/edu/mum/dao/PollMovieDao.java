package edu.mum.dao;

import edu.mum.domain.PollMovie;

public interface PollMovieDao extends GenericDao<PollMovie> {

    public PollMovie findByPollIdMovieId(Long pollId, Long movieId);

    public void voteMovie(Long pollId, Long movieId);

}
