<%--
  Created by IntelliJ IDEA.
  User: Annik
  Date: 11-05-2021
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <a class = "btn btn-dark" href="${sessionScope}/fc/customerpage"> Fortryd </a>

        </div>




    </jsp:body>

</t:genericpage>
