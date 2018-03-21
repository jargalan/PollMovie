package edu.mum.domain;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
//@NamedQuery(name = "Poll.findAll", query="select u from Poll u order by u.id DESC")
public class Poll implements Serializable {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    private String name;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable( name="Poll_User", joinColumns={@JoinColumn(name="Poll_ID")},
            inverseJoinColumns={ @JoinColumn(name="UserCredentials_ID")} )
    Set<UserCredentials> users = new HashSet<UserCredentials>();

//    @ManyToMany(fetch = FetchType.EAGER) //, cascade = CascadeType.ALL)
//    @JoinTable( name="Poll_Movie", joinColumns={@JoinColumn(name="Poll_ID")},
//            inverseJoinColumns={ @JoinColumn(name="Movie_ID")} )
//    Set<Movie> movies = new HashSet<Movie>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<UserCredentials> getUsers() {
        return users;
    }

    public void setUsers(Set<UserCredentials> users) {
        this.users = users;
    }

    public void addUser(UserCredentials user) {
        this.users.add(user);
    }

    public Set<Movie> getMovies() {
        return movies;
    }

    public void setMovies(Set<Movie> movies) {
        this.movies = movies;
    }

    public UserCredentials findUser(UserCredentials userCredentials) {
        return this.getUsers().stream()
                .filter(u -> u.equals(userCredentials))
                .findFirst().orElse(null);
    }

    @OneToMany(mappedBy = "poll", cascade = {CascadeType.PERSIST, CascadeType.REMOVE},
            orphanRemoval = true, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SUBSELECT)
    @OrderBy("votes DESC")
    private Set<PollMovie> pollMovies = new HashSet<PollMovie>();

    public void addPollMovie(PollMovie pollMovie) {
        this.pollMovies.add(pollMovie);
    }

    public Set<PollMovie> getPollMovies() {
        return pollMovies;
    }

    public void setPollMovies(Set<PollMovie> pollMovies) {
        this.pollMovies = pollMovies;
    }

    @Transient
    Set<Movie> movies = new HashSet<Movie>();
}
