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
        <div class = "jumbotron-fluid text-center">
            <underoverskrift1> Fog Carporte </underoverskrift1>
            <br>
            <form name="deposit" action="${pageContext.request.contextPath}/fc/updatestatusonorder" method="POST">
                <div class="row mb-3">
                    <label for="orderId" class="form-label">Ordrens id</label>
                    <div class = "col-12">
                        <input type="text" class="form-control" id="orderId"
                               placeholder="27" name="name" value="${param.orderId}">
                    </div>

                    <label for="status" class="form-label">Ny status på ordre</label>
                    <div class ="col-12">
                        <input type="text" class="form-control" id="status"
                               placeholder="Tilbud sendt til kunde" name="price" value="${param.status}">
                    </div>
                </div>
                <input class="btn btn-primary" type="submit" value="Submit">
            </form>
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"> Tilbage </a>

        </div>



    </jsp:body>
</t:genericpage>
