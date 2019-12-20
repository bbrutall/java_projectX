<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<jsp:include page="common/header.jsp">
    <jsp:param name="pageTitle" value="Main page"/>
</jsp:include>

<div>
    Hello jsp ${user}!
</div>
<jsp:include page="common/footer.jsp"/>
