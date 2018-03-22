<%@include file="../includes/taglibs.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@include file="../includes/scripts.jsp" %>
    <title>Movies</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Movies</h1>
            <p>View Movie</p>
        </div>
        <%@include file="../includes/header.jsp"%>
    </div>
</section>
<section class="container">
    <div class="row">
        <div class="col-md-6" style="padding-bottom: 15px">
            <div class="thumbnail">
                <div class="caption">
                    <h3>${movie.title} (${movie.year})</h3>
                    <p><strong>Genre: </strong> ${movie.genre}</p>
                    <p><strong>Actors: </strong> ${movie.actors}</p>
                    <p><strong>IMDB: </strong>
                        <c:if test="${pollMovie.movie.imdb != ''}">
                        <a href="${pollMovie.movie.imdb}" target="blank">
                            <i class="fa fa-external-link-square"> IMDb link</i>
                        </a>
                        </c:if>
                    </p>
                    <p><strong>Index: </strong> ${movie.movie_index}</p>
                </div>
            </div>
        </div>
        <div class="col-md-6" style="padding-bottom: 15px">
            <div class="thumbnail">
                <div class="caption">
                    <legend>Stores that are selling DVD/BlueRay of that movie</legend>
                    <c:forEach items="${movieExtraList}" var="movieExtra">
                    <h4>${movieExtra.storeName}</h4>
                    <p><strong>Price: $</strong>${movieExtra.price}</p><br/>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
