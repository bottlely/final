<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" />
	<link href="css/ct-navbar.css" rel="stylesheet" />  
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
			        div.animate({width: '35%'}, "slow");
			        
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
</script> 
<body>
<header>
<div id="navbar-full">
<span style="float: left;">

				<div  id="friends2" style="background:#935d8c;height:0px;width:0px; position: absolute; float: left; display: block; z-index: 4">
		<div style="display: none;" id="friends3">닫기</div>
	<iframe src="http://localhost:9090/finalproject/index/index.jsp" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

	</div>
		 </span>
		 <span style="float: right;">

		 	<div  id="mypage2" style="background:#935d8c;height:0px;width:0px; position: absolute; float: right; z-index: 4">
	<div style="display: none;" id="mypage3">닫기</div>
	<iframe src="http://localhost:9090/finalproject/main/main.jsp" width="100%" height="100%" name="ppp" frameborder="0"></iframe>

	</div>
		 
		 </span>
   <div id="navbar-blue">
    <nav class="navbar navbar-ct-blue" role="navigation">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
<ul class="nav navbar-nav navbar-left">
					 <li>
					<a href="main.jsp">
                          <img src="images/logo.svg" alt="" />
                           
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
    <li class="active"><a href="#">Friends?</a></li>
    <li><a href="#">양진모</a></li>
    <li><a href="#">곽은지</a></li>
    <li><a href="#">오현경</a></li>
     <li><a href="#">박연수</a></li>
  </ul>
        </div>
        <div class="col-md-9" style=" background-color: white; margin-top: 30px; height: auto;" id="choofr1_info">
		<div style="padding: 10px; float:left;"><img src="images/아이유6.jpg" alt=""  style="width: 200px; height: auto;" class="img-thumbnail">
		</div>
		<div style="padding: 15px;">
 <p>Name : 양진모</p>
		 <p>Age :  26</p>
		 <p>Favor : 패션</p>
		 <br>
		 <br>
		 <br>
		 <br>
		 <p>인생은 한방 로또복권당첨되자</p>
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
						<img src="images/아이유6.jpg" alt="">

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
						<img src="images/아이유6.jpg" alt="">

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
						<img src="images/아이유6.jpg" alt="">

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
						<img src="images/아이유6.jpg" alt="">

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
						<img src="images/아이유6.jpg" alt="">

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

    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script src="js/ct-navbar.js"></script>
	<script type="text/javascript" src="assets/owl-carousel/owl.carousel.min.js"></script>

<!--Parallax-->
<script type="text/javascript" src="assets/js/jquery.stellar.min.js"></script>
<!--IsoTop-->
<script type="text/javascript" src="assets/js/isotope.pkgd.min.js"></script>
<!--Typed js-->
<script type="text/javascript" src="assets/js/typed.js"></script>
<!--Smooth Scroll-->
<script type="text/javascript" src="assets/js/smooth-scroll.js"></script>
<!--Reveal JS-->
<script type="text/javascript" src="assets/js/scrollReveal.min.js"></script>
</html>