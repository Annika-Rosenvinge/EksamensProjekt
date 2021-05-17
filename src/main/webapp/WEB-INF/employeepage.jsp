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
        <style>
            button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 60px 140px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 20px;
            }
            h1 {text-align: center;}
            p {text-align: center;}
            div {text-align: center;}
        </style>
        <h1>Velkommen. </h1>
        <p>Du er logget ind som MEDARBEJDER, med user - ${sessionScope.email} <p/>
        <break>
        <h2>Vælg Opgave <h2/>
        <a href="${pageContext.request.contextPath}/fc/materialinsert"> <button type="button"> Materiale Indsætning</button></a> <a href="${pageContext.request.contextPath}/fc/materialupdate"><button type="button" > Materiale Opdatering</button></a>
    </jsp:body>
</t:genericpage>
