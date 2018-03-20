package edu.mum.domain;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.URL;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.sql.Date;


@Entity
@Table(name = "movie")
public class Movie {
	
	private Long id;
	private int votes;
	private String title;
	private String genre;
	private String year;
	private String actors;
	private String imdb;
//	private String addedBy;
//	private Date publishedOn;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}
	
	@Column
	public int getVotes() {		
		return votes;		
	}
	@NotEmpty
	@Pattern(regexp="^[A-Za-z0-9' _-]*$")
	@Column(nullable=false)
	public String getTitle() {
		return title;
	}
	
	@NotEmpty
	@Column(nullable=false)
	public String getGenre() {
		return genre;
	}
	
	@Range(min = 1900, max = 2015)
	@Column(length=4)
	public String getYear() {
		return year;
	}
	
	@NotEmpty
	@Pattern(regexp="^[A-Za-z' \\,]*$")
	@Column(nullable=false)
	public String getActors() {
		return actors;
	}
	
	@URL(protocol="http", host="www.imdb.com")
	@Column
	public String getImdb() {
		return imdb;
	}

	@Override
	public int hashCode() {
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

//	@Column(nullable=false)
//	public String getAddedBy() {
//		return addedBy;
//	}
//
//	@Column(name = "published_date")
//	public Date getPublishedOn() {
//		return publishedOn;
//	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public void setVotes(int votes) {
		this.votes = votes;
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

//	public void setAddedBy(String addedBy) {
//		this.addedBy = addedBy;
//	}
//
//	public void setPublishedOn(Date publishedOn) {
//		this.publishedOn = publishedOn;
//	}
}
