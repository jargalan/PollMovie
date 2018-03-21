package edu.mum.dao.impl;

import edu.mum.dao.PollDao;
import edu.mum.domain.Poll;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PollDaoImpl extends GenericDaoImpl<Poll> implements PollDao {

    public PollDaoImpl() {
        super.setDaoType(Poll.class );
    }

    @Override
    public List<Poll> findAll(){
        return entityManager.createQuery( "from " + daoType.getName() + " order by id DESC" )
                .getResultList();
    }
}
