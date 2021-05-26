<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         Home
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>

        <div>
            <fogoverskrift1>FOG CARPORT</fogoverskrift1>

            <div class ="jumbotron-backgroundImage">
                <fogOverskrift2>Velkommen til Fog Carporte</fogOverskrift2>
                <br />
                <fogtext>Her kan du bestille en carport, lige efter dine behov.</fogtext>
                <br />
                <c:if test="${sessionScope.role == null }">
                <fogtext>For at få adgang til sidens funktionalitet skal du oprette dig som bruger:</fogtext>
                <br />
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/registerpage"><btn-text>Gå til Sign Up siden</btn-text> </a>
                </c:if>
            </div>

            <c:if test="${sessionScope.role == 'employee' }">
                <p style="font-size: larger">Du er logget ind som medarbejder. Klik her for at gå til medarbejdersiden.</p>
                 <p><a href="fc/employeepage">Employee Page</a>
             </c:if>

             <c:if test="${sessionScope.role == 'customer' }">
                <p style="font-size: larger">Du er logget ind som kunde. Klik her for at gå til kundesiden.</p>
                <p><a href="fc/customerpage">Customer Page</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>