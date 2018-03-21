<security:authorize access="isAuthenticated()">
    <spring:url var="logoutUrl" value="/dologout"/>
    <form action="${logoutUrl}" method="get">
        <sec:csrfInput />
        <%--<div class="form-group">--%>
            <%--<div class="col-lg-offset-2 col-lg-10 ">--%>
                <input type="submit"  class="btn btn-warning" value ="Logout"/>
            <%--</div>--%>
        <%--</div>--%>
    </form>
</security:authorize>






