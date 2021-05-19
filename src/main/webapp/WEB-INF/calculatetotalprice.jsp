<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:genericpage>
    <jsp:attribute name="header">
        Beregn prisen for en ordre
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>

        <h1>Fogscarporte </h1>
        <p>Beregn prisen for en kundes ordre <p/>
        <br>
        <div>
            <normaltext1>Indtast kundens ordre id for at få prisen,
                husk at der skal være lavet en materiale liste før prisen kan beregnes</normaltext1>
            <label for="orderID" class = "form-label">Order id</label>
            <input type="text" class = "form-control" id = "orderID"
                   placeholder = "7" name = "orderID" value ="${param.order_id}">
            <input class = "btn btn-primary" type = "submit" value="Submit">
        </div>

    </jsp:body>
</t:genericpage>
