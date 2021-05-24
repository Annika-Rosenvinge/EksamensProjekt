<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Fog carport kundeside
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <fogOverskrift1>Hello ${sessionScope.email} </fogOverskrift1>
        <fogOverskrift2>Velkommen til Fog carporte</fogOverskrift2>

        <div class = "jumbotron-backgroundImage">
            <fogtext>Husk at du skal indtaste din adresse og andet kontakt information inden du
                bestiller første gang, ellers så bliver din ordre anulleret </fogtext>
            <div>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/customerinformation"><btn-text> Opdater information</btn-text> </a>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/seeordercustomer"> <btn-text> Se dine ordre</btn-text> </a>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/createorder"><btn-text> Ny ordre </btn-text> </a>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/calculatepricecustomer"><btn-text>Se prisen for din ordre</btn-text></a>
            </div>

        </div>





    </jsp:body>

</t:genericpage>

