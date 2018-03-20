<%@include file="../includes/taglibs.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@include file="../includes/scripts.jsp" %>
    <title>Movies</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Movies</h1>
            <p>Add New Movie<p>
        </div>
    </div>
</section>
<section class="container">
    <form:form modelAttribute="newMovie" class="form-horizontal">
        <fieldset>
            <legend>Add new movie</legend>

            <form:errors path="*" cssClass="alert alert-danger" element="div"/>
            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="title">Title</label>
                <div class="col-lg-10">
                    <form:input id="title" path="title" type="text" class="form:input-large"/>
                    <form:errors path="title" cssClass="text-danger"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="genre">Genre</label>
                <div class="col-lg-10">
                    <form:select path="genre" class="form:input-large">
                        <option selected="selected" disabled="disabled"></option>
                        <form:option value="Action">Action
                        </form:option>
                        <form:option value="Animated">Animated
                        </form:option>
                        <form:option value="Comedy">Comedy
                        </form:option>
                        <form:option value="Crime">Crime
                        </form:option>
                        <form:option value="Documentary">Documentary
                        </form:option>
                        <form:option value="Drama">Drama
                        </form:option>
                        <form:option value="Horror">Horror
                        </form:option>
                        <form:option value="Musical">Musical
                        </form:option>
                        <form:option value="SciFi">Sci-Fi
                        </form:option>
                        <form:option value="Thriller">Thriller
                        </form:option>
                        <form:option value="War Movie">War
                        </form:option>
                        <form:option value="Western">Western
                        </form:option>
                    </form:select>
                    <form:errors path="genre" cssClass="text-danger"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="year">Year</label>
                <div class="col-lg-10">
                    <form:input id="year" path="year" type="text" class="form:input-large"/>
                    <form:errors path="year" cssClass="text-danger"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="actors">Actors</label>
                <div class="col-lg-10">
                    <form:input id="actors" path="actors" type="text" class="form:input-large"/>
                    <form:errors path="actors" cssClass="text-danger"/>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-lg-2 col-lg-2" for="imdb">IMDB</label>
                <div class="col-lg-10">
                    <form:input id="imdb" path="imdb" type="text" class="form:input-large"/>
                    <form:errors path="imdb" cssClass="text-danger"/>
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
