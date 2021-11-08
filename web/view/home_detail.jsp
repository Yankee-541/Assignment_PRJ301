<%-- 
    Document   : home_detail
    Created on : Oct 27, 2021, 5:33:57 PM
    Author     : Tebellum
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
       <head>
              <meta charset="UTF-8">
              <meta http-equiv="X-UA-Compatible" content="IE=edge">
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <title>Document</title>
              <link rel="stylesheet" href="../css/bootstrap.min.css">
              <!-- Icons -->
              <link rel="stylesheet" href="../css/font-awesome.css" type="text/css">
              <link rel="stylesheet" href="../style/style_home.css" type="text/css">
              <link href="../style/style_home_detail.css" rel="stylesheet" type="text/css"/>
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
                    integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />

              <link rel="stylesheet" href="../style/style_home_center.css">
       </head>
       <body>
              <jsp:include page="header.jsp"></jsp:include>
                     <div class="container">
                            <div class="row">
                                   <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                          <div class="ads_text"><center><a href="" target="_blanks"><img src=""></a></center></div>
                                          <div class="content_page pd-20">
                                                 <div class="row">
                                                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                                               <img src="${requestScope.book.url_img}">
                                                 </div>
                                                 <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                                        <h1 class="tblue fs-20">${requestScope.book.book_name}</h1>
                                                        <div class="mg-t-10">
                                                               <!--<div class="fb-like fb_iframe_widget" data-href="https://nhasachmienphi.com/english-grammar-workbook-for-dummies.html" data-width="" data-layout="button_count" data-action="like" data-size="large" data-share="true" fb-xfbml-state="rendered" fb-iframe-plugin-query="action=like&amp;app_id=&amp;container_width=342&amp;href=https%3A%2F%2Fnhasachmienphi.com%2Fenglish-grammar-workbook-for-dummies.html&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;size=large&amp;width="><span style="vertical-align: bottom; width: 174px; height: 28px;"><iframe name="fdfe47bee9736" width="1000px" height="1000px" data-testid="fb:like Facebook Social Plugin" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v7.0/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfdde0b6141932%26domain%3Dnhasachmienphi.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fnhasachmienphi.com%252Ff1f54fc29ee65c8%26relation%3Dparent.parent&amp;container_width=342&amp;href=https%3A%2F%2Fnhasachmienphi.com%2Fenglish-grammar-workbook-for-dummies.html&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;size=large&amp;width=" style="border: none; visibility: visible; width: 174px; height: 28px;" class=""></iframe></span></div>-->
                                                        </div>
                                                        <div class="mg-t-10">Tác giả:  ${requestScope.book.author.name}</div>
                                                        <div class="mg-tb-10">Thể loại: 										
                                                               <a href="https://nhasachmienphi.com/category/hoc-ngoai-ngu" class="tblue">${requestScope.book.category.category_name}</a>
                                                        </div>		
                                                        <div class="alert alert-info" role="alert"> <i class="fa fa-download"></i> Vui lòng chọn định dạng file để tải hoặc đọc online. </div>
                                                        <div class="">
                                                               <a download="" target="_blank" class="button pdf" href="${requestScope.book.description}">PDF</a>											
                                                               <!--<a target="_blank" class="button readonline" href="${requestScope.book.description}"><i class="fa fa-star"></i> Đọc Online</a>-->
                                                        </div>
                                                        <div>
                                                               <a class="icon_social instagram" href="https://www.instagram.com/?url=https://nhasachmienphi.com/english-grammar-workbook-for-dummies.html">
                                                                      <i class="fa fa-instagram"></i>
                                                               </a>
                                                               <a class="icon_social twitter" href="https://twitter.com/intent/tweet?via=nhasachmienphi&amp;text=English Grammar Workbook For Dummies&amp;url=https://nhasachmienphi.com/english-grammar-workbook-for-dummies.html">
                                                                      <i class="fa fa-twitter"></i>
                                                               </a>
                                                               <div class="zalo-share-button" data-href="" data-oaid="579745863508352884" data-layout="3" data-color="blue" data-customize="false" style="overflow: hidden; display: inline-block; width: 30px; height: 30px;"><iframe frameborder="0" allowfullscreen="" scrolling="no" width="30px" height="30px" src="https://sp.zalo.me/plugins/share?dev=null&amp;color=blue&amp;oaid=579745863508352884&amp;href=https%3A%2F%2Fnhasachmienphi.com%2Fenglish-grammar-workbook-for-dummies.html&amp;layout=3&amp;customize=false&amp;callback=null&amp;id=63d39b01-82bc-420b-ae5d-b7155f6ffe4d&amp;domain=nhasachmienphi.com&amp;android=false&amp;ios=false"></iframe></div>
                                                        </div>
                                                 </div>
                                          </div>
                                          <div class="mg-tb-15">
                                                 <div class="line"></div>
                                          </div>
                                          <div class="box_chhr">
                                          </div>
                                          <div class="content_p content_p_al">
                                                 <div class="gioi_thieu_sach text-justify">
                                                        <textarea rows="30"  cols="75" disabled="disabled">${requestScope.book.short_des}</textarea>
                                                 </div>
                                          </div>
                                   </div>
                                   <form action="comment" method="POST">

                                          <div class="content_page">
                                                 <div class="title_page">Bình luận</div>
                                                 <div class="pd-15">
                                                        <textarea rows="10"  cols="70">
                                                        
                                                        </textarea><br><br>
                                                        <input type="submit" value="Post" />
                                                 </div>
                                          </div>
                                   </form>
                            </div>
                            <jsp:include page="home_left.jsp"></jsp:include>
                            </div>
                     </div>
              <jsp:include page="home_footer.jsp"></jsp:include>

       </body>
</html>
