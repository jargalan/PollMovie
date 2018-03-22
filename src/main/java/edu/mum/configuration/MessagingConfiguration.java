package edu.mum.configuration;

import java.util.Arrays;

import javax.jms.ConnectionFactory;

import org.apache.activemq.spring.ActiveMQConnectionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.annotation.EnableJms;
import org.springframework.jms.config.DefaultJmsListenerContainerFactory;
import org.springframework.jms.core.JmsTemplate;

@Configuration
public class MessagingConfiguration {
private static final String DEFAULT_BROKER_URL = "tcp://localhost:61616";
	
	private static final String ORDER_QUEUE = "poll-queue";

	@Bean
	public ActiveMQConnectionFactory connectionFactory(){
		ActiveMQConnectionFactory connectionFactory = new ActiveMQConnectionFactory();
		connectionFactory.setBrokerURL(DEFAULT_BROKER_URL);
		//connectionFactory.setTrustedPackages(Arrays.asList("edu.mum.domain"));
		return connectionFactory;
	}
	
	
	

}
