<%-- 
    Document   : insert_category
    Created on : Oct 22, 2021, 4:55:19 PM
    Author     : Tebellum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>-->
        
        <form action="insert_category" method="POST">
            <h3>Category name</h3>
            <input type="text" name="name_category">
            <input name="submit" type="submit" value="save" >
        </form><br>
        <form action="insert_author" method="POST">
            <h3>Author name</h3>
            <input type="text" name="name_author">
            <input name="submit" type="submit" value="save" >

        </form>

<!--    </body>
</html>-->
