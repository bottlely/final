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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script type="text/javascript" src="js/httpRequest.js"></script>
  
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

         $(document).ready(function(){
             $("#friends1").click(function(){
                ppp.location.reload();
                 var div = $("#friends2");
                 div.animate({height: '100%'}, "slow");
                 div.animate({width:'toggle'}, "slow");
             });
         });
         
         $(document).ready(function(){
             $("#msgTest1").click(function(){
                ppp.location.reload();
                 var div = $("#msgTest2");
                 div.animate({height: '40%'}, "slow");
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
             $("#cl3").click(function(){
                 var div = $("#msgTest2");
                 div.animate({height: '0%'}, "slow");
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
<body onload="reply_List(${content_idx})">
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
          <div  id="msgTest2" style="background:#935d8c;height:50%;width:20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 30%; margin-left: 78%">
      <div style="background-color: white; align-content:center; "><a href="#" id="cl3">Close</a></div>
   
      <H1>채팅창 태스트</H1>

   </div>
   
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
         <%@include file="feedList.jsp" %>

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
         <%@include file="msgList.jsp" %>
         
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
             <li><a href="#">Logout</a></li>
         <li> <a href="#" id="msgTest1">MSGTEST</a></li>
   
    </ul>
  </div></li>
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


<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
   
    </div>
    <div class="col-sm-8 text-center"  style="background-color: white; border-radius: 5%;"> 
      <img src="assets_main/images/아이유6.jpg" alt="" style="margin: 1%" class="img-thumbnail">
    </div>
    <div class="col-sm-2 sidenav">
     
 
    </div>
  </div>
  <div class="row content">
  <div class="col-sm-4 text-center" >
    
  </div>
  <div class="col-sm-4 text-left"  style="background-color: white; border-radius: 5%;">
        <img src=""><input type="button" value="발자취" onclick="like(${content_idx})">
  </div>
  <div class="col-sm-4 text-center">
  
  </div>
  </div>
  
    <div class="row content">
    <div class="col-sm-2 sidenav">
   
    </div>
    <div class="col-sm-8 text-left"  style="background-color: white; border-radius: 5%;"> 
    <input type="hidden" id="content_idx" name="content_idx" value="${content_idx  }">
      <input type="text" id="content" name="content" value=""><input type="button" value="작성" onclick="addReply()"><br>
      
      <h2 id="reply_List"></h2>
      <input type="hidden" id="session_idx" value="${sessionScope.useridx }">
      <input type="hidden" id="session_name" value="${sessionScope.username }">
      <script>
         function like(content_idx){
            document.getElementById("session_idx").value;
            
            sendRequest('like.do?session_idx='+session_idx+'content_idx='+content_idx, null, likeList, 'GET');
         }
         
         function likeList(){
         if(XHR.readyState==4){
            if(XHR.status==200){
               var data = XHR.responseText;
               var lists = eval('('+data+')');
               
               
               
            }
         }
      }
         
         function reply_List(content_idx){
            sendRequest('replyList.do?content_idx=' + content_idx, null, replyList, 'GET');
         }
         
         function addReply(){
            var content_idx = document.getElementById("content_idx").value;
            var session_idx = document.getElementById("session_idx").value;
            var content = document.getElementById("content").value;
            
            sendRequest('reply.do?content='+content+"&content_idx=20&session_idx="+session_idx, null, replyList,'GET');
         }
         
         function replyList(){
         if(XHR.readyState==4){
            if(XHR.status==200){
               var data = XHR.responseText;
               var lists = eval('('+data+')');
               var content_writer = '박연수';
               var content_content = '하이하이';
               var reply_list = document.all.reply_List;
               var str='';
               var userName = document.getElementById("session_name").value;

               if(lists.replyList.length==0){
                  str = '댓글 없습니다.'
                  reply_list.innerHTML = str;
               }else{
                  for(var i=0; i<lists.replyList.length; i++){
                     var l = lists.replyList[i];
                     
                     if(l.lev == 0){
                        if(l.name == userName){
                           str += l.profile_img + " : " + l.name + " : " + l.content + '<br>' + '<input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">' + '<input type="button" value="수정" >' + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' + '<hr>';   
                        }else{
                           str += l.profile_img + " : " + l.name + " : " + l.content + '<br><input type="text" id="'+l.idx+'text" style="display: none;"><input type="button" value="작성" id="'+l.idx+'btn" onclick="re_Reply('+l.idx+')"  style="display: none;">' + '<input type="button" value="답글" onclick="ondisplay('+l.idx+')">' + '<hr>';
                        }
                        
                     }else{
                        if(l.name == userName){
                           str += '=>' + l.profile_img + " : " + l.name + " : " + l.content + '<br>' + '<input type="button" value="수정" >' + '<input type="button" value="삭제" onclick="delete_Reply('+l.idx+')">' + '<hr>';
                        }else{
                           str += '=>' + l.profile_img + " : " + l.name + " : " + l.content + '<hr>';
                        }
                     }
                  }
                  reply_list.innerHTML = str;
               }
            }
         }
      }
         
         function re_Reply(idx){
            var content = document.getElementById(idx+"text").value;
            var content_idx = document.getElementById("content_idx").value;
            var session_idx = document.getElementById("session_idx").value;
            
            sendRequest('re_Reply.do?reply_idx='+idx+'&content='+content+'&content_idx='+content_idx+'&session_idx='+session_idx, null, replyList,'GET');
            
            re_content.style.display = 'none';
              re_ok.style.display = 'none';
         }
         
         function ondisplay(idx){
            var re_content = document.getElementById(idx+"text");
            var re_ok = document.getElementById(idx+"btn");
            
            re_content.style.display = 'block';
            re_ok.style.display = 'block';
         }
         
         /* function update_Reply(idx){
            var content = document.getElementById("content").value;
            alert('content' + content + 'idx' + idx);
            location.href="update_Reply.do?reply_idx="+idx+"&content="+content;
         } */
         
          function delete_Reply(idx){
            var content_idx = document.getElementById('content_idx').value;
            
            location.href="delete_Reply.do?reply_idx="+idx+"&content_idx="+content_idx;
         }
         
         
      </script>
       
    </div>
    <div class="col-sm-2 sidenav">
     
 
    </div>
  </div>
  
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>



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