<%-- 
    Document   : profile
    Created on : Nov 2, 2021, 5:36:20 PM
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
              <link rel="stylesheet" href="style/style_home_center.css">
              <style type="text/css">
                     [data-aos] {
                            opacity: 1 !important;
                            transform: translate(0) scale(1) !important;
                     }

                     .cover {
                            border-radius: 10px; }

                     .cover-bg {
                            background-color: #5cb85c;
                            border-radius: 10px 10px 0 0; }
                     img, svg {
                            vertical-align: middle;
                     }
                     .avatar {
                            max-width: 216px;
                            max-height: 216px;
                            margin-top: 20px;
                            text-align: center;
                            margin-left: auto;
                            margin-right: auto; }

                     .avatar img {
                            /* Safari 6.0 - 9.0 */
                            filter: grayscale(100%); }

                     footer a:not(.nav-link) {
                            color: inherit;
                            border-bottom: 1px dashed;
                            text-decoration: none;
                            cursor: pointer; }

                     .pt-4 {
                            padding-top: 2rem !important;
                     }
              </style>
       </head>
       <body id="top">
              <jsp:include page="header.jsp"></jsp:include>
                     <div class="page-content">
                            <div class="container">
                                   <div class="cover shadow-lg bg-white">
                                          <div class="cover-bg p-3 p-lg-4 text-white">
                                                 <div class="row">
                                                        <div class="col-lg-4 col-md-5">
                                                               <div class="avatar hover-effect bg-white shadow-sm p-1">
                                                                      <img src="${requestScope.account.img}" width="200" height="200" /></div>
                                                 </div>
                                                 <div class="col-lg-8 col-md-7 text-md-start">
                                                        <h2 class="h1 mt-2" data-aos="fade-left" data-aos-delay="0">${requestScope.account.display_name}</h2>
                                                 </div>
                                                 <div class="col-sm-4">
                                                        <div class="pb-1"><b>Email:</b></div>
                                                 </div>
                                                 <div class="col-sm-8">
                                                        <div class="pb-1 text-secondary">${requestScope.account.email}</div>
                                                 </div>
                                                 <div class="col-sm-4">
                                                        <div class="pb-1"><b>Phone:</b></div>
                                                 </div>
                                                 <div class="col-sm-8">
                                                        <div class="pb-1 text-secondary">${requestScope.account.phone}</div>
                                                 </div>
                                                 <div class="col-sm-4">
                                                        <div class="pb-1"><b></b></div>
                                                 </div>
                                                 <div class="col-sm-4">
                                                        <div class="pb-1"><b><a href="#" style="font-size: x-large"><i class="fas fa-user-cog"></i></a></b></div>
                                                 </div>
                                          </div>
                                   </div>
                                   <div class="about-section pt-4 px-3 px-lg-4 mt-1">
                                          <div class="row">
                                                 <!--                                                                                                         <div class="col-md-6">
                                                                                                                                                                 <h2 class="h3 mb-3">About Me</h2>
                                                                                                                                                                 <p>Hello! I’m Joyce Harrison. I am passionate about UI/UX design and Web Design. I am a skilled Front-end
                                                                                                                                                                        Developer and master of Graphic Design tools such as Photoshop and Sketch.</p>
                                                                                                                                                          </div>-->
                                                 <div class="col-md-5 offset-md-1">
                                                        <div class="row mt-2">
                                                               <!--                                                                      <div class="col-sm-4">
                                                                                                                                            <div class="pb-1">Age</div>
                                                                                                                                     </div>
                                                                                                                                     <div class="col-sm-8">
                                                                                                                                            <div class="pb-1 text-secondary">28</div>
                                                                                                                                     </div>-->
                                                               <!--                                                               <div class="col-sm-4">
                                                                                                                                     <div class="pb-1">Email</div>
                                                                                                                              </div>
                                                                                                                              <div class="col-sm-8">
                                                                                                                                     <div class="pb-1 text-secondary">${requestScope.account.email}</div>
                                                                                                                              </div>
                                                                                                                              <div class="col-sm-4">
                                                                                                                                     <div class="pb-1">Phone</div>
                                                                                                                              </div>
                                                                                                                              <div class="col-sm-8">
                                                                                                                                     <div class="pb-1 text-secondary">${requestScope.account.phone}</div>
                                                                                                                              </div>-->
                                                               <!--                                                                      <div class="col-sm-4">
                                                                                                                                            <div class="pb-1">Address</div>
                                                                                                                                     </div>
                                                                                                                                     <div class="col-sm-8">
                                                                                                                                            <div class="pb-1 text-secondary">140, City Center, New York, U.S.A</div>
                                                                                                                                     </div>-->
                                                        </div>
                                                 </div>
                                          </div>
                                   </div>
                                   <!--                                          <div class="col d-none d-print-block">
                                                                                    <div class="mt-2">
                                                                                           <div>
                                                                                                  <div class="mb-2">
                                                                                                         <div class="text-dark"><i class="fab fa-twitter mr-1"></i><span>https://twitter.com/templateflip</span>
                                                                                                         </div>
                                                                                                  </div>
                                                                                                  <div class="mb-2">
                                                                                                         <div class="text-dark"><i
                                                                                                                       class="fab fa-facebook mr-1"></i><span>https://www.facebook.com/templateflip</span>
                                                                                                         </div>
                                                                                                  </div>
                                                                                                  <div class="mb-2">
                                                                                                         <div class="text-dark"><i
                                                                                                                       class="fab fa-instagram mr-1"></i><span>https://www.instagram.com/templateflip</span>
                                                                                                         </div>
                                                                                                  </div>
                                                                                                  <div class="mb-2">
                                                                                                         <div class="text-dark"><i class="fab fa-github mr-1"></i><span>https://github.com/templateflip</span>
                                                                                                         </div>
                                                                                                  </div>
                                                                                           </div>
                                                                                    </div>
                                                                             </div>-->
                            </div>
                     </div>
              </div>


              <jsp:include page="home_footer.jsp"></jsp:include>

       </body>
</html>
