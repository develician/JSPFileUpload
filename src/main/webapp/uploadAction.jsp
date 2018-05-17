<%--
  Created by IntelliJ IDEA.
  User: paul
  Date: 2017. 10. 29.
  Time: PM 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="file.FileDAO"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="java.io.PrintWriter" %>
<html>
<head>
    <title>JSP FILE UPLOAD</title>
</head>
<body>
    <%
        String directory = application.getRealPath("/upload/");
        int maxSize = 1024 * 1024 * 100;
        String encoding = "UTF-8";

        MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding, new DefaultFileRenamePolicy());
        String fileName = multipartRequest.getOriginalFileName("file");
        String fileRealName = multipartRequest.getFilesystemName("file");

        new FileDAO().upload(fileName, fileRealName);
        PrintWriter writer = response.getWriter();

        writer.write("파일 명 : " + fileName + "<br>");
        writer.write("실제 파일 명 : " + fileRealName + "<br>");

    %>
</body>
</html>
