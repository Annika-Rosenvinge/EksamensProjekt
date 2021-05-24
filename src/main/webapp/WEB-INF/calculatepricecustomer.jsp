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

        <fogOverskrift1>Fogscarporte </fogOverskrift1>
        <fogOverskrift2>Dette er prisen for din ordre </fogOverskrift2>
        <br>
        <div>
                <fogtext>${requestScope.price}</fogtext>
        </div>
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/customerpage"><btn-text>Tilbage</btn-text></a>


    </jsp:body>
</t:genericpage>
