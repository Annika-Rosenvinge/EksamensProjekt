<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Fogs Medarbejder Side
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>

        <h1>Velkommen. </h1>
        <p>Her er alle ordre - ${sessionScope.email} <p/>
        <br>

        <h2>Vælg Opgave <h2/>
        <c:if test="${sessionScope.role == 'employee' }">
            <form action="${pageContext.request.contextPath}/fc/createitemlistfororder" method="POST">
            <c:forEach var="ordre" items="${requestScope.orders}">
                <p>${ordre.id}_${ordre.length}_${ordre.status}_${ordre.userId}
            </c:forEach>

        </c:if>
    </jsp:body>
</t:genericpage>
