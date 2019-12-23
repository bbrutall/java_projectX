<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<jsp:include page="common/header.jsp">
    <jsp:param name="pageTitle" value="Main page"/>
</jsp:include>

<div>
    <c:if test="${user != null}">
        Hello jsp ${user}!
    </c:if>
    <c:if test="${user == null}">
        Login button
    </c:if>

    <form action="${pageContext.request.contextPath}/controller">
        <input name="command" type="hidden" value="login">
        <input name="login" type="text">
        <input name="password" type="password">
        <input type="submit" value="Login">
        <a href="${pageContext.request.contextPath}/controller"></a>

    </form>

</div>
<jsp:include page="common/footer.jsp"/>
