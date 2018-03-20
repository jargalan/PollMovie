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
            <p>Movie List</p>

            <div class="pull-left"> <h3>${SpecialBlurb}</h3> </div>
        </div>
        <a href="<spring:url value="/movies/add" />" class="btn btn-danger btn-mini pull-right">Add a new movie</a>
        <br>
        <%@include file="../includes/authentication.jsp" %>
    </div>
</section>

<section class="container">
    <div class="row">
        <c:forEach items="${movies}" var="movie">
            <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                <div class="thumbnail">
                    <div class="caption">
                        <h4>Title - ${movie.title}</h4>
                        <h4>Year - ${movie.year}
                            <a href="<spring:url value="/movies/${movie.id}" />" class="btn btn-primary  btn-mini  ">View</a>
                        </h4>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
</body>
</html>
