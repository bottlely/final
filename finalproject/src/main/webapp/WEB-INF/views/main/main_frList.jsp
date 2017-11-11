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
      
     function black(idx) {
    	 var div = $('#black2', parent.document);
         div.animate({height: '40%'}, "slow");
         div.animate({width:'toggle'}, "slow");
     } 
      
     function more(other_idx) {
    	 var div = $('#more2', parent.document);
         div.animate({height: '45%'}, "slow");
         div.animate({width:'toggle'}, "slow");
         parent.addIdx(other_idx);
     }
     
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
                              <input type="hidden" name="user_idx" value="${sessionScope.useridx }">
                              <input type="text" name="search_name" placeholder="Search" />
                              <a href="#intro" id="search"><input type="submit" value="찾기"></a>
                           </form>
                     
                  </div>
                  </section>
                  
                  
                  <!-- follower -->
                     <section id="follower1" style="display: none;">
                        <ul class="posts">
                        <c:set var="infoList" value="${infoList }" />
                        <c:forEach var="follower_list" items="${followerList }">
                           <li>
                              <article>
                                 <header>
                                    <h3><a onclick="openMypage(${follower_list.idx })" value="${follower_list.idx }">${follower_list.name }</a></h3>
                                    <input type="button" value="chat" id="userChat"><input type="button" value="more" onclick="more(${follower_list.idx })">
                                 </header>
                                 <%-- <a href="#" class="image"><img src="myHomeFolder/profile_img/${infoList.get(0).getProfile_img() }" alt=""  style="border-radius: 50%"></a> --%>
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
                                    <input type="button" value="chat" id="userChat1"><input type="button" value="more" id="more" onclick="more(${following_list.member_idx })">
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
                                    <h3><a onclick="openMypage(${search_list.idx })" value="${search_list.idx }">${search_list.name }</a></h3>
                                    <input type="button" value="chat" id="userChat2"><input type="button" value="more" id="more" onclick="more(${search_list.idx })">
                                 </header>
                                 <%-- <a href="#" class="image"><img src="myHomeFolder/profile_img/${infoList.profile_img }" alt=""  style="border-radius: 50%"></a> --%>
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
                        <c:set var="infoList" value="${infoList }" />
                        <c:forEach var="blackList" items="${blackList }">
                           <li>
                              <article>
                                 <header>
                                    <h3 style="display: inline;"><a onclick="openMypage(${blackList.idx })" value="${blackList.idx }">${blackList.name }</a></h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="button" value="차단해제" onclick="black(${blackList.idx })">
                                 </header>
                                 <a href="#" class="image"><img src="myHomeFolder/profile_img/${infoList.get(0).getProfile_img() }" alt=""  style="border-radius: 50%"></a>
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