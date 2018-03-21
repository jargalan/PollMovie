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
			<p>Member List</p>
		</div>
		<%@include file="../includes/header.jsp"%>
	</div>
</section>
<section class="container">
	<div class="row">
		<c:forEach items="${members}" var="member">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
					<div class="caption">
						<h4>Username: ${member.userCredentials.username}</h4>
						<h4>${member.firstName} ${member.lastName}
					 <a href="<spring:url value="/members/${member.id}" />" class="btn btn-primary btn-mini pull-right">View</a>
			</h4>
				</div>
				</div>
			</div>
		</c:forEach>
	</div>
</section>
</body>
</html>
