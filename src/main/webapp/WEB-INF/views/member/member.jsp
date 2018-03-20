 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 
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
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
					<div class="caption">
						<h3>First Name - ${member.firstName}</h3>
						<h3>Last Name -  ${member.lastName}</h3>
						<p>Age -         ${member.age}</p>
						<p>Title -       ${member.title} </p>
						<p>NUMBER -      ${member.memberNumber} </p>

					</div>
				</div>
			</div>

	</div>
</section>
</body>
</html>
