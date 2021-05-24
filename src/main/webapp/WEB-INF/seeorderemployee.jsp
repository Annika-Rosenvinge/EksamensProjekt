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

        <fogOverskrift1>Velkommen. </fogOverskrift1>
        <fogOverskrift2>Her er alle ordre - ${sessionScope.email} </fogOverskrift2>
        <br>
        <c:if test="${sessionScope.role == 'employee' }">
            <form action="${pageContext.request.contextPath}/fc/seeorderemployee" method="POST">
            <c:forEach var="ordre" items="${requestScope.orders}">
                <fogtext>${ordre.id}_${ordre.length}_${ordre.status}_${ordre.userId}</fogtext>
            </c:forEach>
            <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"><btn-text> Tilbage </btn-text></a>



        </c:if>
    </jsp:body>
</t:genericpage>
