<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         update status on orders
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div>
        <fogOverskrift1> Fog Carporte </fogOverskrift1>
        <div class = "jumbotron jumbotron-fluid text-center">
            <br>
            <form name="deposit" action="${pageContext.request.contextPath}/fc/updatestatusonorderconfirmed" method="POST">
                <div class="row mb-3">
                    <label for="orderId" class="form-label"><foglabeltext>Ordrens id</foglabeltext></label>
                    <div class = "col-12">
                        <input type="text" class="form-control" id="orderId"
                               placeholder="27" name="name" value="${param.orderId}">
                    </div>

                    <label for="status" class="form-label"><foglabeltext>Ny status på ordre</foglabeltext></label>
                    <div class ="col-12">
                        <input type="text" class="form-control" id="status"
                               placeholder="Tilbud sendt til kunde" name="price" value="${param.status}">
                    </div>
                </div>
                <input class="btn btn-primary" type="submit" value="Submit">
            </form>
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"><btn-text> Tilbage </btn-text></a>

        </div>



    </jsp:body>
</t:genericpage>
