
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
            <fogOverskrift1> Fog Carporte - Bestil din special bygget carport </fogOverskrift1>
            <fogOverskrift2>Hej ${sessionScope.email} ${sessionScope.userId}Vælg en længde og bredde, så klare vi resten</fogOverskrift2>
            <div class = "jumbotron jumbotron-fluid text-center">
                <br>
                <form name="deposit" action="${pageContext.request.contextPath}/fc/createorderconfirmed" method="POST">
                    <div class="row mb-3">
                        <fogOverskrift2>Vælg en bredde</fogOverskrift2>
                        <div>
                            <input type="radio" class="btn-check" name="width" id="width1" autocomplete="off" value="${param.width}">
                            <label class="btn btn-secondary" for=width1><foglabeltext>300</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="width" id="width2" autocomplete="off" value="${param.width}">
                            <label class="btn btn-secondary" for=width2><foglabeltext>450</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="width" id="width3" autocomplete="off"  value="${param.width}">
                            <label class="btn btn-secondary" for=width3><foglabeltext>600</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="width" id="width4" autocomplete="off" value="${param.width}">
                            <label class="btn btn-secondary" for=width4><foglabeltext>750</foglabeltext></label>
                        </div>

                    </div>

                    <div class="row mb-3">
                        <fogOverskrift2>Vælg en længde</fogOverskrift2>
                        <div>
                            <input type="radio" class="btn-check" name="lenght" id="lenght1" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght1 ><foglabeltext>480</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="length" id="lenght2" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght2><foglabeltext>530</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="length" id="lenght3" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght3><foglabeltext>580</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="length" id="lenght4" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght4><foglabeltext>630</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="length" id="lenght5" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght5><foglabeltext>680</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="length" id="lenght6" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght6><foglabeltext>730</foglabeltext></label>
                        </div>
                        <div>
                            <input type="radio" class="btn-check" name="length" id="lenght7" autocomplete="off" value="${param.length}">
                            <label class="btn btn-secondary" for=lenght7><foglabeltext>780</foglabeltext></label>
                        </div>
                    </div>

                    <input class="btn btn-primary" type="submit" value="Submit">
                </form>
                <a class = "btn btn-dark" href="${pageContext.request.contextPath}/fc/customerpage"> <btn-text>Tilbage</btn-text> </a>

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
