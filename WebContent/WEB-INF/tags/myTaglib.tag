<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="objects" required="true" rtexprvalue="true" type="java.util.Collection" %>
<c:set var="output" value=""/>
<c:forEach var="obj" items="${objects}">
    <c:if test="${! empty showComma}">
        <c:set var="output" value="${output}, "/>
        <c:out value="${output}, "/>
    </c:if>
    <c:set var="output" value="${output}${obj.jsonString}"/>
    <c:set var="showComma" value="yes"/>
</c:forEach>

