package edu.mum.service;

import edu.mum.domain.Poll;

public interface EmailServer {

    public void sendPollMail(String to[], Poll poll);
}
