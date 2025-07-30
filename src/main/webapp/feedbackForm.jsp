<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>Student Feedback Form</h3>

<form action="feedbackSummary.jsp" method="post">
    <label>Name:
        <input type="text" name="username" required>
    </label>
    <br><br>

    <p>Please select the facilities you are providing feedback on:</p>

    <label><input type="checkbox" name="facilities" value="Library"> Library</label><br>
    <label><input type="checkbox" name="facilities" value="Cafeteria"> Cafeteria</label><br>
    <label><input type="checkbox" name="facilities" value="Labs"> Labs</label><br>
    <label><input type="checkbox" name="facilities" value="Sports"> Sports</label><br><br>

    <label>Additional Comments:</label><br>
    <textarea name="comments" rows="4" cols="40"></textarea><br><br>

    <input type="submit" value="Submit Feedback">
</form>

<%@ include file="footer.jsp" %>
