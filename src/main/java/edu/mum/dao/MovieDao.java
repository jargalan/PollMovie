package edu.mum.dao;


import edu.mum.domain.Movie;

import java.util.List;

public interface MovieDao extends GenericDao<Movie> {

    public Movie findByMovieIndex(String movie_index);

}
