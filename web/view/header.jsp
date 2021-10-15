<%-- 
    Document   : header
    Created on : Oct 15, 2021, 3:50:58 PM
    Author     : Tebellum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/font-awesome.css">
        <link rel="stylesheet" href="../style/style_home.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <nav class="navbar navbar-default">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home <span class="sr-only"></span></a></li>
                            <li><a href="#">
                                    <select class="select">
                                        <option>Thể loại sách</option>
                                        <option>a</option>
                                        <option>b</option>
                                        <option>c</option>
                                    </select>
                                </a></li>
                            <li><a href="#">Góc review</a></li>
                        </ul>
                        <form action="" method="" class="navbar-form navbar-right">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default">Search</button>
                        </form>
                    </div>
                </nav>
            </div>
        </div>
    </body>
</html>
