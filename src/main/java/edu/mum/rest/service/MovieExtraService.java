package edu.mum.rest.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import edu.mum.domain.helper.MovieExtra;
import edu.mum.rest.RestHttpHeader;

@Service
public class MovieExtraService {
	@Autowired
	RestHttpHeader restHttpHeader;

	String baseUrl = "http://localhost:8080/MovieHelperRest/movieextra";
	String baseUrlExtended = baseUrl + "/";

	public List<MovieExtra> readByIndex(String index) {

		RestTemplate restTemplate = restHttpHeader.getRestTemplate();
		return Arrays.asList(restTemplate
				.exchange(baseUrlExtended+index, HttpMethod.GET, restHttpHeader.getHttpEntity(), MovieExtra[].class).getBody());
		
	}

}
