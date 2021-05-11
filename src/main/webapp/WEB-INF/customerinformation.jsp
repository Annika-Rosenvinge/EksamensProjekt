<%--
  Created by IntelliJ IDEA.
  User: Annik
  Date: 11-05-2021
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
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
        <normaltext1>Her kan du ændre dine oplysninger</normaltext1>
        <div class="jumbotron-fluid text-center">
            <underoverskrift1> Dine oplysninger </underoverskrift1>
            <br>
            <form name = "deposit" action="${pageContext.request.contextPath}/fc/materialupdate" method = "POST">
                <div class = " col-12 rov mb-3">
                    <label for="adress" class = "form-label">Adresse</label>
                    <input type="text" class = "form-control" id = "adress"
                    placeholder = "Roskildevej 366" name = "adress" value ="${param.adress}">

                    <label for="zipcode" class = "form-label">zipcode</label>
                    <input type="text" class = "form-control" id = "zipcode"
                           placeholder = "2500" name = "zipcode" value ="${param.adress}">

                    <label for="city" class = "form-label">Adresse</label>
                    <input type="text" class = "form-control" id = "city"
                           placeholder = "Roskildevej 366" name = "city" value ="${param.city}">

                    <label for="phone" class = "form-label">Adresse</label>
                    <input type="text" class = "form-control" id = "phone"
                           placeholder = "73924693" name = "phone" value ="${param.phone}">
                </div>
                <input class = "btn btn-primary" type = "submit" value="Submit">
            </form>
        </div>

        <div>
            <a class = "btn btn-dark" href="${sessionScope}/fc/customerpage"> Fortryd </a>

        </div>


    </jsp:body>

</t:genericpage>
