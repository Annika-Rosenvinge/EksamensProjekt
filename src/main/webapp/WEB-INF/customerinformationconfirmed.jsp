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
        <normaltext1>Hello ${sessionScope.email} </normaltext1>
        Velkommen til Johannes Fog carporte

        <pricetext>Dine informationer er opdateret</pricetext>
        <div>
            <a class = "btn btn-dark" href="${sessionScope}/fc/customerpage"> Gå til kundeside </a>

        </div>




    </jsp:body>

</t:genericpage>
