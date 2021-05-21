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
         Create order
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <div class = "jumbotron-fluid text-center">
                <underoverskrift1> Fog Carporte - Bestil din special bygget carport </underoverskrift1>
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/createorder" method="POST">
                    <div class="row mb-3">

                        <%--<label for="width" class="form-label">Bredden på din nye carport</label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="width"
                                   placeholder="25X200mm tryk.imp bræt" name="name" value="${param.name}">
                        </div>--%>

                        <input type="radio" class="btn-check" name="width" id="width1" autocomplete="off" value="${param.width}">
                        <label class="btn btn-secondary" for=width1 >300</label>

                        <input type="radio" class="btn-check" name="width" id="width2" autocomplete="off" value="${param.width}">
                        <label class="btn btn-secondary" for=width2>450</label>

                        <input type="radio" class="btn-check" name="width" id="width3" autocomplete="off"value="${param.width}">
                        <label class="btn btn-secondary" for=width3>600</label>

                        <input type="radio" class="btn-check" name="width" id="width4" autocomplete="off"value="${param.width}">
                        <label class="btn btn-secondary" for=width4>750</label>
                    </div>

                    <div class="row mb-3">

                        <input type="radio" class="btn-check" name="lenght" id="lenght1" autocomplete="off" value="${param.length}">
                        <label class="btn btn-secondary" for=lenght1 >480</label>

                        <input type="radio" class="btn-check" name="length" id="lenght2" autocomplete="off" value="${param.length}">
                        <label class="btn btn-secondary" for=lenght2>530</label>

                        <input type="radio" class="btn-check" name="length" id="lenght3" autocomplete="off"value="${param.length}">
                        <label class="btn btn-secondary" for=lenght3>580</label>

                        <input type="radio" class="btn-check" name="length" id="lenght4" autocomplete="off"value="${param.length}">
                        <label class="btn btn-secondary" for=lenght4>630</label>

                        <input type="radio" class="btn-check" name="length" id="lenght5" autocomplete="off"value="${param.length}">
                        <label class="btn btn-secondary" for=lenght5>680</label>

                        <input type="radio" class="btn-check" name="length" id="lenght6" autocomplete="off"value="${param.length}">
                        <label class="btn btn-secondary" for=lenght6>730</label>

                        <input type="radio" class="btn-check" name="length" id="lenght7" autocomplete="off"value="${param.length}">
                        <label class="btn btn-secondary" for=lenght7>780</label>
                    </div>


                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/customerpage"> Tilbage </a>

            </div>


           <%-- <c:if test="${sessionScope.role == 'employee' }">
                <normaltext1>Du er nu logget ind som medarbejder</normaltext1>
                <normaltext1><a href="fc/employeepage">Employee Page</a></normaltext1>
            </c:if>

            <c:if test="${sessionScope.role == 'customer' }">
                <normaltext1>Velkommen til kundesiden for Fog Carporte</normaltext1>
                <a type="button" class="btn btn-light" href="${pageContext.request.contextPath}/fc/customerpage">Min
                    Side</a>
            </c:if>--%>

        </div>

    </jsp:body>
</t:genericpage>
