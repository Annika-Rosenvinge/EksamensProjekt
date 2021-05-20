<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Prisen for din ordre
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>

        <h1>Fogscarporte </h1>
        <p>Dette er prisen for din ordre <p/>
        <br>
        <div>
                ${requestScope.price}
        </div>

    </jsp:body>
</t:genericpage>
