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
            <fogOverskrift1>Se styklisten for en ordre</fogOverskrift1>
            <div class = "jumbotron jumbotron-fluid text-center">
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/seeitemlist" method="POST">
                    <div class="row mb-3">
                        <fogtext>Indtast ordre id'et for at se styklisten</fogtext>
                        <label for="order_id" class="form-label"><foglabeltext>Indtast ordre nummeret</foglabeltext></label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="order_id"
                                   placeholder="7" name="order_id" value="${param.order_id}">
                        </div>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"><btn-text> Tilbage</btn-text> </a>
            </div>
        </div>

    </jsp:body>
</t:genericpage>

