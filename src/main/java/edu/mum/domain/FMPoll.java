package edu.mum.domain;

import java.io.Serializable;

public class FMPoll  implements Serializable{
	private static final long serialVersionUID = 1L;
	private String movie_index;
	private String poll_id;
	private String phone_number;
	public String getMovie_index() {
		return movie_index;
	}
	public void setMovie_index(String movie_index) {
		this.movie_index = movie_index;
	}
	public String getPoll_id() {
		return poll_id;
	}
	public void setPoll_id(String poll_id) {
		this.poll_id = poll_id;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
}
