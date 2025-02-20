<%-- 
    Document   : list_book
    Created on : Oct 23, 2021, 4:46:07 PM
    Author     : Tebellum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
              <!--<script src="pagger.js" type="text/javascript"></script>-->

              <style>
                     table {
                            border-collapse: collapse;
                            width: 100%;
                            margin: 0 auto;
                     }
                     .center{
                            text-align: center;
                     }
                     tr, td {
                            padding-right: 5px;
                            padding-bottom: 10px;
                     }
                     button:hover{
                            background: #DDDDDD
                     }
              </style>
              <script>
                     function doUpdate(id) {
                            window.location.href = "updatebook?id=" + id;
                     }
                     function doDelete(id) {
                            var cf = confirm("Are you sure delete this book ?");
                            if (cf) {
                                   window.location.href = "deleteBook?id=" + id;
                            }
                     }
              </script>
       </head>
       <body>
              <jsp:include page="../view/header.jsp"></jsp:include>
                     <div class="container">
                            <div class="row">

                                   <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                          <div class="content_page">
                                                 <div class="title_page">Tất cả sách</div>
                                                 <div class="pd-lr-20">
                                                        <div class="mg-b-30"></div>
                                                        <div class="row r_10">
                                                               <table>
                                                                      <tr class="center">
                                                                             <td><b>ID</b></td>
                                                                             <td><b>Book name</b></td>                   
                                                                      </tr>
                                                               <c:forEach items="${requestScope.books}" var="b">
                                                                      <tr>
                                                                             <td class="center">${b.book_id}</td>
                                                                             <td>${b.book_name}</td>    
                                                                             <td>
                                                                                    <a href="detail?bid=${b.book_id}"><i  class="fas fa-info-circle"></i></a>
                                                                             </td>
                                                                             <td>
                                                                                    <button style="border: none" onclick="doUpdate(${b.book_id});"><i class="fas fa-edit"></i></button>
                                                                             </td>
                                                                             <td>
                                                                                    <button style="border: none" onclick="doDelete(${b.book_id});"><i class="fas fa-trash-alt"></i></button>
                                                                             </td>
                                                                      </tr>
                                                               </c:forEach>
                                                        </table>
                                                        <div id="paggerBottom" style="height: 30px; widows: 100%; display: block; background: antiquewhite;" class="pagger"></div> 
                                                 </div>
                                          </div>
                                   </div>
                            </div>
                            <jsp:include page="../view/home_left.jsp"></jsp:include>
                            </div>
                     </div>
              <jsp:include page="../view/home_footer.jsp"></jsp:include>


                     <script>
                            generatePagger('paggerBottom',${requestScope.pageIndex}, ${requestScope.totalpage}, 1);
                            function generatePagger(id, pageIndex, totalpage, gap) {
                                   var container = document.getElementById(id);
                                   if (pageIndex - gap > 1) {
                                          container.innerHTML += '<a href="list?page=1">1</a>';
                                   }
                                   for (var i = pageIndex - gap; i < pageIndex; i++) {
                                          if (i > 0) {
                                                 container.innerHTML += '<a href="list?page=' + i + '">' + i + '</a>';
                                          }
                                   }
                                   container.innerHTML += '<span>' + pageIndex + '</span>';
                                   for (var i = pageIndex + 1; i <= pageIndex + gap; i++) {
                                          if (i <= totalpage) {
                                                 container.innerHTML += '<a href="list?page=' + i + '">' + i + '</a>';
                                          }
                                   }

                                   if (pageIndex + gap < totalpage) {
                                          container.innerHTML += '<a href="list?page=' + totalpage + '">Last</a>';
                                   }
                            }
              </script>

       </body>
       <script>
//                     function generatePagger(id, pageIndex, totalpage, gap) {
//                            var container = document.getElementById(id);
//                            if (pageIndex - gap > 1) {
//                                   container.innerHTML += '<a href="list?page=1">1</a>';
//                            }
//                            //trước page index
//                            for (var i = pageIndex - gap; i < pageIndex; i++) {
//                                   if (i > 0) {
//                                          container.innerHTML += '<a href="list?page=' + i + '">' + i + '</a>';
//                                   }
//                            }
//                            //pageindex đang ở vị trí này
//                            container.innerHTML += '<span>' + pageIndex + '</span>';
//                            //sau page index
//                            for (var i = pageIndex + 1; i <= pageIndex + gap; i++) {
//                                   if (i <= totalpage) {
//                                          container.innerHTML += '<a href="list?page=' + i + '">' + i + '</a>';
//                                   }
//                            }
//                            if (pageIndex + gap < totalpage) {
//                                   container.innerHTML += '<a href="list?page=' + totalpage + '">Last</a>';
//                            }
//                     }
       </script>
</html>
