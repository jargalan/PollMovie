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
				<c:url var="actionUrl" value="/movies/save" />
				<div class="centerForm">

					<c:choose>
						<c:when test="${edit eq null}">
							<h2>Add Movie</h2>
						</c:when>
						<c:otherwise>
							<h2>Edit Movie</h2>
						</c:otherwise>
					</c:choose>

					<form:form id="movieForm" commandName="movie" method="post"	action="${actionUrl }">

						<div class="form-group">
							<label for="title">Title
							</label>
							<form:input path="title" class="form-control" />
							<form:errors path="title" class="error" />
						</div>
						<div class="form-group">
							<label for="genre">Genre</label>
							<form:select path="genre" class="form-control">
								<option selected="selected" disabled="disabled"></option>
								<form:option value="Action">Action
								</form:option>
								<form:option value="Animated">Animated
								</form:option>
								<form:option value="Comedy">Comedy
								</form:option>
								<form:option value="Crime">Crime
								</form:option>
								<form:option value="Documentary">Documentary
								</form:option>
								<form:option value="Drama">Drama
								</form:option>
								<form:option value="Horror">Horror
								</form:option>
								<form:option value="Musical">Musical
								</form:option>
								<form:option value="SciFi">Sci-Fi
								</form:option>
								<form:option value="Thriller">Thriller
								</form:option>
								<form:option value="War Movie">War
								</form:option>
								<form:option value="Western">Western
								</form:option>
							</form:select>
							<form:errors path="genre" class="error" />
						</div>
						<div class="form-group">
							<label for="year">Year</label>
							<form:input path="year" maxlength="4" class="form-control" />
							<form:errors path="year" class="error" />
						</div>
						<div class="form-group">
							<label for="actors">Actors</label>
							<form:input path="actors" class="form-control" />
							<form:errors path="actors" class="error" />
						</div>
						<div class="form-group">
							<label for="imdb">IMDB</label>
							<form:input path="imdb" class="form-control" />
							<form:errors path="imdb" class="error" />
						</div>
						<div class="form-group">
							<label for="publishedOn">Date</label>
							<form:input path="publishedOn" class="datepicker form-control" />
						</div>
						<div class="btn-group " role="group">
							<button type="submit" class="btn btn-default">Save</button>
							<button type="reset" class="btn btn-default">Reset</button>
							<a href="<c:url value='/movies/rank'/>" class="btn btn-default">Cancel</a>
						</div>			
						<form:input path="id" type="hidden" />
						<form:input path="votes" type="hidden" />
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>