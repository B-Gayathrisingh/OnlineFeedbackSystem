<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<h3>Feedback Summary for ${param.username}</h3>

<!-- If no facilities selected -->
<c:if test="${empty param.facilities}">
    <p style="color:red;">You did not select any facilities.</p>
</c:if>

<!-- If facilities selected -->
<c:if test="${not empty param.facilities}">
    <p><strong>Facilities Selected:</strong></p>
    <ul>
        <c:forEach var="facility" items="${paramValues.facilities}">
            <li>${facility}</li>
        </c:forEach>
    </ul>
</c:if>

<!-- Display comments -->
<p><strong>Additional Comments:</strong> ${param.comments}</p>

<!-- Continue to Thank You page -->
<a href="thankyou.jsp?username=${param.username}">Continue</a>

<%@ include file="footer.jsp" %>
