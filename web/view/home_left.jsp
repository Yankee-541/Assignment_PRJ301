<%-- 
    Document   : home_left
    Created on : Oct 19, 2021, 9:09:52 PM
    Author     : Tebellum
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
    <!--                <div class="ads_text">
                        <center><a href="https://bepcoba.vn/" target="_blanks"><img
                                    src="https://nhasachmienphi.com/wp-content/uploads/Bep-co-ba.gif"></a></center>
                    </div>-->
    <div class="content_page">
        <div class="title_page">Danh ngôn hay</div>
        <div class="pd-15">
            “Thách thức là điều làm cho cuộc sống trở nên thú vị và vượt qua chúng là những gì tạo nên ý
            nghĩa cuộc sống.” - Joshua J. Marine
            <div class="mg-t-10">
                <div class="fb-like fb_iframe_widget" data-href="https://nhasachmienphi.com" data-width=""
                     data-layout="button_count" data-action="like" data-size="small" data-share="true"
                     fb-xfbml-state="rendered"
                     fb-iframe-plugin-query="action=like&amp;app_id=&amp;container_width=238&amp;href=https%3A%2F%2Fnhasachmienphi.com%2F&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;size=small&amp;width=">
                    <span style="vertical-align: bottom;width: 150px;height: 28px;"><iframe
                            name="f27484cd9328948" width="1000px" height="1000px"
                            data-testid="fb:like Facebook Social Plugin"
                            title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true"
                            allowfullscreen="true" scrolling="no" allow="encrypted-media"
                            src="https://www.facebook.com/v7.0/plugins/like.php?action=like&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df36e109785d9dac%26domain%3Dnhasachmienphi.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fnhasachmienphi.com%252Ff3ff2492550863%26relation%3Dparent.parent&amp;container_width=238&amp;href=https%3A%2F%2Fnhasachmienphi.com%2F&amp;layout=button_count&amp;locale=vi_VN&amp;sdk=joey&amp;share=true&amp;size=small&amp;width="
                            style="border: none; visibility: visible; width: 150px; height: 28px;"
                            class=""></iframe></span></div>
            </div>
        </div>
    </div>
    <div class="content_page">
        <div class="title_page">Thể Loại Sách</div>
        <div class="item_folder_sidebar">
            <c:forEach items="${requestScope.cates}" var="c">
                <a href="https://nhasachmienphi.com/category/am-thuc-nau-an"><i
                        class="fa fa-dot-circle-o"></i>${c.category_name}</a>
            </c:forEach>

        </div>
    </div>
</div>