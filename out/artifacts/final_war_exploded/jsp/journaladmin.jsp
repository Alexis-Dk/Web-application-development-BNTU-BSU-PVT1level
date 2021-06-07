<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%--fmt:setLocale value="${sessionScope._CURRENT_LOCALE}"/--%>
<fmt:setBundle basename="resources.pagecontent" var="txt"/>

<%@ include file="inc/header.inc.jsp" %>

<div id="left">

    <%@ include file="inc/menu.inc.jsp" %>

</div>

<div id="mainmiddle">



    <div class="block" style="min-width: 50%;">

        <table width="100%">
            <colgroup>
                <col style="width: 15%">
                <col style="width: 15%">
                <col style="width: 5%">
                <col style="width: 5%">
                <col style="width: 10%">
                <col style="width: 30%">
                <col style="width: 20%">
            </colgroup>
            <tbody>
            <tr class="header">
                <th><fmt:message key="content.lastname" bundle="${txt}"/></th>
                <th><fmt:message key="content.firstname" bundle="${txt}"/></th>
                <th><fmt:message key="content.mark" bundle="${txt}"/></th>
                <th><fmt:message key="content.miss" bundle="${txt}"/></th>
                <th><fmt:message key="content.mdata" bundle="${txt}"/></th>
                <th><fmt:message key="content.notice" bundle="${txt}"/></th>
                <th><fmt:message key="content.studentcource" bundle="${txt}"/></th>
            </tr>
            <c:forEach items="${requestScope.students}" var="item">
                <tr>
                    <td>${item.studentLastName}</td>
                    <td>${item.studentFirstName}</td>
                    <td>
                        <c:if test="${item.mark ne 0}">
                            ${item.mark}

                        </c:if>
                    </td>
                    <td>
                        <c:if test="${item.miss ne 0}">
                            ${item.miss}

                        </c:if>
                    </td>
                    <td>
                        <c:if test="${not empty item.mdata}">
                            ${item.mdata}
                        </c:if>
                    </td>
                    <td>
                        <c:if test="${not empty item.note}">
                            ${item.note}
                        </c:if>
                    </td>
                    <td>

                            ${item.studentcource}

                    </td>

                </tr>
            </c:forEach>
            </tbody></table>
    </div>

</div>