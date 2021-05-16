<%--
  Created by IntelliJ IDEA.
  User: Annik
  Date: 11-05-2021
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
         material insert
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <div class = "jumbotron-fluid text-center">
                <underoverskrift1> Fog Carporte </underoverskrift1>
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/materialinsert" method="POST">
                    <div class="row mb-3">
                        <label for="materialname" class="form-label"> Materialets navn</label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="materialname"
                                   placeholder="25X200mm tryk.imp bræt" name="name" value="${param.name}">
                        </div>

                        <label for="partsprunit" class="form-label">Hvor mange er der i pakken?</label>
                        <div class ="col-12">
                            <input type="text" class="form-control" id="partsprunit"
                                   placeholder="2" name="price" value="${param.partsPrUnit}">
                        </div>

                        <label for="unit" class="form-label">Er det stk/boks/rulle?</label>
                        <div class ="col-12">
                            <input type="text" class="form-control" id="unit"
                                   placeholder="stk" name="price" value="${param.unit}">
                        </div>

                        <label for="price" class="form-label">Prisen på materialet</label>
                        <div class ="col-12">
                            <input type="text" class="form-control" id="price"
                                   placeholder="20" name="price" value="${param.price}">
                        </div>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
            </div>


            <c:if test="${sessionScope.role == 'employee' }">
                <normaltext1>Du er nu logget ind som medarbejder</normaltext1>
                <normaltext1><a href="fc/employeepage">Employee Page</a></normaltext1>
            </c:if>

            <c:if test="${sessionScope.role == 'customer' }">
                <normaltext1>Velkommen til kundesiden for Fog Carporte</normaltext1>
                <a type="button" class="btn btn-light" href="${pageContext.request.contextPath}/fc/customerpage">Min
                    Side</a>
            </c:if>

        </div>

    </jsp:body>
</t:genericpage>