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
        </div>
        <%@include file="../includes/header.jsp"%>
    </div>
</section>
<section class="container">
    <div class="row">
        <c:forEach items="${movies}" var="movie">
            <div class="col-md-6" style="padding-bottom: 15px">
                <div class="thumbnail">
                    <div class="caption">
                        <h4>${movie.title} (${movie.year})</h4>
                        <p>${movie.actors}</p>
                        <a href="<spring:url value="/movies/${movie.id}" />" class="btn btn-primary  btn-mini  ">View</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
</body>
</html>
