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
            <h1>Polls</h1>
            <p>Poll List</p>
        </div>
        <%@include file="../includes/header.jsp"%>
    </div>
</section>
<section class="container">
    <div class="row">
        <c:forEach items="${polls}" var="poll" varStatus="loopCounter">
            <div class="col-md-12" style="padding-bottom: 15px">
                <div class="thumbnail">
                    <div class="caption">
                        <h4>Poll #${poll.id}. ${poll.name}</h4>
                        <a href="<spring:url value="/polls/${poll.id}" />" class="btn btn-primary btn-mini">View</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
</body>
</html>
