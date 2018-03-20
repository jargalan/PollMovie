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
			<p>Add movies</p>
		</div>
	</div>
</section>
<section class="container">
	<fieldset>
		<legend>Edit new movie</legend>
					<a class="btn btn-success" href="<c:url value="/movies/addMovie"/>"> <i
						class="fa fa-plus"></i> Add Movie
					</a> <a class="btn btn-primary" href="<c:url value="/movies/rank"/>"> <i
						class="fa fa-list"> </i> Ranking
					</a> <br>
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-condensed text-center">
							<thead>
								<tr class="success">
									<th width="30%">Title</th>
									<th width="7%">Genre</th>
									<th width="5%">Year</th>
									<th width="15%">Actors</th>
									<th width="8%">IMDB</th>
									<th width="11%">Added By</th>
									<th width="10%">Date</th>
									<th width="10%">Manage</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${movieList}" var="movie"	varStatus="loopCounter">
									<tr>
										<td><c:out value="${movie.title}" /></td>
										<td><c:out value="${movie.genre}" /></td>
										<td><c:out value="${movie.year}" /></td>
										<td><c:out value="${movie.actors}" /></td>
										<td><c:if test="${movie.imdb != '' }">
												<a href="${movie.imdb}" target="blank"> <i	class="fa fa-external-link-square"> IMDb</i></a>
											</c:if></td>
										<td><c:out value="${movie.addedBy}" /></td>
										<td><c:out value="${movie.publishedOn}" /></td>
										<td><nobr>
												<a class="btn btn-primary"
													href="<c:url value="/getMovie/${movie.id}"/>"> <i
													class="fa fa-pencil"></i> Edit
												</a> <a class="btn btn-danger" onclick="return confirm('OK to delete ${movie.title} ?');"
													href="deleteMovie/${movie.id}"> <i class="fa fa-times"></i>
													Delete
												</a>
										</nobr></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
    </fieldset>
</section>
</body>
</html>
