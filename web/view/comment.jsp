<%-- 
    Document   : comment
    Created on : Nov 7, 2021, 8:28:53 PM
    Author     : Tebellum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <title>Comment Page</title>
              <script type="text/javascript">
                     function comment() {
                            var xhttp;
                            if (window.XMLHttpRequest) {
                                   xhttp = new XMLHttpRequest();
                            } else {
                                   xhttp = new ActiveXObject("Microsoft.XMLHTTP");
                            }
                            var name = document.myform.username.value;
                            var feedback = document.myform.feedback.value;
                            var url = "comment?"
                            xhttp.open("POST", url)
                            
                     }
              </script>


       </head>
       <body>
              <form name="myform" action="comment" method="POST">
                     User name: <input type="text" name="username" value="" /><br><br>
                     <textarea style="height: 300px; width: 500px;" name="feedback">
                            
                     </textarea><br>
                     <input type="button" onclick="comment" value="Comment"  /><br>

              </form>

       </body>
</html>
