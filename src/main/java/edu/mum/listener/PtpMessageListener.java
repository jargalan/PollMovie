package edu.mum.listener;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.ObjectMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import edu.mum.domain.FMPoll;

@Component
public class PtpMessageListener  {
    private static final Logger logger = LoggerFactory.getLogger(PtpMessageListener.class);
    private static final String ORDER_RESPONSE_QUEUE = "poll-queue";
	
	@JmsListener(destination = ORDER_RESPONSE_QUEUE)
	public void receiveMessage(final Message message) throws JMSException {
		 ObjectMessage objectMessage = (ObjectMessage) message;
		 System.out.println("--------- incoming message-------");
	        FMPoll poll = null;
			try {
				poll = (FMPoll) objectMessage.getObject();
			} catch (JMSException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("-----:" + poll.getPhone_number());
	 		logger.info("         Movie Title: "  + poll.getPhone_number());
			logger.info("                 Movie Index: "  + poll.getMovie_index());
			logger.info("                 IMDB: "  + poll.getPoll_id());
	}
	/*

    public void onMessage(Message message) {
        ObjectMessage objectMessage = (ObjectMessage) message;
        Movie movieInfo = null;
		try {
			movieInfo = (Movie) objectMessage.getObject();
		} catch (JMSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		logger.info("         Movie Titl: "  + movieInfo.getTitle());
		logger.info("                 Movie Index: "  + movieInfo.getMovie_index());
		logger.info("                 IMDB: "  + movieInfo.getImdb());

		}*/
}
