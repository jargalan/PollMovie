<%@include file="../includes/taglibs.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Members</title>
</head>
<body>
<section>
	<div class="jumbotron">
		<div class="container">
			<h1>Member</h1>
			<p>View Member</p>
		</div>
		<%@include file="../includes/header.jsp"%>
	</div>
</section>

<section class="container">
	<div class="row">
        <div class="col-md-12" style="padding-bottom: 15px">
            <div class="thumbnail">
                <div class="caption">
                    <h3>Username: ${member.userCredentials.username}</h3>
                    <p><strong>First Name:</strong> ${member.firstName}</p>
                    <p><strong>Last Name:</strong> ${member.lastName}</p>
                    <p><strong>Age:</strong> ${member.age}</p>
                    <p><strong>Title:</strong> ${member.title} </p>
                    <p><strong>Member Number:</strong> ${member.memberNumber} </p>
                </div>
            </div>
        </div>
	</div>
</section>
</body>
</html>
