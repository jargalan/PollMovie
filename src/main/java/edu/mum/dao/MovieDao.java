package edu.mum.dao;


import edu.mum.domain.Movie;

import java.util.List;

public interface MovieDao extends GenericDao<Movie> {

    public void voteMovie(Long movieId);
}
