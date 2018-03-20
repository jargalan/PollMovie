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

            <div class="pull-left"> <h3>${SpecialBlurb}</h3> </div>
        </div>
        <a href="<spring:url value="/polls/add" />" class="btn btn-danger btn-mini pull-right">Add a new poll</a>
        <br>
        <%@include file="../includes/authentication.jsp" %>
    </div>
</section>

<section class="container">
    <div class="row">
        <c:forEach items="${polls}" var="poll">
            <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                <div class="thumbnail">
                    <div class="caption">
                        <h4>Name - ${poll.name}</h4>
                        <h4>Name -  ${poll.name}
                            <a href="<spring:url value="/polls/${poll.id}" />" class="btn btn-primary  btn-mini  ">View</a>
                        </h4>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>
</body>
</html>
