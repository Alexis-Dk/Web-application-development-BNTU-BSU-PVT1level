<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%--fmt:setLocale value="${sessionScope._CURRENT_LOCALE}"/--%>
<%@ include file="inc/header.inc.jsp" %>

<fmt:setBundle basename="resources.pagecontent" var="txt"/>
<fmt:setBundle basename="resources.messages" var="msg"/>

<div id="left">

    <%@ include file="inc/menu.inc.jsp" %>

</div>

<div id="mainmiddle">

    <h1><fmt:message key="content.profile" bundle="${txt}"/></h1>
    <%--User ${userName} registered. Go to <a href="/controller">Main page</a> for Sign In.--%>
    <fmt:message key="${actionresult}" bundle="${msg}"/> <a href="${contextPath}/controller?command=profile"><fmt:message key="misc.actioncontinue" bundle="${txt}"/></a>
    <%@ include file="inc/footer.inc.jsp" %>

</div>