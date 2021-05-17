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
        <normaltext1>Hello ${sessionScope.email} </normaltext1>
        Velkommen til Johannes Fog carporte

        <pricetext>Husk at du skal indtaste din adresse og andet kontakt information inden du
            bestiller, ellers så bliver din ordre anulleret </pricetext>

        <div>
            <a class = "btn btn-dark" href="${sessionScope}/fc/customerinformation"> Opdater information </a>

        </div>
        
         KNAP TIl AT SE ORDRE
         --%>
        Role: ${sessionScope.role}


    </jsp:body>

</t:genericpage>

