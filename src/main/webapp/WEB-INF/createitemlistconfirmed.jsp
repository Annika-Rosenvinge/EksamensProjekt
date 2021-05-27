<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Fog carport kundeside
    </jsp:attribute>
    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <fogOverskrift1>Hello ${sessionScope.email} </fogOverskrift1>
        <fogOverskrift2>Velkommen til Johannes Fog carporte</fogOverskrift2>
        <div class = "jumbotron jumbotron-fluid text-center">
            <fogtext>Det er nu tilføjet til det til kundens ordre</fogtext>
            <div>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/addtoitemlist"> <btn-text> Tilføj mere </btn-text></a>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"> <btn-text>Gå til medarbejder siden </btn-text></a>

            </div>
        </div>






    </jsp:body>
</t:genericpage>