package edu.mum.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Poll_Movie")
public class PollMovie  implements Serializable {

    @Id
    @ManyToOne
    @JoinColumn(name = "poll_id")
    private Poll poll;

    @Id
    @ManyToOne
    @JoinColumn(name = "movie_id")
    private Movie movie;

    @Column(name = "votes")
    private int votes;

    public PollMovie() {}

    public PollMovie(Poll poll, Movie movie) {
        this.poll = poll;
        this.movie = movie;
        this.votes = 0;
    }

    public Poll getPoll() {
        return poll;
    }

    public void setPoll(Poll poll) {
        this.poll = poll;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getVotes() {
        return votes;
    }

    public void setVotes(int votes) {
        this.votes = votes;
    }
}
