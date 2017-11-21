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
                //$('#search1').fadeOut();
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
      
      
     function fwer_more(other_idx, other_name, other_profile_img) {
    	 
    	 $('#more2').fadeOut();
         $('#more3').fadeOut();
    	 
    	 var div_1 = $('#follower_img_id', parent.document);
    	 div_1.src='myHomeFolder/profile_img/'+other_profile_img;
    	 var div_2 = $('#follower_name_id', parent.document);
    	 div_2.innerHTML=other_name;
    	 
    	 var div = $('#more3', parent.document);
         div.animate({height: '35%'}, "slow");
         div.animate({width:'toggle'}, "slow"); 
         
         parent.fwer(other_idx, other_name, other_profile_img);
     }
     
     function fwing_more(other_idx, other_name, other_profile_img) {
    	 
    	 $('#more2').fadeOut();
    	 $('#more3').fadeOut();
    	 
    	 var div_1 = $('#following_img_id', parent.document);
    	 div_1.src='myHomeFolder/profile_img/'+other_profile_img;
    	 var div_2 = $('#following_name_id', parent.document);
    	 div_2.innerHTML=other_name;
    	 
    	 var div = $('#more2', parent.document);
         div.animate({height: '25%'}, "slow");
         div.animate({width:'toggle'}, "slow");
         
         parent.fwing(other_idx, other_name, other_profile_img);
     }
     
     function unblock(member_idx) {
         location.href="friend_unblock.do?user1_idx="+${sessionScope.useridx}+"&user2_idx="+member_idx;
         ppp.location.reload();
     }
     
     
     //ip
     function chatting(other_idx, other_name, other_profile_img) {
    	 window.open("http://192.168.20.174:9090/finalproject/chat.do?&user2_name="+other_name+"&user2_idx="+other_idx+"&user2_profile_img="+other_profile_img,'chat','width=350, height=340, scrollbars=no, resizable=no, toolbars=no, menubar=no');
     }
     
     
      </script>
   </head>
   <body>
      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Header -->
               <header id="header">
                  <h1><a href="main_frList.do?member_idx=${sessionScope.useridx }">Follow & Black</a></h1>

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
					<br><br>
                  <!-- Search -->
                     <section>
                  <div>
                  
                           <form id="search" method="get" action="friend_search.do">
                              <input type="hidden" name="member_idx" value="${sessionScope.useridx }">
                              <input type="text" name="search_name" placeholder="Search" style="width: 70%; float: left;" />
                              <a href="#intro" id="search"><input type="submit" value="찾기" id="search_btn"></a>
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
						            <input type="button" value="chat" id="userChat" onclick="chatting('${follower_list.member_idx }','${follower_list.name }','${follower_list.profile_img }')">
						            <c:forEach var="fwing_idx" items="${followingList }">
						               <c:if test="${cde != true}">
						                  <c:if test="${fwing_idx.member_idx == follower_list.member_idx }">
						                     <input type="button" value="more" onclick="fwing_more('${follower_list.member_idx }','${follower_list.name }','${follower_list.profile_img }')">
						                     <c:set var="cde" value="true" />
						                  </c:if>
						                  <c:if test="${fwing_idx.member_idx != follower_list.member_idx }">
						                     
						                  </c:if>
						               </c:if>
						            </c:forEach>
						            <c:if test="${cde != true }">
						               <input type="button" value="Follow" onclick="fwer_more('${follower_list.member_idx }','${follower_list.name }','${follower_list.profile_img }')">
						            </c:if>
						         </header>
						         <a href="#" class="image">
						            <img src="myHomeFolder/profile_img/${follower_list.profile_img }" alt="" style="border-radius: 50%; height: 40px; width: 40px;">
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
                                    <input type="button" value="chat" id="userChat1" onclick="chatting('${following_list.member_idx }','${following_list.name }','${following_list.profile_img }')"><input type="button" value="more" onclick="fwing_more('${following_list.member_idx }','${following_list.name }','${following_list.profile_img }')">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${following_list.profile_img }" alt=""  style="border-radius: 50%; height: 40px; width: 40px;"></a>
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
                                    <input type="button" value="chat" id="userChat2" onclick="chatting('${search_list.member_idx }','${search_list.name }','${search_list.profile_img }')"><input type="button" value="more" id="more" onclick="more(${search_list.member_idx })">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${search_list.profile_img }" alt=""  style="border-radius: 50%; height: 40px; width: 40px;"></a>
                              </article>
                           </li>
                        </c:forEach>
                        </ul>
                     </section>
                     
                      <!-- Pagination -->
                     <!--<ul class="actions pagination">
                        <li><a href="" class="disabled button big previous">Previous Page</a></li>
                        <li><a href="#" class="button big next">Next Page</a></li>
                     </ul> -->
                     
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
                                    <input type="button" value="차단해제" onclick="unblock(${blackList.member_idx })">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${blackList.profile_img }" alt=""  style="border-radius: 50%; height: 40px; width: 40px;"></a>
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