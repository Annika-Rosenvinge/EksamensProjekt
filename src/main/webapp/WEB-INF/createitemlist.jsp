<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Fogs Medarbejder Side
    </jsp:attribute>
    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>
    <jsp:body>
        <div>
            <fogOverskrift1> Fog Carporte - Stykliste kreation </fogOverskrift1>
            <div class = "jumbotron jumbotron-fluid text-center">
                <fogOverskrift2>Husk kundens ordre nummer og hvor stor de ønsker deres carport</fogOverskrift2>
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlistconfirmed" method="POST">
                    <fogText>Indtast kundens ordre id</fogText>

                    <label for="materialID" class = "form-label"><foglabeltext>Kundens ordre id</foglabeltext></label>
                    <input type="text" class = "form-control" id = "materialID"
                           placeholder = "7" name = "materialID" value ="${param.order_id}">

                    <input class = "btn btn-primary" type = "submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"><btn-text> Tilbage </btn-text></a>


            </div>


        </div>
    </jsp:body>
</t:genericpage>

