package edu.mum.domain;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.sql.Date;


@Entity
@Table(name = "movie")
public class Movie implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

    @NotEmpty
    @Pattern(regexp = "^[A-Za-z0-9' _-]*$", message = "{Pattern.title}")
    @Column(nullable=false)
	private String title;

    @NotEmpty
    @Column(nullable=false)
	private String genre;

    @Range(min = 1900, max = 3000, message = "{Range.validation}")
    @Column(length=4)
	private String year;

    @NotEmpty
    @Pattern(regexp = "^[A-Za-z' \\,]*$", message = "{Pattern.actors}")
    @Column(nullable=false)
	private String actors;

    @URL(protocol = "http", host = "www.imdb.com", message = "{Pattern.imdb}")
    @Column
	private String imdb;

    @NotEmpty
    @Pattern(regexp="^[A-Za-z0-9\\-]*$", message = "{Pattern.movie_index}")
    @Column(nullable=false, unique = true)
    private String movie_index;

	@Column
	private String poster;

	public Long getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getGenre() {
		return genre;
	}

	public String getYear() {
		return year;
	}

	public String getActors() {
		return actors;
	}

	public String getMovie_index() {
		return movie_index;
	}

	public String getImdb() {
		return imdb;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public void setImdb(String imdb) {
		this.imdb = imdb;
	}

	public void setMovie_index(String movie_index) {
		this.movie_index = movie_index;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	@Override
    public int hashCode() {
        if(id == null) return 0;
        return new Long(id).hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (! (obj instanceof Movie)) {
            return false;
        }
        return this.id == ((Movie)obj).getId();
    }

}
