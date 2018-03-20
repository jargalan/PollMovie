<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="../includes/taglibs.jsp"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<title>Movies</title>
</head>
<body>
<section>
	<div class="jumbotron">
		<div class="container">
			<h1>Movies</h1>
			<p>Movies List</p>
		</div>
	</div>
</section>
<section class="container">
	<fieldset>
		<legend>Edit new movie</legend>

					<div class="table-responsive">
						<table class="table table-striped table-bordered table-condensed text-center">
							<thead>
								<tr class="success">
									<th width="2%">Rank</th>
									<th width="2%">Votes</th>
									<th width="30$">Title</th>
									<th width="7%">Genre</th>
									<th width="5%">Year</th>
									<th width="15%">Actors</th>
									<th width="8%">IMDB</th>
									<th width="11%">Added By</th>
									<th width="10%">Date</th>
                                    <security:authorize access="isAuthenticated()">
                                        <th width="8%">Vote</th>
                                    </security:authorize>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${movieList}" var="movie"	varStatus="loopCounter">
									<tr>
										<td><strong><c:out value="${loopCounter.count}" /></strong></td>
										<td><font color="red"><c:out value="${movie.votes}" /></font></td>
										<td><c:out value="${movie.title}" /></td>
										<td><c:out value="${movie.genre}" /></td>
										<td><c:out value="${movie.year}" /></td>
										<td><c:out value="${movie.actors}" /></td>
										<td><c:if test="${movie.imdb != ''}">
												<a href="${movie.imdb}" target="blank"> <i	class="fa fa-external-link-square"> IMDb</i></a>
											</c:if></td>
										<td><c:out value="${movie.addedBy}" /></td>
										<td><c:out value="${movie.publishedOn}" /></td>
                                        <security:authorize access="isAuthenticated()">
											<td><form:form id="vote" action="vote" method="post">
													<button name="movieId" value="${movie.id}"
														class="btn btn-primary"
														<c:out value="${hasVoted == true ? 'disabled' : ''}"/>
														onclick="voteMovie();">
														<i class="fa fa-thumbs-up"></i>
													</button>
											</form:form></td>
                                        </security:authorize>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<br>
				</div>
			</div>
		</div>
    </div>	
</body>
</html>