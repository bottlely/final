<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="assets_main/css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets_main/css/style.css" type="text/css">
    <link href="assets_main/css/pe-icon-7-stroke.css" rel="stylesheet" />
	<link href="assets_main/css/ct-navbar.css" rel="stylesheet" />  
	
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <title>MARS</title>
    <!--     Font Awesome     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <style>
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
			        div.animate({width: '65%'}, "slow");
					
			    });
			});
			
			function disInfo() {
				   var e = document.getElementById(i);
				   if(e.style.display==='block')
				      e.style.display = 'none';
				   else
				      e.style.display = 'block';
				 
				}
			$(document).ready(function(){
			    $("#frc1").click(function(){
			
			        $("#frc_2").hide();
			        $("#frc_3").hide();
			        $("#frc_4").hide();
			        $("#frc__2").hide();
			        $("#frc__3").hide();
			        $("#frc__4").hide();
			        $("#frc_1").fadeIn();
			        $("#frc__1").fadeIn();
			    });
			});
			$(document).ready(function(){
			    $("#frc2").click(function(){
			
			        $("#frc_1").hide();
			        $("#frc_3").hide();
			        $("#frc_4").hide();
			        $("#frc__1").hide();
			        $("#frc__3").hide();
			        $("#frc__4").hide();
			        $("#frc_2").fadeIn();
			        $("#frc__2").fadeIn();
			    });
			});
			$(document).ready(function(){
			    $("#frc3").click(function(){
			
			        $("#frc_2").hide();
			        $("#frc_1").hide();
			        $("#frc_4").hide();
			        $("#frc__2").hide();
			        $("#frc__1").hide();
			        $("#frc__4").hide();
			        $("#frc_3").fadeIn();
			        $("#frc__3").fadeIn();
			    });
			});
			$(document).ready(function(){
			    $("#frc4").click(function(){
			        $("#frc_2").hide();
			        $("#frc_3").hide();
			        $("#frc_1").hide();
			        $("#frc__2").hide();
			        $("#frc__3").hide();
			        $("#frc__1").hide();
			        $("#frc_4").fadeIn();
			        $("#frc__4").fadeIn();
			    });
			});
</script> 
<body>
<header>
<div id="navbar-full">
<span style="float: left;">

				<div  id="friends2" style="background:#935d8c;height:100%;width:25%; position: absolute; float: left; display: none; z-index: 4">
		<div style="display: none;" id="friends3">닫기</div>
	<iframe src="main_frList.do" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

	</div>
		 </span>
		 <span style="float: right;">

		 	<div  id="mypage2" style="background:#935d8c;height:0px;width:0px; position: absolute; float: right; z-index: 4">
	<div style="display: none;" id="mypage3">닫기</div>
	<iframe src="myHomeForm.do" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

	</div>
		 
		 </span>
   <div id="navbar-blue">
    <nav class="navbar navbar-ct-blue" role="navigation">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
<ul class="nav navbar-nav navbar-left">
					 <li>
					<a href="main.jsp">
                          <img src="assets_main/images/logo.svg" alt="" />
                           
                       </a>
					 
					 </li>
		             <li>
                        <a href="main.jsp">
                          <h3>MARS</h3>
                           
                       </a>
                   </li>			

               </ul>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        
              <ul class="nav navbar-nav navbar-right">
              
              <!-- 다운 광고 추가 임시 버튼 -->
              <li>
              <a href="#" onclick="window.open('applyAdForm.do', '광고 주문서', 'scrollbars=no width=400, height=350')">
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
                        <a href="#">
                           <i class="pe-7s-global"></i>
                           
                       </a>
                   </li>			
                    <li>
                        <a href="#">
                            <i class="pe-7s-mail">
                                <span class="label">23</span>
                            </i>
                            
                        </a>
                    </li> 
                    <li>
                       <a href="#" id="mypage1">
                             <i class="pe-7s-user"></i>
                             
                        </a>
                    </li>
                                        <li>
                        <a href="javascript:void(0);" class="hidden-xs" id="friends1">
                            Friends 
                        </a>
                    </li>
               </ul>
               <form class="navbar-form navbar-right navbar-search-form" role="search">                  
                 <div class="form-group">
                      <input type="text" value="" class="form-control" placeholder="Search...">
                 </div> 
              </form>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
</div><!--  end navbar -->
</header>




<div class="container">
    <div class="row">
        <div class="col-md-3" style="margin-top: 3%;">
         <ul class="nav nav-pills nav-stacked">
    <li><a href="#">TEXT  <span class="glyphicon glyphicon-font"></span></a></li>
    <li><a href="#">PHOTO  <span class="glyphicon glyphicon-camera"></span></a></li>
    <li><a href="#">VIDEO  <span class="glyphicon glyphicon-facetime-video"></span></a></li>
    <li><a href="#">LINK  <span class="glyphicon glyphicon-link"></span></a></li>
    
  </ul>
        </div>
        <div class="col-md-9" style=" background-color: white; margin-top: 30px; height: auto; border-radius: 10%;" id="choofr1_info">
		<div style=" float:left;"><img src="assets_main/images/아이유6.jpg" alt=""  style="width: 200px; height: 200px; border-radius: 40%;" class="img-thumbnail" id="frc__1">
		</div>
		<div style=" float:left;"><img src="assets_main/images/아이유2.jpg" alt=""  style="width: 200px; height: 200px; border-radius: 40%; display: none;" class="img-thumbnail" id="frc__2">
		
		</div>
		<div style=" float:left;"><img src="assets_main/images/아이유3.jpg" alt=""  style="width: 200px;  height: 200px; border-radius: 40%; display: none;" class="img-thumbnail" id="frc__3">
		</div>
		<div style=" float:left;"><img src="assets_main/images/아이유4.jpg" alt=""  style="width: 200px;  height: 200px; border-radius: 40%; display: none;" class="img-thumbnail" id="frc__4">
		</div>
		<div style="padding: 15px; display: block;" id="frc_1">
 		  <h3 style="display: inline;">Name :<small>양 진모</small></h3>
 		  <br>
 		  <br>
		   <h4 style="display: inline;">Age :<small>26</small></h4>
		   <br>
		  <h4 style="display: inline;">Favor :<small>패션</small></h4>
		  <h4 style="display: inline;">City :<small>수원</small></h4>
		 <br>
		 <br>
		 <br>
		
		 <h3>인생은 한방 로또복권당첨되자</h3>
		 <hr>
		 </div>
		 		<div style="padding: 15px; display: none; " id="frc_2">
 		  <h3 style="display: inline;">Name :<small>곽 은지</small></h3>
 		  <br>
 		  <br>
		   <h4 style="display: inline;">Age :<small>26</small></h4>
		   <br>
		  <h4 style="display: inline;">Favor :<small>손펌프</small></h4>
		  <h4 style="display: inline;">City :<small>서울</small></h4>
		 <br>
		 <br>
		 <br>
		 <h3>오락실 ㄱ</h3>
		 <hr>
		 </div>
		 		<div style="padding: 15px; display: none;" id="frc_3">
 		  <h4 style="display: inline;">Name :<small>오 현경</small></h4>
 		  <br>
 		  <br>
		   <h4 style="display: inline;">Age :<small>25</small></h4>
		   <br>
		  <h4 style="display: inline;">Favor :<small>한라봉</small></h4>
		  <h4 style="display: inline;">City :<small>제주도</small></h4>
		 <br>
		 <br>
		 <br>
	
		  <h3>한라산 ㄱ</h3>
		 <hr>
		 </div>
		 		<div style="padding: 15px; display: none;" id="frc_4">
 		  <h4 style="display: inline;">Name :<small>박 연수</small></h4>
 		  <br>
 		  <br>
		   <h4 style="display: inline;">Age :<small>25</small></h4>
		   <br>
		  <h4 style="display: inline;">Favor :<small>여행</small></h4>
		  <h4 style="display: inline;">City :<small>뉴욕</small></h4>
		 <br>
		 <br>
		 <br>
	
		 <h3>I am a good boy</h3>
		 <hr>
		 </div>
</div>
				

       
       </div>
      </div>
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

				<div class="works-area" >
				<div class="col-md-4 col-sm-6 col-xs-12  photo"  >
					<div class="works">
						<img src="assets_main/images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>PHOTO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 text" >
					<div class="works">
						<img src="assets_main/images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>TEXT</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 viedeo" >
					<div class="works">
						<img src="assets_main/images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>VIEDEO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 viedeo" >
					<div class="works">
						<img src="assets_main/images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>VIEDEO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 col-xs-12 viedeo" >
					<div class="works">
						<img src="assets_main/images/아이유6.jpg" alt="">

						<div class="work-overlay text-center">
							<div class="overlay-caption">
								<h4>VIEDEO</h4>

								<p>제목</p>
								<a class="btn-view" href="#">VIEW <i class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
		</div>

</section>
  <section>
  <div class="container">
    <div class="row"></div>
    <div class="row">
        <div class="col-xs-12" style="text-align: center;">
                     <button type="button" class="btn btn-primary">More List..</button>
        </div>
    </div>
</div>
  
  </section>
<!-- end main -->

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