<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="assets_main/css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets_main/css/style.css" type="text/css">
    <link href="assets_main/css/pe-icon-7-stroke.css" rel="stylesheet" />
   <link href="assets_main/css/ct-navbar.css" rel="stylesheet" />  
   

  
  <title>MARS</title>
    <!--     Font Awesome     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <style>
    
    
         @keyframes spin {
      100% {
         transform: rotate(360deg);
         }
      }
      .spinner {
      display: inline-block;
      width: 50px;
      height: 50px;
      border: 5px solid yellow;
      border-color: yellow transparent transparent;
      border-radius: 50%;
      animation: spin 1s linear  infinite;
      }    
    
        .fa-heart{
            color: #F74933;
        }   
        .space-100{
            height: 100px;
            display: block;
        }
        pre.prettyprint{
            background-color: #ffffff;
            border: 1px solid #999;
            margin-top: 20px;
            padding: 20px;
            text-align: left;
        }
        .atv, .str{
            color: #05AE0E;
        }
        .tag, .pln, .kwd{
             color: #3472F7;
        }
        .atn{
          color: #2C93FF;
        }
        .pln{
           color: #333;
        }
        .com{
            color: #999;
        } 
    </style>
</head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script> 
         function htag(name){
            location.href='htagSearch.do?name='+name;
         }
         
         function mtag(name){
            location.href='membersearch.do?name='+name;
         }
         
         $(document).ready(function(){
             $("#friends1").click(function(){
                ppp.location.reload();
                 var div = $("#friends2");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
             });
         });
         $(document).ready(function(){
             $("#mypage1").click(function(){
                 var div = $("#mypage2");
                 div.animate({left: '35%'}, "fast");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
               
             });
         });


         
         $(document).ready(function(){
             $("#cl1").click(function(){
                 var div = $("#friends2");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
               
             });
         });
         
         $(document).ready(function(){
             $("#cl2").click(function(){
                 var div = $("#mypage2");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
                 
             });
         });
         
         

         
         $(document).ready(function(){
             $("#more").click(function(){
                 var div = $("#wait");
               div.toggle('slow');
                 
             });
         });
         

         
         function openpic(i){
            var div = document.getElementById('pic'+i).value;
            window.alert(i);
               window.alert(div);
               
            $('#galleryImage').attr("src",div);
            } 

</script> 
<body>
<header>
<div id="navbar-full">
<span style="float: left;">

            <div id="friends2" style="background:#935d8c;height:100%;width:25%; position: absolute; float: left; display: none; z-index: 4">
      <div style="background-color: white; align-content:center; "><a href="#" id="cl1">Close</a></div> 
   <c:url var="frListUrl" value="main_frList.do">
      <c:param name="user_idx" value="${sessionScope.useridx }" />
   </c:url>
   <iframe src="${frListUrl }" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

   </div>
       </span>
       <span style="float: right;">

          <div  id="mypage2" style="background:#935d8c;height:100%;width:60%; position: absolute; float: right; display: none; z-index: 4">
      <div style="background-color: white; align-content:center; "><a href="#" id="cl2">Close</a></div>
   
   <c:url var="myHomeUrl" value="myHomeForm.do">
      <c:param name="useridx" value="${sessionScope.useridx}"/>
   </c:url>
   <iframe src="${myHomeUrl}" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

   </div>
       
       </span>
   <div id="navbar-blue">
    <nav class="navbar navbar-ct-blue" role="navigation">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
<ul class="nav navbar-nav navbar-left">
                <li>
               <a href="main.do">
                          <img src="assets_main/images/logo.svg" alt="" />
                           
                       </a>
                
                </li>
                   <li>
                        <a href="main.do">
                          <h3>MARS</h3>
                           
                       </a>
                   </li>         

               </ul>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        
              <ul class="nav navbar-nav navbar-right">

                       <!-- 다운 광고 추가 임시 버튼 -->
              <li>
              <a href="#" onclick="window.open('applyAdForm.do', '광고 주문서', 'scrollbars=no width=400, height=450')">
                           <i class="pe-7s-search"></i>       
              </a>
              </li>
              <li>
              <a href="#" onclick="window.open('checkCurAd.do', '광고 통계', 'scrollbars=no width=400, height=350')">
                           <i class="pe-7s-search"></i>       
              </a>
              </li>
              
        
              
              <!--  -->
              
                    <li>
                        <a href="javascript:void(0);" data-toggle="search" class="hidden-xs">
                            <i class="pe-7s-search"></i>
                            
                        </a>
                    </li>
                                        <li>
                       <a href="#" id="mypage1">
                             <i class="pe-7s-user"></i>
                             
                        </a>
                    </li>
                                        <li>
                        <a href="javascript:void(0);" class="hidden-xs" id="friends1">
                            <i class="pe-7s-note2"></i>
                           
                        </a>
                    </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="pe-7s-global"></i>
            
              <span class="badge badge-pill badge-warning">6 New</span>
            
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
         <%@include file="../main/feedList.jsp" %>

            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>         
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="pe-7s-mail"></i>
            <span class="d-lg-none">
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
         <%@include file="../main/msgList.jsp" %>
         
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>

                    
                                        <li>
               <div class="dropdown">
        <a class="btn btn-default dropdown-toggle"  data-toggle="dropdown">
        <i class="pe-7s-menu"></i>
        <span class="caret"></span></a>
           <ul class="dropdown-menu">
              <li><a href="infoSetting.do?idx=${sessionScope.useridx }">SETTINGS</a></li>
             <li><a href="serviceCenter.do">CUSTOMER CENTER</a></li>
             <li><a href="#">LOGIUT</a></li>

           </ul>
         </div>
                    </li>
               </ul>
                <form name="search" action="membersearch.do" class="navbar-form navbar-right navbar-search-form">
                
                  <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Search...">
                
                     
                 </div> 
                
                 </form>

        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
</div><!--  end navbar -->
</header>




   <section id="latest-works">
   <div class="container">
      <div class="row">

      </div>
      <div class="row text-center">
         <div class="works-category"  data-sr='enter top, wait 0.2s'>
            <ul class="statistics" style="width:700px;height:70px;margin:0px auto;">
               
               <li class="style1"><a href="#" data-filter=".photo" onclick="mtag('${name}')">PEOPLE</a></li>
               <li class="style2"><a href="#" data-filter=".viedeo" onclick="htag('${name}')">HASH</a></li>
            </ul>
         </div>

            <div class="works-area" >
         <c:set var="txtfind" value="${find }" /> 
<%-- <form name="reSearch" action="membersearch.do">
<input type="text" name="name" value="${name }"><input type="submit" value="검색"><br>
   <table>
      <c:if test="${empty find }">
         <tr>
            <input type="button" value="사람" onclick="member('${name}')">
            <input type="button" value="해시" onclick="hash('${name}')">
            <td colspan="4" align="center">찾으시는 해시태그가 존재하지 않습니다.</td>
         </tr>
      </c:if>
      <c:forEach var="find" items="${find }">
         <tr>
            <input type="button" value="사람" onclick="member('${name}')">
            <input type="button" value="해시" onclick="hash('${name}')">
            <td>${find.content}</td>
         </tr>
      </c:forEach>
   </table>
   </form>
             --%>

         </div> 
      </div>
      </div>
      
      <!-- 서치결과뜨는곳(해시태그) -->
      <div class="col-md-4 col-sm-6 col-xs-6  jpg">
                     <div class="works">
                     <!-- 결과사진 foreach로 뿌려주세요 -->
                     <c:forEach var="find" items="${find }">
                     <img src="myHomeFolder/content/${find.path }" alt=""
                           style="width: 400px; height: 400px;">
                  
                     </c:forEach>
      </div>
      </div>
	
</section>
  <section>
  <div class="container">
   
    <div class="row">
           <div class="col-xs-12" style="text-align: center;">
                   <div class="spinner" id="wait"></div>
        </div>
    
        <div class="col-xs-12" style="text-align: center;">
                     <button type="button" class="btn btn-primary" id="more">More List..</button>
        </div>
    </div>
</div>
  
  </section>
<!-- end main -->
    <div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="container" style="background-color: white;">
    <div class="row">
        <div class="col-xs-6">
        
        <img src="" id="galleryImage" class="img-responsive">
        
        </div>
        <div class="col-xs-6" style="float: left;">
       <h2> 제목 </h2><br>
        내용 <br>
      댓글1<br>
      댓글2<br>
        </div>
        
              
    </div>
</div>
         <div class="container" style="background-color: white;">
    <div class="row">
        <div class="col-sm-12">
              <p>
            <br/>
         <button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
              </p>
        </div>
    </div>
</div>
    </div>
</body>

    <script src="assets_main/js_1/jquery-1.10.2.js" type="text/javascript"></script>
   <script src="assets_main/js_1/bootstrap.js" type="text/javascript"></script>
   <script type="text/javascript" src="assets_main/js_1/main.js"></script>
   <script src="assets_main/js_1/ct-navbar.js"></script>
   <script type="text/javascript" src="assets_main/owl-carousel/owl.carousel.min.js"></script>
   
<!--Parallax-->
<script type="text/javascript" src="assets_main/js/jquery.stellar.min.js"></script>
<!--IsoTop-->
<script type="text/javascript" src="assets_main/js/isotope.pkgd.min.js"></script>
<!--Typed js-->
<script type="text/javascript" src="assets_main/js/typed.js"></script>
<!--Smooth Scroll-->
<script type="text/javascript" src="assets_main/js/smooth-scroll.js"></script>
<!--Reveal JS-->
<script type="text/javascript" src="assets_main/js/scrollReveal.min.js"></script>
</html>