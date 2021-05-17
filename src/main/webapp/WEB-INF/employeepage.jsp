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

        <a class = "btn btn-dark" href="${sessionScope}/fc/materialinsert"> Indsæt materiale </a>
        <a class = "btn btn-dark" href="${sessionScope}/fc/materialupdate"> Opdater materiale pris </a>
    </jsp:body>
</t:genericpage>
