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
        <div>
            <div class = "jumbotron-fluid text-center">
                <underoverskrift1> Fog Carporte - Stykliste kreation </underoverskrift1>
                <normaltext1>Husk kundens ordre nummer og hvor stor de ønsker deres carport</normaltext1>
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlist" method="POST">
                    <pricetext>Indtast kundens ordre id</pricetext>

                    <label for="materialID" class = "form-label">Kundens ordre id</label>
                    <input type="text" class = "form-control" id = "materialID"
                           placeholder = "7" name = "materialID" value ="${param.order_id}">

                    <input class = "btn btn-primary" type = "submit" value="Submit">
                </form>

            </div>


        </div>
    </jsp:body>
</t:genericpage>

