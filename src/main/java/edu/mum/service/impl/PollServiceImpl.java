package edu.mum.service.impl;

import edu.mum.dao.PollDao;
import edu.mum.domain.Poll;
import edu.mum.service.PollService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PollServiceImpl implements PollService {

    @Autowired
    private PollDao pollDao;

    public void save(Poll poll) {
        pollDao.save(poll);
    }

    public List<Poll> findAll() {
        return (List<Poll>)pollDao.findAll();
    }

    public Poll findOne(Long id) {
        return pollDao.findOne(id);
    }

    public void delete(Long id) {
        pollDao.delete(id);
    }
}
