<%-- 
    Document   : header
    Created on : Oct 15, 2021, 3:50:58 PM
    Author     : Tebellum
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header class="main_header">
       <!--       <div class="container">
                     <div class="hleft">
                            <a href="https://nhasachmienphi.com"><img src="https://nhasachmienphi.com/wp-content/uploads/nha-sach-mien-phi-logo-new-11.7.png"></a>
                     </div>
                     <div class="hcenter">
                            <div class="main_menu">
                                   <div class="menu-main-menu-container"><ul id="menu-main-menu" class="menu"><li id="menu-item-161713" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-161713"><a href="/">Trang chủ</a></li>
                                                 <li id="menu-item-161678" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-has-children menu-item-161678">
                                                        <a href="#" aria-current="page">Thể Loại Sách</a>
                                                        <ul class="sub-menu">
                                                               <form action="searchByCategory" method="POST">
       <c:forEach items="${cates}" var="c">
              <li>
                     <a href="searchByCategory?cid=${c.category_id}">${c.category_name}</a>
              </li>
       </c:forEach>
</form>
</ul>
</li>
<li id="menu-item-336376" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-336376"><a href="https://nhasachmienphi.com/blogs">Góc Review</a></li>
</ul>
</div>
</div>
</div>
<div class="hright">
<form id="search" role="search" method="get" action="https://nhasachmienphi.com/">
<input placeholder="Tìm kiếm sách" value="" name="s" id="s">
<button><i class="fa fa-search"></i></button>
</form>
<a class="trigger_menu"><i class="fa fa-bars"></i></a>
</div>
</div>-->


       <div class="container">
              <div class="hleft">
                     <a href='#'><img src='../img/ten_library.png'></a>
              </div>
              <div class="hcenter" style="display: flex;">
                     <nav class="navbar navbar-default">
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1 " style="width: 655px; ">
                                   <div class="hcenter-child">
                                          <ul class="menu-main nav navbar-nav" style="display: flex;">
                                                 <li class="active"><a href="home"style="padding: 10px 10px;">Home <span class="sr-only"></span></a></li>
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
                                                        <li><a href="login"style="padding: 10px 10px;">Login</a></li>
                                                        </c:if>
                                                        <c:if test="${sessionScope.account != null}">
                                                        <li><a href="list"style="padding: 10px 10px;">Manager Book</a></li>
                                                        <li><a href="profile?id=${sessionScope.account.user_id}" style="padding: 10px 10px;">Hello ${sessionScope.account.display_name}</a></li>
                                                        <li><a href="logout"style="padding: 10px 10px;">Logout</a></li>
                                                        </c:if>
                                          </ul>
                                   </div>
                                   <div class="hcenter-child-search">
                                          <form action="" method="" class="navbar-form navbar-right">
                                                 <div class="form-group">
                                                        <input type="text" class="form-control" placeholder="Tim kiem sach">
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
