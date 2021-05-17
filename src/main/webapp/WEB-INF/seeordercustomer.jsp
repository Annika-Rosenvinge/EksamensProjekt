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
                        <label for="materialname" class="form-label"> Materialets navn</label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="materialname"
                                   placeholder="ex; 25X200mm tryk.imp bræt" name="name" value="${param.name}">
                        </div>

                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
            </div>

            </div>
        </div>

    </jsp:body>
</t:genericpage>
