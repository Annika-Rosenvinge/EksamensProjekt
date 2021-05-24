<%@ page import="web.commands.CalculatePriceCommand" %>
<%@ page import="business.persistence.ItemlistMapper" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
         Fog carport kundeside
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <fogOverskrift1>Hello ${sessionScope.email} </fogOverskrift1>
        Velkommen til Johannes Fog carporte
        <fogOverskrift2>Dette er prisen</fogOverskrift2>
        <div>
            <fogtext>${requestScope.price}</fogtext>
            <%--<c:if test="${sessionScope.role == 'employee' }">
                <form action="${pageContext.request.contextPath}/fc/calculatepriceconfirmed" method="GET">
            <c:forEach var="totalprice" items="${requestScope.itemList}">

            ${itemList.material_id}_${itemList.lenght}_${itemList.quantity}_${ordre.price}_${itemList.order_id}
                </c:forEach>
            ${requestScope.price}
            </c:if>--%>

        </div>
        <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"><btn-text> Tilbage</btn-text></a>
    </jsp:body>
</t:genericpage>