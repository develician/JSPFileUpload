<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 29.
  Time: PM 3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP FILE UPLOAD</title>
</head>
<body>
    <form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
        FILE : <input type="file" name="file"><br>
        <input type="submit" value="upload"/>
    </form>
</body>
</html>
