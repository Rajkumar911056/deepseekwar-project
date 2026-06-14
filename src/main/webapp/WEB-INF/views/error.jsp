<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error - Java DevOps Demo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        .error-container {
            background: white;
            color: #333;
            padding: 40px;
            border-radius: 10px;
            max-width: 600px;
            margin: 0 auto;
        }
        h1 { color: #dc3545; }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>😵 Something went wrong!</h1>
        <p>Status Code: ${pageContext.errorData.statusCode}</p>
        <p>Request URI: ${pageContext.errorData.requestURI}</p>
        <a href="/" style="color: #667eea;">Go back to home</a>
    </div>
</body>
</html>
