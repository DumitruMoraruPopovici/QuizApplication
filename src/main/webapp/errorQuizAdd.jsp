<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<%@ page import="com.QuizApplication.model.Quiz" %>

<html>
<head>
<link rel="stylesheet" href="style2.css">
</head>
<head>
    <title>Error Page</title>
</head>
<body>
    <h1 style="color:black">Error</h1>
    <p>${errorMessage}</p>
</body>
</html>
