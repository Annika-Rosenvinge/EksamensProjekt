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
                <form name="deposit" action="${pageContext.request.contextPath}/fc/addtoitemlist" method="POST">
                    <pricetext>Indtast de materialer der skal bruges</pricetext>

                    <label for="materialID" class = "form-label">Materiale id</label>
                    <input type="text" class = "form-control" id = "materialID"
                           placeholder = "7" name = "materialID" value ="${param.material_id}">

                    <label for="quantity" class = "form-label">Antal</label>
                    <input type="text" class = "form-control" id = "quantity"
                           placeholder = "12" name = "quantity" value ="${param.quantity}">

                    <label for="length" class = "form-label">Længden på materialet</label>
                    <input type="text" class = "form-control" id = "length"
                           placeholder = "300" name = "lenght" value ="${param.length}">

                    <label for="description" class = "form-label">Kundens ordrenummer</label>
                    <input type="text" class = "form-control" id = "description"
                           placeholder = "4" name = "description" value ="${param.order_id}">

                    <input class = "btn btn-primary" type = "submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"> Tilbage </a>


            </div>


        </div>
    </jsp:body>
</t:genericpage>
