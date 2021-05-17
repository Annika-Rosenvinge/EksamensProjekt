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

        <pricetext>Det er nu tilføjet til det til kundens ordre </pricetext>
        <div>
            <a class = "btn btn-dark" href="${sessionScope}/fc/createitemlist"> Tilføj mere </a>
            <a class = "btn btn-dark" href="${sessionScope}/fc/employeepage"> Gå til medarbejder siden </a>

        </div>




    </jsp:body>
