<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Beregn prisen for en ordre
    </jsp:attribute>
    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>
    <jsp:body>

        <fogOverskrift1>Fogscarporte </fogOverskrift1>
        <fogOverskrift2>Beregn prisen for en kundes ordre </fogOverskrift2>
        <br>
        <form name="deposit" action="${pageContext.request.contextPath}/fc/calculatepriceconfirmed" method="POST">
        <div>
            <fogtext>Indtast kundens ordre id for at få prisen,
                husk at der skal være lavet en materiale liste før prisen kan beregnes</fogtext>
            <label for="orderID" class = "form-label"><foglabeltext>Order id</foglabeltext></label>
            <input type="text" class = "form-control" id = "orderID"
                   placeholder = "7" name = "orderID" value ="${param.order_id}">

            <input class = "btn btn-primary" type = "submit" value="Submit">
        </div>
        </form>
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"> <btn-text>Tilbage</btn-text> </a>


    </jsp:body>
</t:genericpage>
