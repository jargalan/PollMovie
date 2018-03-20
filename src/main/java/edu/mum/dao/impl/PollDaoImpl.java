package edu.mum.dao.impl;

import edu.mum.dao.PollDao;
import edu.mum.domain.Poll;
import org.springframework.stereotype.Repository;

@Repository
public class PollDaoImpl extends GenericDaoImpl<Poll> implements PollDao {

    public PollDaoImpl() {
        super.setDaoType(Poll.class );
    }
}
