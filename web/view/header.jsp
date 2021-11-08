<%-- 
    Document   : header
    Created on : Oct 15, 2021, 3:50:58 PM
    Author     : Tebellum
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header class="main_header">

       <div class="container">
              <div class="hleft">
                     <a href='#'><img src='../img/ten_library.png'></a>
              </div>
              <div class="hcenter" style="display: flex;">
                     <nav class="navbar navbar-default">
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1 " style="width: 655px; ">
                                   <div class="hcenter-child">
                                          <ul class="menu-main nav navbar-nav" style="display: flex;">
                                                 <li class="active"><a href="home"style="padding: 10px 10px;"><i class="fas fa-home"></i>Home <span class="sr-only"></span></a></li>
                                                 <li style="z-index: 2;">
                                                        <a href="category"style="padding: 10px 10px;">
                                                               Thể loại sách
                                                               <i class="fas fa-sort-down"
                                                                  style="vertical-align: top;padding-left: 5px;">                                                                                      
                                                               </i>
                                                        </a>
                                                        <div class="sub-menu" style="z-index: 2">
                                                               <ul>
                                                                      <form action="searchByCategory" method="POST">
                                                                             <c:forEach items="${cates}" var="c">
                                                                                    <li>
                                                                                           <a href="searchByCategory?cid=${c.category_id}">${c.category_name}</a>
                                                                                    </li>
                                                                             </c:forEach>
                                                                      </form>
                                                               </ul>
                                                        </div>
                                                 </li>
                                                 <li><a href="review"style="padding: 10px 10px;">Event</a></li>
                                                        <c:if test="${sessionScope.account == null}">
                                                                <li><a href="login"style="padding: 10px 10px;">Login<i class="fas fa-sign-in-alt"></i></a></li>
                                                        </c:if>
                                                       <c:if test="${sessionScope.account != null}">
                                                                <li><a href="list"style="padding: 10px 10px;">Manager Book</a></li>
                                                                <li><a href="profile?id=${sessionScope.account.user_id}" style="padding: 10px 10px;">Hello ${sessionScope.account.display_name}</a></li>
                                                                <li><a href="logout"style="padding: 10px 10px;">Logout <i class="fas fa-sign-out-alt"></i></a></li>
                                                       </c:if>
                                          </ul>
                                   </div>
                                   <div class="hcenter-child-search">
                                          <form action="search" method="POST" class="navbar-form navbar-right">
                                                 <div class="form-group">
                                                        <input name="search" value="${requestScope.search}" type="text" class="form-control" placeholder="Tim kiem sach">
                                                 </div>
                                                 <button type="submit" class="btn btn-default">Search</button>
                                          </form>
                                   </div>
                     </nav>
              </div>

       </div>
</header>
<div class="container">
       <div class="line"></div>
       <div class='til_noti'>Sách ebook được sưu tầm từ Internet, Bản quyền sách thuộc về Tác giả & Nhà xuất bản
       </div>
</div>
