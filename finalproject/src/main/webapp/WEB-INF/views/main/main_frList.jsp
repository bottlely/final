<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
   <head>
      <title>Friend List</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
      <link rel="stylesheet" href="assets_main_fr/css/main.css" />
      <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
      <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script> 
      $(document).ready(function(){
          $("#follower").click(function(){
           $("#following1").fadeOut();
           $('#search1').fadeOut();
           $('#search1').empty();
           $("#follower1").slideToggle();
          });
      });
      
      $(document).ready(function(){
             $("#following").click(function(){
              $("#follower1").fadeOut();
              $('#search1').fadeOut();
              $('#search1').empty();
              $("#following1").slideToggle();
             });
         });
      
      $(document).ready(function(){
             $("#black").click(function(){
              $("#black1").slideToggle();
             });
         });
      
      $(document).ready(function(){
             $("#search").click(function(){
                $('#search1').fadeOut();
              $("#search1").slideToggle();
             });
         });
      
      $(document).ready(function(){
             $("#search_name").click(function(){
                $('#search1').fadeOut();
             });
         });
      
      function test(idx) { //follow_test
         location.href='test.do?user_idx='+idx;
      }
      
      function openMypage(j) {
    	  var idx = j;
          parent.test1(idx);
      } 
      
      
      $(document).ready(function(){
          $("#userChat").click(function(){
              var div = $('#msgTest2', parent.document);
              div.animate({height: '40%'}, "slow");
              div.animate({width:'toggle'}, "slow");
          });
      });
      
      $(document).ready(function(){
          $("#userChat1").click(function(){
              var div = $('#msgTest2', parent.document);
              div.animate({height: '40%'}, "slow");
              div.animate({width:'toggle'}, "slow");
          });
      });
      
      $(document).ready(function(){
          $("#userChat2").click(function(){
              var div = $('#msgTest2', parent.document);
              div.animate({height: '40%'}, "slow");
              div.animate({width:'toggle'}, "slow");
          });
      });
      
     function black(user1_idx, user2_idx) {
         location.href="friend_unblock.do?user1_idx="+user1_idx+"&user2_idx="+user2_idx;
     } 
      
     function fwer_more(other_idx, other_name, other_profile_img) {
    	 var div_1 = $('#follower_img_id', parent.document);
    	 div_1.src='myHomeFolder/profile_img/'+other_profile_img;
    	 var div_2 = $('#follower_name_id', parent.document);
    	 div_2.innerHTML=other_name;
    	 
    	 var div = $('#more3', parent.document);
         div.animate({height: '45%'}, "slow");
         div.animate({width:'toggle'}, "slow");
         parent.addIdx1(other_idx, other_name, other_profile_img);
     }
     
     function fwing_more(other_idx, other_name, other_profile_img) {
    	 var div_1 = $('#following_img_id', parent.document);
    	 div_1.src='myHomeFolder/profile_img/'+other_profile_img;
    	 var div_2 = $('#following_name_id', parent.document);
    	 div_2.innerHTML=other_name;
    	 var btn_1 = $('#btn_unfwing', parent.document);
    	 btn_1.attr('onclick','unfollowing(${sessionScope.useridx}, other_idx)');
    	 var btn_2 = $('#btn_settingGroup', parent.document);
    	 btn_1.attr('onclick','settingGroup()');
    	 var btn_3 = $('#btn_cancle', parent.document);
    	 btn_1.attr('onclick','cancle_btn()');
    	 
    	 var div = $('#more2', parent.document);
         div.animate({height: '45%'}, "slow");
         div.animate({width:'toggle'}, "slow");
         parent.addIdx2(other_idx, other_name, other_profile_img);
     }
     function following(n1, n2) {
			window.alert(n1);
			window.alert(n2);
			location.href='following.do?user1_idx='+n1+'&user2_idx='+n2;
		}
		function unfollowing(user_idx, other_idx) {
			parent.unfollowing(user_idx, other_idx);
			window.alert(user_idx);
			window.alert(other_idx);
			location.href='deleteFriend.do?user1_idx='+user_idx+'&user2_idx='+other_idx;
		}
		function removeFollower(n1, n2) {
			window.alert(n1);
			window.alert(n2);
			location.href='deleteFriend.do?user1_idx='+n2+'&user2_idx='+n1;
		}
		function settingGroup() {
			location.href='infoSetting.do';
		}
		function cancle_btn() {
			window.self.close();
		}
		

     $(document).ready(function(){
		    $("#btn_unfwing").click(function(){ //팔로우 취소하기
		    	location.href='deleteFriend.do?user1_idx='+${sessionScope.useridx}+'&user2_idx='+other_idx;
		    });
		});
     $(document).ready(function(){
		    $("#btn_settingGroup").click(function(){ //그룹설정
		    	location.href='infoSetting.do';
		    });
		});
	$(document).ready(function(){
		    $("#btn_cancle").click(function(){ //취소하기
		    	var div = $("#more2");
		        div.animate({height: '0%'}, "slow");
		        div.animate({width:'toggle'}, "slow");
		    });
		});
      </script>
   </head>
   <body>
      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Header -->
               <header id="header">
                  <h1><a href="main_frList.do?user_idx=${sessionScope.useridx }">Follow & Black</a></h1>

               </header>

            <!-- Menu -->
               <section id="menu">



                  <!-- 지우면안나옴-->
                     <section>
                        <ul class="actions vertical">
                           <li><a href="#" class="button big fit">Log In</a></li>
                        </ul>
                     </section>

               </section>



         
                  <!-- Intro -->
                     <section id="intro">
                     
                        <header>
                        <div style="float: left;">
                        <h3>Follower</h3>
                        <c:set var="follower_list" value="${followerList }" />
                        <h3><a href="#intro" id="follower">${follower_list.size() }</a></h3>
                        </div>
                        
                        <div style="float: right;">
                        <h3>Following</h3>
                        <c:set var="following_list" value="${followingList }" />
                        <h3><a href="#intro" id="following">${following_list.size() }</a></h3>
                        </div>
                        </header>
                        
                        
                     </section>

                  <!-- Search -->
                     <section>
                  <div>
                  
                           <form id="search" method="get" action="friend_search.do">
                              <input type="hidden" name="member_idx" value="${sessionScope.useridx }">
                              <input type="text" name="search_name" placeholder="Search" />
                              <a href="#intro" id="search"><input type="submit" value="찾기"></a>
                           </form>
                     
                  </div>
                  </section>
                  
                  
                  <!-- follower -->
                     <section id="follower1" style="display: none;">
                        <ul class="posts">
                        
                        <c:forEach var="follower_list" items="${followerList }">
						   <c:set var="cde" value="false" />
						   <li>
						      <article>
						         <header>
						            <h3>
						               <a onclick="openMypage(${follower_list.member_idx })" value="${follower_list.member_idx }">
						                  ${follower_list.name }
						               </a>
						            </h3>
						            <input type="button" value="chat" id="userChat">
						            <c:forEach var="fwing_idx" items="${followingList }">
						               <c:if test="${cde != true}">
						                  <c:if test="${fwing_idx.member_idx == follower_list.member_idx }">
						                     <input type="button" value="more" onclick="fwer_more('${follower_list.member_idx }','${follower_list.name }','${follower_list.profile_img }')">
						                     <c:set var="cde" value="true" />
						                  </c:if>
						                  <c:if test="${fwing_idx.member_idx != follower_list.member_idx }">
						                     
						                  </c:if>
						               </c:if>
						            </c:forEach>
						            <c:if test="${cde != true }">
						               <input type="button" value="Follow" onclick="fwing_more('${follower_list.member_idx }','${follower_list.name }','${follower_list.profile_img }')">
						            </c:if>
						         </header>
						         <a href="#" class="image">
						            <img src="myHomeFolder/profile_img/${follower_list.profile_img }" alt="" style="border-radius: 50%">
						         </a>
						      </article>
						   </li>
						</c:forEach>
                        
                        </ul>
                     </section>
                     
                     <!-- following -->
                     <section id="following1" style="display: none;">
                        <ul class="posts">
                        <c:forEach var="following_list" items="${followingList }">
                           <li>
                              <article>
                                 <header>
                                    <h3><a onclick="openMypage(${following_list.member_idx })" value="${following_list.member_idx }">${following_list.name }</a></h3>
                                    <input type="button" value="chat" id="userChat1"><input type="button" value="more" id="more" onclick="fwing_more('${following_list.member_idx }','${following_list.name }','${following_list.profile_img }')">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${following_list.profile_img }" alt=""  style="border-radius: 50%"></a>
                              </article>
                           </li>
                        </c:forEach>
                        </ul>
                     </section>
                     
                     <!-- search -->
                     <section id="search1" style="display: none;">
                        <ul class="posts">
                        <c:forEach var="search_list" items="${resultList }">
                           <li>
                              <article>
                                 <header>
                                    <h3><a onclick="openMypage(${search_list.member_idx })" value="${search_list.member_idx }">${search_list.name }</a></h3>
                                    <input type="button" value="chat" id="userChat2"><input type="button" value="more" id="more" onclick="more(${search_list.member_idx })">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${search_list.profile_img }" alt=""  style="border-radius: 50%"></a>
                              </article>
                           </li>
                        </c:forEach>
                        </ul>
                     </section>
                     
                     <!-- Pagination -->
                     <ul class="actions pagination">
                        <li><a href="" class="disabled button big previous">Previous Page</a></li>
                        <li><a href="#" class="button big next">Next Page</a></li>
                     </ul>
                     
                     <section>
                     <input type="button" value="차단목록" id="black">
                     <br>
                     </section>
                     <hr>
                     <section id="black1" style="display: none;">
                        <ul class="posts">
                        <c:forEach var="blackList" items="${blackList }">
                           <li>
                              <article>
                                 <header>
                                    <h3 style="display: inline;"><a onclick="openMypage(${blackList.member_idx })" value="${blackList.member_idx }">${blackList.name }</a></h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="button" value="차단해제" onclick="black(${sessionScope.useridx }, ${blackList.member_idx })">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${blackList.profile_img }" alt=""  style="border-radius: 50%"></a>
                              </article>
                           </li>
                        </c:forEach>
                        </ul>
                     </section>



         </div>

      <!-- Scripts -->
         <script src="assets_main_fr/js/jquery.min.js"></script>
         <script src="assets_main_fr/assets/js/skel.min.js"></script>
         <script src="assets_main_fr/assets/js/util.js"></script>
         <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
         <script src="assets_main_fr/assets/js/main.js"></script>


   </body>
</html>