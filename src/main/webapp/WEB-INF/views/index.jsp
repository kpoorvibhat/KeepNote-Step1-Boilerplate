
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>

<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->

    <div class = "container">
      <h3> Add a Note </h3>
	  <form action = "saveNote">

		<label> Note ID </label> <br>
		<input type = "text" name = "noteId" placeholder = "Enter Note ID" required> <br>

	    <label> Title </label> <br>
	    <input type = "text" name = "noteTitle" placeholder = "Enter Title" required> <br>

	    <label> Content </label> <br>
	    <input type = "text" name = "noteContent" placeholder = "Type Content" required> <br>

	    <label> Status </label> <br>
	    <input type = "text" name = "noteStatus" placeholder = "Type Status" required> <br>

	    <button type = "submit" > Send </button>

	  </form>
	</div>

    <br><br>

    <h3>Delete Note</h3>
    <form action="deleteNote">
       <input type="text" name="noteId" />
       <input type="submit"/>
    </form>


	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
    <div class="container">
    <h2> Saved Notes </h2>
    <table border = "2">
       <tr>
          <th> Note Id </th>
          <th> Title </th>
          <th> Content </th>
          <th> Status </th>
          <th> Created DateTime </th>
       </tr>
       <c:forEach items="${save}" var="listItem">
            <tr>
              <td> <c:out value="${listItem.noteId}"> </c:out></td>
              <td> <c:out value="${listItem.noteTitle}"> </c:out></td>
              <td> <c:out value="${listItem.noteContent}"> </c:out></td>
              <td> <c:out value="${listItem.noteStatus}"> </c:out></td>
              <td> <c:out value="${listItem.createdAt}"> </c:out></td>
            </tr>
       </c:forEach>
    </table>
   </div>
  </body>
</html>