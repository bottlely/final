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
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script type="text/javascript" src="js/httpRequest.js"></script>
    <style>
    	.frbutton{
    	
		-moz-appearance: none;
		-webkit-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease, box-shadow 0.2s ease, color 0.2s ease;
		-webkit-transition: background-color 0.2s ease, box-shadow 0.2s ease, color 0.2s ease;
		-ms-transition: background-color 0.2s ease, box-shadow 0.2s ease, color 0.2s ease;
		transition: background-color 0.2s ease, box-shadow 0.2s ease, color 0.2s ease;
		background-color: transparent;
		border: 0;
		box-shadow: inset 0 0 0 1px rgba(160, 160, 160, 0.3);
		color: #3c3b3b !important;
		cursor: pointer;
		display: inline-block;
		font-family: "Raleway", Helvetica, sans-serif;
		font-size: 0.6em;
		font-weight: 800;
		height: 20px;
		letter-spacing: 0.25em;
		line-height: 4.8125em;
		padding: 0 2.5em;
		text-align: center;
		text-decoration: none;
		text-transform: uppercase;
		white-space: nowrap;
	
    	
    	
    	}
    	
    	.frbutton:hover {
			box-shadow: inset 0 0 0 1px #2ebaae;
			color: #2ebaae !important;
		}
    
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
	                $('#more2').fadeOut();
	                   $('#more3').fadeOut();
	                ppp.location.reload();
	                 var div = $("#friends2");
	                 div.animate({height: '100%'}, "slow");
	                 div.animate({width:'toggle'}, "slow");
	             });
	         });
			
			$(document).ready(function(){
             $("#mypage1").click(function(){
            	 document.getElementById('ppp').src='myHomeForm.do?useridx='+${sessionScope.useridx};
            	 var div = $("#mypage2");
                 div.animate({right: '0px'}, "fast");
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
			    $("#cl4").click(function(){
			        var div = $("#more2");
			        div.animate({height: '0%'}, "slow");
			        div.animate({width:'toggle'}, "slow");
			        
			    });
			});
			
			$(document).ready(function(){
			    $("#cl5").click(function(){
			        var div = $("#black2");
			        div.animate({height: '0%'}, "slow");
			        div.animate({width:'toggle'}, "slow");
			        
			    });
			});
			
			$(document).ready(function(){
			    $("#cl6").click(function(){
			        var div = $("#more3");
			        div.animate({height: '0%'}, "slow");
			        div.animate({width:'toggle'}, "slow");
			        
			    });
			});
			
			$(document).ready(function(){
			    $("#more1").click(function(){
			        var div = $("#more2");
					div.toggle('slow');
			        
			    });
			});
					
			function openpic(content_idx){
				
				var path = document.getElementById('path_'+content_idx).value;
				
				window.alert(path);
			/* 	document.getElementById('pic_idx').value = i; */
				
				sendRequest('replyList.do?content_idx='+content_idx, null, replyList, 'GET');
				
				$('#galleryImage').attr("src",path);
				
				$("#galleryImage").load("#galleryImage");
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

						if(lists.replyList.length==0){
							str = '댓글 없습니다.'
							reply_list.innerHTML = str;
						}else{
							for(var i=0; i<lists.replyList.length; i++){
								var l = lists.replyList[i];
								str += l.profile_img + " : " + l.name + " : " + l.content + '<hr>';
							}
							reply_list.innerHTML = str;
						}
					}
				}
			}
			
		      function test1(idx) {
	               document.getElementById('ppp').src='myHomeForm.do?useridx='+idx;
	               var div = $("#mypage2");
	               div.animate({right: '0px'}, "fast");
	               div.animate({height: '100%'}, "slow");
	               div.animate({width:'toggle'}, "slow");
	               /* if(div.height() == '0%'){
	               div.animate({width:'toggle'},"slow"); 
	               }
	               else{
	                  div.animate({width:'60%'},"slow");
	               } */
	            }
			
			function addReply(){
				var pic_idx = document.getElementById('pic_idx').value;
				
	            var content = document.getElementById('content').value;
	            
	            sendRequest('reply.do?content='+content, null, 'GET');
	            
	            sendRequest('replyList.do?content_idx=20', null, openpic(pic_idx), 'GET');
	            
	         }
			
			   function btn_cancle() {
		            var more2 = document.getElementById('more2');
		            more2.style.dissplay='none';
		            var more3 = document.getElementById('more3');
		            more3.style.display='none';
		         }
		         
		         function settingGroup() {
		            location.href='infoSetting.do?idx='+${sessionScope.useridx};
		         }
		         
		         function removeFollower() {
		            var user2_idx = document.getElementById('hidden_other_idx').value;
		            location.href='deleteFriend.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+user2_idx;
		         }
		         
		         function black() {
		            //alert('black');
		            var user2_idx = document.getElementById('hidden_other_idx').value;
		            location.href="friend_unblock.do?user1_idx="+${sessionScope.useridx}+"&user2_idx="+user2_idx;
		         }
		         
		         function following() {
		            //alert('following');
		            var user2_idx = document.getElementById('hidden_other_idx').value;
		            location.href='following.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+user2_idx;
		         }
		         
		         function unfollowing() {
		            //alert('unfollowing');
		            var user2_idx = document.getElementById('hidden_other_idx').value;
		            location.href='deleteFriend.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+user2_idx;
		         }
		         
		         function fwer(other_idx, other_name, other_profile_img) { //follower
		            document.getElementById('follower_img_id').src='myHomeFolder/profile_img/'+other_profile_img;
		            document.getElementById('follower_name_id').innerHTML=other_name;
		            
		            document.getElementById('hidden_other_idx').value=other_idx;
		            
		         }
		         
		         function fwing(other_idx, other_name, other_profile_img) { //following
		            document.getElementById('following_img_id').src='myHomeFolder/profile_img/'+other_profile_img;
		            document.getElementById('following_name_id').innerHTML=other_name;
		            
		            document.getElementById('hidden_other_idx').value=other_idx;
		         }
			
</script> 
<body>
<header>
<form name="hidden_value">
   <input type="hidden" name="hidden_other_idx" id="hidden_other_idx" value="">
   <input type="hidden" name="hidden_other_name" id="hidden_other_name" value="">
   <input type="hidden" name="hidden_other_profile_img" id="hidden_other_profile_img" value="">
</form>
<div id="navbar-full">
		<span style="float: left;">
            <div id="friends2" style="background:#935d8c;height:100%;width:40%; position: absolute; float: left; display: none; z-index: 4">
		      <div style="background-color: white; align-content:center; text-align: right;"><a href="#" id="cl1">Close</a></div> 
			   <c:url var="frListUrl" value="main_frList.do">
			      <c:param name="member_idx" value="${sessionScope.useridx }" />
			   </c:url>
			   <iframe src="${frListUrl }" width="100%" height="100%" name="ppp" frameborder="0"></iframe>
		   </div>
       </span>
       
       <span style="float: right;">
          <div id="mypage2" style="background:#935d8c; height:100%;width:60%; position: absolute; float: right; display: none; z-index: 4">
      		<div style="background-color: white; align-content:center; "><a href="#" id="cl2">Close</a></div>
  			 <iframe src="myHomeForm.do?useridx=${sessionScope.useridx}" width="100%" height="100%" name="ppp" id="ppp" frameborder="0"></iframe>
  		 </div>
	  </span>
		 
		 	<div id="msgTest2" style="background:#935d8c;height:50%;width:20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 30%; margin-left: 78%">
		<div style="background-color: white; align-content:center; "><a href="#" id="cl3">Close</a></div>
	
		<H1>채팅창 태스트</H1>

	</div>
	<!-- 개인설정 창 부분(more)___followingList -->
	<div id="more2" style="background:white;height:50%;width:20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 10%">
		<div style="background-color: white; align-content:center; text-align: right;"><a href="#" id="cl4" style="font-size: 11px;">Close</a></div>
		<div style="text-align: center; border: thick;">
			<img src="" id="following_img_id" alt="" style="border-radius: 50%; width: 50px;">
		</div>
		<br>
		<p style="text-align: center; font-size: 8pt; font-family: Sans-Serif;" id="following_name_id"></p>
		<div style="text-align: center;">
		<input type="button" value="팔로우취소" onclick="unfollowing()" id="btn_unfwing" class="frbutton"><br><br>
		<input type="button" value="차단하기" onclick="black()" id="btn_black" class="frbutton"><br><br>
		<input type="button" value="그룹설정" onclick="settingGroup()" id="btn_settingGroup" class="frbutton"><br><br>
		<input type="button" value="취소하기" onclick="btn_cancle()" id="btn_cancle" class="frbutton"><br>
		</div>
	</div>
	
	<!-- 개인설정 창 부분(more)___followerList -->
	<div id="more3" style="background:white;height:20%;width:20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 10%">
		<div style="background-color: white; align-content:center; text-align: right;"><a href="#" id="cl6" style="font-size: 11px;">Close</a></div>
		<div style="text-align: center; border: thick;">
			<img src="" id="follower_img_id" alt="" style="border-radius: 50%; width: 50px;">
		</div>
		<br>
		<p style="text-align: center; font-size: 8pt; font-family: Sans-Serif;" id="follower_name_id"></p>
		<div style="text-align: center;">
		<input type="button" value="팔로우하기" onclick="following()" id="btn_following" class="frbutton"><br><br>
		<input type="button" value="팔로워삭제" onclick="removeFollower()" id="btn_removeFollower" class="frbutton"><br><br>
		<input type="button" value="그룹설정" onclick="settingGroup()" id="btn_settingGroup" class="frbutton"><br><br>
		<input type="button" value="취소하기" onclick="btn_cancle()" id="btn_cancle" class="frbutton"><br>
		</div>
	</div>
	
	<!-- 차단해제 창 부분(black) -->
	<div id="black2" style="background:#935d8c;height:50%;width:20%; position: absolute; float: right; display: none; z-index: 6; margin-top: 10%; margin-left: 50%">
		<div style="background-color: white; align-content:center; text-align: right; "><a href="#" id="cl5">Close</a></div>
	
		<input type="button" value="차단해제" onclick="">
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
            				
            	<script>
            		function voice(){
            			sendRequest('voice.do', null, voiceResult, 'GET');
            		}
            		function voiceResult(){
            			
            		}
            	</script>	
            				
            				
            	  <li>
               <a href="#" onclick="voice()">
                            <i class="pe-7s-search"></i>       
               </a>
               </li>
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
   			 <li><a href="serviceCenter.do?idx=${sessionScope.useridx }">CUSTOMER CENTER</a></li>
   			 <li><a href="#">Logout</a></li>
			<li> <a href="#" id="msgTest1">MSGTEST</a></li>
			<li> <a href="#" id="more1">MORETEST</a></li>
	
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




   <section id="latest-works">
	<div class="container">
		<div class="row">

		</div>
		<div class="row text-center">
			<div class="works-category"  data-sr='enter top, wait 0.2s'>
				<ul class="statistics">
					<li class="style1"><a href="#" data-filter="*" class="current">All</a></li>
					<li class="style2"><a href="#" data-filter=".photo">PHOTO</a></li>
					<li class="style3"><a href="#" data-filter=".viedeo">VIEDEO</a></li>
					<li class="style4"><a href="#" data-filter=".text">TEXT</a></li>
					<li class="style1"><a href="#" data-filter=".strategy">HOT</a></li>
				</ul>
			</div>
			
			<div>
					<c:set var="list" value="${list }"></c:set>
					<c:if test="${empty list }"> 게시물 없음! </c:if>
					<c:forEach var="list" items="${list }">
						<a>${list.path } / ${list.writer }</a>
					</c:forEach>
				</div>


				<div class="works-area">
				<c:set var="list" value="${list }"></c:set>
					<c:if test="${empty list }"> 게시물 없음! </c:if>
					<c:forEach var="list" items="${list }">
					<div class="col-md-4 col-sm-6 col-xs-12  photo">
						<div class="works">
							<img src="myHomeFolder/content/${list.path }" alt="" style="width: 431px; height: 431px;">
							<div class="work-overlay text-center">
								<div class="overlay-caption">
									<h4>PHOTO</h4>
									<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="${list.path }" onclick="openpic(${list.content_idx})"> 
									<input type="hidden" id="path_${list.content_idx }" value="myHomeFolder/content/${list.path }">
										<p>
											${list.writer}
										</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>

	<%-- 			  <div class="works-area" >
            <% for(int i=0; i<12; i++){
               
               %>
            <div class="col-md-4 col-sm-6 col-xs-12  photo"  >
               <div class="works">
                  <img src="assets_main/images/아이유6.jpg" alt="" style="width: 431px; height: 431px;">

                  <div class="work-overlay text-center">
                     <div class="overlay-caption">
                        <h4>PHOTO</h4>

                        
               <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="assets_main/images/아이유6.jpg" 
               onclick="openpic(<%=i%>)">
                        <input type="hidden" value="assets_main/images/아이유6.jpg"  id="pic<%=+i%>" >
                        <input type="hidden" id="pic_idx" value="">
                       <p>사진<%=i+1 %>번</p>
                    </a>
                     </div>
                  </div>
               </div>
            </div>
               
               <% 
               
               
               
               }%>
            

         </div>  --%>
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
    <div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true" style="margin: 3%; background: #f4f4f4;
     border: solid;">
    <div class="container">
    <div class="row">
        <div class="col-xs-6" style="margin-top: 10px; float: left;">
        
        <img src="default_content.jpg" id="galleryImage" class="img-thumbnail">
        
        </div>
         <div class="col-xs-6" style="float: left;">
      	<h2 id="content_writer">작성자</h2><br>
      	<h2 id="content_content">게시글 내용</h2>
      	<h2>좋아요</h2>
      	<input type="text" name="content" id="content" value=""><input type="button" onclick="addReply()" value="작성"><br>
      	<h2 id="reply_List">댓글 내용</h2>
        </div>
    </div>
</div>
      	
      	<div class="container" style="background-color: white;">
    <div class="row">
        <div class="col-sm-12">
      		  <p>
        	 <br/>
         <button  data-dismiss="modal" aria-hidden="true">Close <i class="ion-android-close"></i></button>
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