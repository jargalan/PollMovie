<div class="container">
    <p>
        <security:authorize access="isAuthenticated()">
            Welcome <security:authentication property="principal.username"/>
        </security:authorize>
    </p>

    <security:authorize access="isAnonymous()">
        <a href="<spring:url value='/login' />" class="btn btn-default pull-right"> Login</a>
    </security:authorize>

    <security:authorize access="isAuthenticated()">
        <a href="<spring:url value="/members/add" />" class="btn btn-default pull-right">Add Member</a>
        <a href="<spring:url value="/members" />" class="btn btn-default pull-right">Member List</a>
        <a href="<spring:url value="/polls/add" />" class="btn btn-default pull-right">Add Poll</a>
        <a href="<spring:url value="/polls" />" class="btn btn-default pull-right">Poll List</a>
        <a href="<spring:url value="/movies/add" />" class="btn btn-default pull-right">Add Movie</a>
        <a href="<spring:url value="/movies" />" class="btn btn-default pull-right">Movie List</a>
    </security:authorize>

    <%--<a href="<spring:url value='/members' />" class="btn btn-default">--%>
        <%--<span class="glyphicon-hand-left glyphicon"></span> See the user list--%>
    <%--</a>--%>
    <security:authorize access="isAuthenticated()">
        <a href="<spring:url value='/logout' />" class="btn btn-default"> Logout</a>
    </security:authorize>
</div>