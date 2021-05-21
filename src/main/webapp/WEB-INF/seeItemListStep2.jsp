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
        <h1>Fogscarporte </h1>
        <p>Dette er prisen for din ordre <p/>
        <br>
        <div>
                ${requestScope.itemlist}

            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employee"> Tilbage </a>

        </div>

    </jsp:body>
</t:genericpage>

