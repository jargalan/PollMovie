<%@include file="../includes/taglibs.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@include file="../includes/scripts.jsp" %>
    <title>Polls</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Poll</h1>
            <p>Poll of movie list</p>
        </div>
        <%@include file="../includes/header.jsp"%>
    </div>
</section>
<section class="container">
    <div class="row">
        <div class="col-md-12" style="padding-bottom: 15px">
            <div class="thumbnail">
                <div class="caption">
                    <h3>Name - ${poll.name}</h3>
                    <p>Name -         ${poll.name}</p>
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
                            <th width="8%">Vote</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${poll.pollMovies}" var="pollMovie" varStatus="loopCounter">
                            <tr>
                                <td><strong><c:out value="${loopCounter.count}" /></strong></td>
                                <td><font color="red"><c:out value="${pollMovie.votes}" /></font></td>
                                <td><c:out value="${pollMovie.movie.title}" /></td>
                                <td><c:out value="${pollMovie.movie.genre}" /></td>
                                <td><c:out value="${pollMovie.movie.year}" /></td>
                                <td><c:out value="${pollMovie.movie.actors}" /></td>
                                <td>
                                    <c:if test="${pollMovie.movie.imdb != ''}">
                                        <a href="${pollMovie.movie.imdb}" target="blank">
                                            <i class="fa fa-external-link-square"> IMDb</i>
                                        </a>
                                    </c:if>
                                </td>
                                <td>
                                    <form:form id="vote" action="/polls/vote/${poll.id}" method="post">
                                    <button name="movieId" value="${pollMovie.movie.id}"
                                            <c:out value="${hasVoted == true ? 'disabled' : ''}"/>
                                            class="btn btn-primary" type="submit">
                                        <i class="fa fa-thumbs-up"></i>Vote
                                    </button>
                                    </form:form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

    </div>
</section>
</body>
</html>
