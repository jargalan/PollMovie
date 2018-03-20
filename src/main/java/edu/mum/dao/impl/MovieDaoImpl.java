package edu.mum.dao.impl;

import edu.mum.dao.MovieDao;
import edu.mum.domain.Movie;
import edu.mum.domain.Product;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


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
