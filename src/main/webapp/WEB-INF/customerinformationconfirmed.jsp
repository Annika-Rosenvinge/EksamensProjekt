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
        <fogOverskrift1>Hello ${sessionScope.email}</fogOverskrift1>
        <fogOverskrift2>Velkommen til Johannes Fog carporte</fogOverskrift2>
        <div>
            <fogtext>Dine informationer er opdateret</fogtext>
            <div>
                <a class = "btn btn-dark" href="${sessionScope}/fc/customerpage"><btn-text>Gå til kundeside</btn-text> </a>
            </div>
        </div>




    </jsp:body>

</t:genericpage>
