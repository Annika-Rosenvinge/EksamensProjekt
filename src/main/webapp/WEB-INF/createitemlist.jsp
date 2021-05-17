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
        <div>
            <div class = "jumbotron-fluid text-center">
                <underoverskrift1> Fog Carporte - Bestil din special bygget carport </underoverskrift1>
                <br>

                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlist" method="POST">
                    <underoverskrift1> Spær </underoverskrift1>
                    <input type="radio" class="btn-check" name="antal" id="spær1" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="spær1">300</label>

                    <input type="radio" class="btn-check" name="antal" id="spær2" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="spær2">450</label>

                    <input type="radio" class="btn-check" name="antal" id="spær3" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="spær3">600</label>

                    <input type="radio" class="btn-check" name="antal" id="spær4" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="spær4">750</label>
                </form>


                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlist" method="POST">
                    <underoverskrift1> Brædder </underoverskrift1>

                    <input type="radio" class="btn-check" name="antal" id="brædder1" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="brædder1">300</label>

                    <input type="radio" class="btn-check" name="antal" id="brædder2" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="brædder2">450</label>

                    <input type="radio" class="btn-check" name="antal" id="brædder3" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="brædder3">600</label>

                    <input type="radio" class="btn-check" name="antal" id="brædder4" autocomplete="off" value="${param.quantity}">
                    <label class="btn btn-secondary" for="brædder4">750</label>
                </form>

                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlist" method="POST">
                    <underoverskrift1> Fog Carporte - Bestil din special bygget carport </underoverskrift1>


                </form>

                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlist" method="POST">
                    <underoverskrift1> Fog Carporte - Bestil din special bygget carport </underoverskrift1>



                </form>

                <form name="deposit" action="${pageContext.request.contextPath}/fc/createitemlist" method="POST">
                    <underoverskrift1> Fog Carporte - Bestil din special bygget carport </underoverskrift1>


                </form>

                <input class="btn btn-primary" type="submit" value="Submit">
            </div>

        </div>
    </jsp:body>
</t:genericpage>
