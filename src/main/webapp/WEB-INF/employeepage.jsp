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

        <fogOverskrift1>Velkommen. </fogOverskrift1>
        <fogtext>Du er logget ind som MEDARBEJDER, med user - ${sessionScope.email} </fogtext>
        <br>

        <fogoverskrift2>Vælg Opgave </fogoverskrift2>>
        <c:if test="${sessionScope.role == 'employee' }">
            <div class = "jumbotron-backgroundImage">
                <div>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/materialinsert"> Indsæt Materiale </a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/materialupdate"> Opdater Materiale Pris </a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/updatestatusonorder"> Updater Ordrestatus </a>

                </div>
                <div>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/seeorderemployee"> Se alle ordre </a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/createitemlist"> Lav en stykliste </a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/addtoitemlist"> Tilføj materiale til stykliste</a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/seeitemlist"> Se styklisten for en ordre </a>
                </div>
            </div>

        </c:if>
    </jsp:body>
</t:genericpage>
