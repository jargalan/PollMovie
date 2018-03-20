package edu.mum.dao.impl;

import edu.mum.dao.MovieDao;
import edu.mum.domain.Movie;
import org.springframework.stereotype.Repository;


@Repository
public class MovieDaoImpl extends GenericDaoImpl<Movie> implements MovieDao {

	public MovieDaoImpl() {
		super.setDaoType(Movie.class);
	}

    public void voteMovie(Long movieId) {

        Movie movie = findOne(movieId);

        if (null != movie) {

            synchronized (this) {
                movie.setVotes(movie.getVotes() + 1);
            }

        }
    }
}
