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
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
              <link rel="stylesheet" id="bootstrap.min-css" href="https://nhasachmienphi.com/wp-content/themes/sachonl/css/bootstrap.min.css?ver=1.0.234234234234" type="text/css" media="all">
              <link rel="stylesheet" href="../css/font-awesome.css">
              <link rel="stylesheet" href="../style/style_home.css">
              <link rel="stylesheet" href="../style/style_home_center.css">
              <!--<link rel="stylesheet" href="../style/style_home_center.css.css">-->
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
                    integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
              <link rel="stylesheet" id="wp-pagenavi-css" href="https://nhasachmienphi.com/wp-content/plugins/wp-pagenavi/pagenavi-css.css?ver=2.70" type="text/css" media="all">
              <link rel="stylesheet" id="bootstrap.min-css" href="https://nhasachmienphi.com/wp-content/themes/sachonl/css/bootstrap.min.css?ver=1.0.234234234234" type="text/css" media="all">
              <!--<script src="JS/pagger.js" type="text/javascript"></script>-->
              <style>
                     .pagger a{
                            /*border-style:solid;*/
                            border-color: blue;
                            border-width: 1px;
                            padding: 2px;
                            margin-left: 2px;
                     }
                     .pagger span{
                            font-weight: bold !important;
                     }
              </style>

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
                     <script>
                            generatePagger('paggerBottom',${requestScope.pageIndex}, ${requestScope.totalpage}, 2);

                            function generatePagger(id, pageIndex, totalpage, gap) {
                                   var container = document.getElementById(id);
                                   if (pageIndex - gap > 1) {
                                          container.innerHTML += '<a href="home?page=1">1</a>';
                                   }
                                   for (var i = pageIndex - gap; i < pageIndex; i++) {
                                          if (i > 0) {
                                                 container.innerHTML += '<a href="home?page=' + i + '">' + i + '</a>';
                                          }
                                   }
                                   container.innerHTML += '<span >' + pageIndex + '</span>';
                                   for (var i = pageIndex + 1; i <= pageIndex + gap; i++) {
                                          if (i <= totalpage) {
                                                 container.innerHTML += '<a href="home?page=' + i + '">' + i + '</a>';
                                          }
                                   }
                                   if (pageIndex + gap < totalpage) {
                                          container.innerHTML += '<a href="home?page=' + totalpage + '">Last</a>';
                                   }
                            }
              </script>
       </body>
</html>
