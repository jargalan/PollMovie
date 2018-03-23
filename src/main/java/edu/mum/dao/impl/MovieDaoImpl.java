package edu.mum.dao.impl;

import edu.mum.dao.MovieDao;
import edu.mum.domain.Movie;
import org.springframework.stereotype.Repository;


@Repository
public class MovieDaoImpl extends GenericDaoImpl<Movie> implements MovieDao {

	public MovieDaoImpl() {
		super.setDaoType(Movie.class);
	}

	public Movie findByMovieIndex(String movie_index) {
		return (Movie) entityManager.createQuery(
				"SELECT m FROM Movie AS m WHERE m.movie_index =:movie_index")
				.setParameter("movie_index", movie_index)
				.getSingleResult();
	}

}
