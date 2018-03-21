<%@include file="includes/taglibs.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <title>Welcome</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1> ${greeting} </h1>
            <p> ${tagline} </p>
        </div>
        <%@include file="./includes/header.jsp"%>

        <div class="pull-left"><h3>${SpecialBlurb}</h3></div>
    </div>
</section>

</body>
</html>
