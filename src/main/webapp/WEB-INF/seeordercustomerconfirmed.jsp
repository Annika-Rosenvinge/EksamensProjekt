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
        see order confirmed
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <fogOverskrift1> Fog Carporte </fogOverskrift1>
            <div class = "jumbotron jumbotron-fluid text-center">
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/materialupdateconfirmed" method="POST">
                    <fogOverskrift2>Din forespørgelse er registreret</fogOverskrift2>
                </form>

                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/customer"> <btn-text> Tilbage</btn-text> </a>


            </div>
        </div>

    </jsp:body>
</t:genericpage>
