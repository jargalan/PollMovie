package edu.mum.service.impl;


import edu.mum.dao.MovieDao;
import edu.mum.domain.Movie;
import edu.mum.service.MovieService;
import edu.mum.service.UserCredentialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieDao movieDao;

    public void save(Movie movie) {
        movieDao.save(movie);
    }

    public List<Movie> findAll() {
        return (List<Movie>)movieDao.findAll();
    }

    public Movie findOne(Long id) {
        return movieDao.findOne(id);
    }

    public void delete(Long id) {
        movieDao.delete(id);
    }

	public void voteMovie(Long id) {
		movieDao.voteMovie(id);

	}

}
