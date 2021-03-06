<%--
  Created by IntelliJ IDEA.
  User: Annik
  Date: 11-05-2021
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>
Kun 1 contentType er tilladt
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>

    <jsp:attribute name="header">
        Materiale Indsætning
    </jsp:attribute>

    <jsp:attribute name="footer">
        <c:set var="addHomeLink" value="${false}" scope="request"/>
    </jsp:attribute>

    <jsp:body>
        <div>
            <fogOverskrift1> Fog Carporte </fogOverskrift1>
            <div class = "jumbotron jumbotron-fluid text-center">
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/materialinsertconfirmed" method="POST">
                    <div class="row mb-3">
                        <label for="materialname" class="form-label"> <foglabeltext>Materialets navn</foglabeltext></label>
                        <div class = "col-12">
                            <input type="text" class="form-control" id="materialname"
                                   placeholder="25X200mm tryk.imp bræt" name="name" value="${param.name}">
                        </div>

                        <label for="partsprunit" class="form-label"><foglabeltext>Hvor mange er der i pakken?</foglabeltext></label>
                        <div class ="col-12">
                            <input type="text" class="form-control" id="partsprunit"
                                   placeholder="2" name="price" value="${param.partsPrUnit}">
                        </div>

                        <label for="unit" class="form-label"><foglabeltext>Er det stk/boks/rulle?</foglabeltext></label>
                        <div class ="col-12">
                            <input type="text" class="form-control" id="unit"
                                   placeholder="stk" name="price" value="${param.unit}">
                        </div>

                        <label for="price" class="form-label"><foglabeltext>Prisen på materialet</foglabeltext></label>
                        <div class ="col-12">
                            <input type="text" class="form-control" id="price"
                                   placeholder="20" name="price" value="${param.price}">
                        </div>
                    </div>
                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/employeepage"><btn-text>Tilbage</btn-text></a>

            </div>

        </div>

    </jsp:body>
</t:genericpage>
