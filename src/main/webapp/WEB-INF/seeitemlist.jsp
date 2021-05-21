<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">

    </jsp:attribute>

    <jsp:attribute name="footer">
        <c: set var = "addHomeLink" value = "${false}" scope = "request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <div class = "jumbotron-fluid text-center">
                <underoverskrift1>Fog carporte</underoverskrift1>
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/seeorder" method="POST">
                    <div class="row mb-3">
                        <normaltext1>Indtast ordre id'et for at se styklisten</normaltext1>
                        <label for="order_id" class="form-label"> Indtast ordre nummeret</label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="order_id"
                                   placeholder="7" name="order_id" value="${param.order_id}">
                        </div>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"> Tilbage </a>

            </div>
        </div>

    </jsp:body>
</t:genericpage>

