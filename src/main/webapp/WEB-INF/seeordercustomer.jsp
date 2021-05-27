<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">

    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var = "addHomeLink" value = "${false}" scope = "request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <fogOverskrift1>Fog carporte</fogOverskrift1>
            <div class = "jumbotron jumbotron-fluid text-center">
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/seeordercustomer" method="POST">
                    <div class="row mb-3">
                        <fogtext>For at finde din ordre, skal du indtaste din email</fogtext>
                        <label for="email" class="form-label"><foglabeltext> Indtast din email</foglabeltext></label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="email"
                                   placeholder="jens@jensen.dk" name="name" value="${param.email}">
                        </div>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/customerpage"><btn-text> Tilbage </btn-text></a>

            </div>
        </div>

    </jsp:body>
</t:genericpage>
