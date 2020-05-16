<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/fmt" prefix ="fmt" %>

<c:set var= "thelocale" value ="${not param.thelocale ? param.thelocale : pageContext.request.locale}" scope = "session"/>
<fmt:setLocale value = "${thelocale}"/>
<fmt:setBundle basename ="tag.i18n.resources.mylabels"/>
<hr>
<html>
<body>
<br/>
<br/>
<a href ="i18n-message-test.jsp?thelocale=en_US">
English(US)

</a>
|
<a href ="i18n-message-test.jsp?thelocale=es_ES">
Spanish(US)

</a>
|
<a href ="i18n-message-test.jsp?thelocale=de_DE">
German(US)

</a>
<hr>
<fmt:message key ="label.greeting"/>
<br/><br/>
<fmt:message key ="label.firstname"/><i> :  John</i>
<br/><br/>
<fmt:message key ="label.lastname"/><i> :  Doe</i>
<br/><br/>
<fmt:message key ="label.welcome"/>
<br/><br/>

selected locale : ${thelocale}




</body>



</html>