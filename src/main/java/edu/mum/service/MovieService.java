package edu.mum.service;


import edu.mum.domain.Movie;

import java.util.List;

public interface MovieService {

	public void save(Movie movie);

	public List<Movie> findAll();

	public Movie findOne(Long id);

	public void delete(Long id);

	public void voteMovie(Long id);

}
