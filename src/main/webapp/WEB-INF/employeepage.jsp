<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Fogs Medarbejder Side
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>

        <h1>Velkommen. </h1>
        <p>Du er logget ind som MEDARBEJDER, med user - ${sessionScope.email} <p/>
        <br>

        <h2>Vælg Opgave <h2/>
        <c:if test="${sessionScope.role == 'employee' }">
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/materialinsert"> Indsæt Materiale </a>
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/materialupdate"> Opdater Materiale Pris </a>
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/updatestatusonorder"> Updater Ordrestatus </a>
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/seeorderemployee"> Se alle ordre </a>
        </c:if>
    </jsp:body>
</t:genericpage>
