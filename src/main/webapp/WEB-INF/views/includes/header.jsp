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
        <security:authorize access="hasRole('ROLE_ADMIN')">
        <a href="<spring:url value="/members/add" />" class="btn btn-default pull-right">Add Member</a>
        </security:authorize>
        <a href="<spring:url value="/members" />" class="btn btn-default pull-right">Member List</a>
        <security:authorize access="hasRole('ROLE_ADMIN')">
        <a href="<spring:url value="/polls/add" />" class="btn btn-default pull-right">Add Poll</a>
        </security:authorize>
        <a href="<spring:url value="/polls" />" class="btn btn-default pull-right">Poll List</a>
        <security:authorize access="hasRole('ROLE_ADMIN')">
        <a href="<spring:url value="/movies/add" />" class="btn btn-default pull-right">Add Movie</a>
        </security:authorize>
        <a href="<spring:url value="/movies" />" class="btn btn-default pull-right">Movie List</a>
    </security:authorize>

    <%@include file="authentication.jsp"%>
</div>