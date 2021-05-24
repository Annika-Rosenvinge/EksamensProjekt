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
        <fogOverskrift1>Fogscarporte </fogOverskrift1>
        <fogOverskrift2>Dette er styklisten </fogOverskrift2>
        <br>
        <div>
            <fogtext>${requestScope.itemList}</fogtext>

            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employee"><btn-text> Tilbage </btn-text></a>

        </div>

    </jsp:body>
</t:genericpage>

