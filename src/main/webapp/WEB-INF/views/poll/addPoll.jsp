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
            <p>Add New Poll<p>
        </div>
    </div>
</section>
<section class="container">
    <form:form modelAttribute="newPoll" class="form-horizontal">
        <fieldset>
            <legend>Add new poll</legend>

            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="name">Poll Name</label>
                <div class="col-lg-10">
                    <form:input id="name" path="name" type="text" class="form:input-large"/>
                    <form:errors path="name" cssClass="text-danger"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="movies">Movies</label>
                <div class="col-lg-10">
                    <form:select path="movies" multiple="true" items="${movieList}" itemLabel="title" itemValue="id"/>
                    <form:errors path="movies" cssClass="text-danger"/>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn btn-primary" value="Add"/>
                </div>
            </div>

        </fieldset>
    </form:form>
</section>
</body>
</html>
