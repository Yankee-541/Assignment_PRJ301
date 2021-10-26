<%-- 
    Document   : home
    Created on : Oct 15, 2021, 3:47:15 PM
    Author     : Tebellum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- Icons -->
        <link rel="stylesheet" href="../css/font-awesome.css">
        <link rel="stylesheet" href="../style/style_home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
              integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <link rel="stylesheet" href="../style/style_home_center.css">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                <jsp:include page="home_center.jsp"></jsp:include>
                <jsp:include page="home_left.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="home_footer.jsp"></jsp:include>

    </body>
</html>
