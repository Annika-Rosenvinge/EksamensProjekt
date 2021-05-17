<%--
  Created by IntelliJ IDEA.
  User: Annik
  Date: 11-05-2021
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Create order confirmed
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <div class = "jumbotron-fluid text-center">
                <underoverskrift1> Fog Carporte </underoverskrift1>
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/materialupdateconfirmed" method="POST">
                    <normaltext1>Din forespørgelse er registreret</normaltext1>
                </form>

                <a class = "btn btn-dark" href="${sessionScope}/fc/createorder"> Lav ny forespørgsel </a>

            </div>


            <c:if test="${sessionScope.role == 'employee' }">
                <normaltext1>Du er nu logget ind som medarbejder</normaltext1>
                <normaltext1><a href="fc/employeepage">Employee Page</a></normaltext1>
            </c:if>

            <c:if test="${sessionScope.role == 'customer' }">
                <normaltext1>Velkommen til kundesiden for Fog Carporte</normaltext1>
                <a type="button" class="btn btn-light" href="${pageContext.request.contextPath}/fc/customerpage">Min
                    Side</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>
