<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
 <title>MARS - Admin</title>
 
 
   <!-- Bootstrap core CSS-->
  <link href="assets_admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="assets_admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="assets_admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="assets_admin/css/sb-admin.css" rel="stylesheet">
</head>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
   <a class="navbar-brand" href="admin.do">MARS</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Member</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="admin_m_u.do">User</a>
            </li>
            <li>
              <a href="admin_m_b.do">Business</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Data</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="admin_d_u.do">User</a>
            </li>
            <li>
              <a href="admin_d_b.do">Business</a>

          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="admin_c.do">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Customer</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="admin_p.do">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Profile</span>
          </a>
        </li>

    

      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
 
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      
      
      <!-- 다운 추가-->
      
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
var cnt1=0;
var cnt2=1;

function request(){
		
		var oneTag = document.all.a;
		var twoTag = document.all.b;
		var threeTag = document.all.c;
		
		oneTag.innerHTML='Company';
		twoTag.innerHTML='Request Date';
		threeTag.innerHTML='show';
		
		if(cnt1!=0){
			for(var i=cnt2; i<=cnt1; i++){
				var rItem = document.getElementById('isId'+i);
				if(rItem!=null){
					rItem.parentNode.removeChild(rItem);
				}
			}
		}
		
		cnt2 = cnt1;
//		alert('3');
		
		
		sendRequest('getAdRequest.do', null, requestResult, 'GET');
}

function requestResult(){
	 if(XHR.readyState == 4){
        if(XHR.status == 200){
       	 var data = XHR.responseText;
       	 var lists = eval('('+data+')');
			var adChan = document.getElementById('adChange');
			
			if(lists.list.length==0){
				var newDiv = document.createElement('td');
				newDiv.setAttribute('id', 'isId');
				newDiv.innerHTML = '게시물 없음';
				newDiv.setAttribute('style', 'colspan:3; align:center;');
				adChan.appendChild(newDiv);
			}
			else{
	
				
				for(var i=0; i<lists.list.length; i++){
				
					cnt1++;
					var trDiv = document.createElement('tr');
					
					trDiv.setAttribute('id', 'isId'+cnt1);
 					adChan.appendChild(trDiv);
 					
 					
	 				var list = lists.list[i];
	 				
	 				var newDiv = document.createElement('td');
	 				newDiv.innerHTML = list.name;
	 				trDiv.appendChild(newDiv);
	 				
	 				var newDiv2 = document.createElement('td');
	 				newDiv2.innerHTML = list.apply_date;
	 				trDiv.appendChild(newDiv2);
	 				
	 				var newDiv3 = document.createElement('td');
	 				newDiv3.innerHTML = '<a href="#" onclick="list('+list.ad_idx+')">'+list.link+'</a>';
	 				trDiv.appendChild(newDiv3);
	 			}
				
			}
        
        }
	 }
     
}

function list(data){
	window.open('list.do?ad_idx='+data, '광고', 'scrollbars=no width=400, height=450');
}


function pay(){
	var oneTag = document.all.a;
	var twoTag = document.all.b;
	var threeTag = document.all.c;
	
	oneTag.innerHTML='Company';
	twoTag.innerHTML='Approval Date';
	threeTag.innerHTML='Payment Status';
	
	
	if(cnt1!=0){
		for(var i=cnt2; i<=cnt1; i++){
			var rItem = document.getElementById('isId'+i);
			if(rItem!=null){
				rItem.parentNode.removeChild(rItem);
			}
		}
	}
	
	cnt2 = cnt1;
	
	sendRequest('getPayRequest.do', null, payResult, 'GET');
}

function payResult(){
	 if(XHR.readyState == 4){
         if(XHR.status == 200){
        	 var data = XHR.responseText;
        	 var lists = eval('('+data+')');
 			 var adChan = document.getElementById('adChange');
 			 
 			 
 			
 			if(lists.list.length==0){
 				var newDiv = document.createElement('td');
 				newDiv.setAttribute('id', 'isId');
 				newDiv.innerHTML = '게시물 없음';
 				newDiv.setAttribute('style', 'colspan:3; align:center;');
 				adChan.appendChild(newDiv);
 			}
 			else{
 				
 				for(var i=0; i<lists.list.length; i++){
 					cnt1++;
 					var trDiv = document.createElement('tr');
 					trDiv.setAttribute('id', 'isId'+cnt1);
 					adChan.appendChild(trDiv);
 						
 	 				var list = lists.list[i];
 	 				var newDiv = document.createElement('td');
 	 				newDiv.innerHTML = list.name;
 	 				trDiv.appendChild(newDiv);
 	 				
 	 				var newDiv2 = document.createElement('td');
 	 				newDiv2.innerHTML = list.apply_date;
 	 				trDiv.appendChild(newDiv2);
 	 				
 	 				var msg='';
 	 				if(list.status==1){
 	 					msg='미 결제';
 	 				}
 	 				else if(list.status==2){
 	 					msg='<a href="#" onclick="postAd('+list.ad_idx+')">결제 완료</a>';
 	 				}
 	 				var newDiv3 = document.createElement('td');
 	 				newDiv3.innerHTML = msg;
 	 				trDiv.appendChild(newDiv3);
 	 			}
 				
 			}
         
         }
	 }
      
}

function postAd(data){
//	 alert(data);
	 alert('광고물을 게시했습니다.');
	 
	 var xhr = new XMLHttpRequest();
	xhr.open("POST","postAd.do?ad_idx="+data);
     xhr.send(data);
}

</script>

<div class="container">
  <br><br>
  <h2>광고 관리</h2>
  <br><br>
  <div class="btn-group btn-group-justified" id="re">
    <input type="button" value="광고주 관리" class="btn btn-primary" onclick="request()">
    <input type="button" value="결제 관리" class="btn btn-primary" onclick="pay()"> 
  </div>
</div>

 <table class="table table-striped">
  <thead>
      <tr>
        <th id="a">Company</th>
        <th id="b">Request Date</th>
        <th id="c">show</th>
      </tr>
   </thead>
  
   <tbody id="adChange">  
    	
   </tbody>
 </table>

   
    <!-- 다운 끝 -->
      
      
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright ⓒ Your Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="assets_admin/vendor/jquery/jquery.min.js"></script>
    <script src="assets_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="assets_admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="assets_admin/vendor/datatables/jquery.dataTables.js"></script>
    <script src="assets_admin/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="assets_admin/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="assets_admin/js/sb-admin-datatables.min.js"></script>
  </div>
</body>

</html>
