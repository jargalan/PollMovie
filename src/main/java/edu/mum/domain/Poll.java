package edu.mum.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Poll {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    private String name;

    @ManyToMany(fetch = FetchType.EAGER)//, cascade = CascadeType.ALL)
    @JoinTable( name="Poll_User", joinColumns={@JoinColumn(name="Poll_ID")},
            inverseJoinColumns={ @JoinColumn(name="UserCredentials_ID")} )
    Set<UserCredentials> users = new HashSet<UserCredentials>();

    @ManyToMany(fetch = FetchType.EAGER) //, cascade = CascadeType.ALL)
    @JoinTable( name="Poll_Movie", joinColumns={@JoinColumn(name="Poll_ID")},
            inverseJoinColumns={ @JoinColumn(name="Movie_ID")} )
    Set<Movie> movies = new HashSet<Movie>();

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
}
