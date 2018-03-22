package edu.mum.listener;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.ObjectMessage;

import edu.mum.domain.Movie;
import edu.mum.service.MovieService;
import edu.mum.service.PollService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import edu.mum.domain.FMPoll;

@Component
public class PtpMessageListener  {
    private static final Logger logger = LoggerFactory.getLogger(PtpMessageListener.class);
    private static final String ORDER_RESPONSE_QUEUE = "poll-queue";

    @Autowired
	PollService pollService;

    @Autowired
    MovieService movieService;

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
            System.out.println("        Phone Number: "  + poll.getPhone_number());
            System.out.println("        Movie Index: "  + poll.getMovie_index());
            System.out.println("        Poll #: "  + poll.getPoll_id());

			try {
                Movie movie = movieService.findByMovieIndex(poll.getMovie_index());
                pollService.voteMovie(
                        new Long(poll.getPoll_id()),
                        new Long(movie.getId()));
            } catch (Exception e) {
			    e.printStackTrace();
            }

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
