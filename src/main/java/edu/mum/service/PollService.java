package edu.mum.service;

import java.util.List;
import java.util.Set;

import edu.mum.domain.Member;
import edu.mum.domain.Poll;

public interface PollService {

    public void save(Poll poll);

    public List<Poll> findAll();

    public Poll findOne(Long id);

    public void delete(Long id);

}
