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
        <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
            <div class="thumbnail">
                <div class="caption">
                    <h3>Title - ${movie.title}</h3>
                    <h3>Year -  ${movie.year}</h3>
                    <p>Genre -         ${movie.genre}</p>
                    <%--<p>Votes -         ${movie.votes}</p>--%>
                    <p>Actors -         ${movie.actors}</p>
                    <p>IMDB -         ${movie.imdb}</p>
                </div>
            </div>
        </div>

    </div>
</section>
</body>
</html>
