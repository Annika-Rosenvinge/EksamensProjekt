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
        <fogtext>Du er logget ind som MEDARBEJDER - ${sessionScope.email} </fogtext>
        <br>

        <fogOverskrift2>Vælg Opgave </fogOverskrift2>>
        <c:if test="${sessionScope.role == 'employee' }">
            <div class = "jumbotron-backgroundImage">
                <div>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/materialinsert"> <btn-text>Indsæt Materiale </btn-text></a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/materialupdate"> <btn-text>Opdater Materiale Pris</btn-text> </a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/updatestatusonorder"> <btn-text>Updater Ordrestatus</btn-text> </a>
                </div>
                <div>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/seeorderemployee"> <btn-text>Se alle ordre</btn-text> </a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/createitemlist"> <btn-text> Lav en stykliste </btn-text></a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/addtoitemlist"> <btn-text> Tilføj materiale til stykliste</btn-text></a>
                    <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/seeitemlist"> <btn-text>Se styklisten for en ordre </btn-text></a>
                </div>
            </div>

        </c:if>
    </jsp:body>
</t:genericpage>
