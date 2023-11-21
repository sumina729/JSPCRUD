<%--
  Created by IntelliJ IDEA.
  User: sumin
  Date: 2023/11/17
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form method="post" action="fileform_ok.jsp" enctype="multipart/form-data">

        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>

        이미지를 선택하세요 : <input type="file" name="input"/>




        <input type="submit" value="Add Post"/>
    </form>
</body>
</html>
