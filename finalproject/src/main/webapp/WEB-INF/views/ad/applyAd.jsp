<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<style>
h2 {
	font-weight:bold;
}

</style>
<body>
	<div class="container" style="background-color:#f2fdff;">
		<h2>광고 주문서</h2>
		<form class="form-horizontal" name="applyAd" action="applyAd.do"
			method="post">
			<div class="form-group">
				<label class="col-sm-2 control-label">Company Name</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						placeholder="회사명" name="name">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">AD Name</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						placeholder="광고 제목" name="ad_name">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Business Type</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						placeholder="사업 구분" name="type">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Link</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						placeholder="링크" name="link">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Link</label>
				<div class="col-sm-10">
					<input type="file">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Period</label>
				<div class="col-sm-10">
					<label style="font-size: 13px;">From</label> <input
						class="form-control" id="focusedInput" type="text"
						placeholder="yymmdd" name="s_date"> <label
						style="font-size: 13px;">To</label> <input class="form-control"
						id="focusedInput" type="text" placeholder="yymmdd" name="e_date">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Fee</label>
				<div class="col-sm-10">
					<input class="form-control" id="focusedInput" type="text"
						placeholder="KRW 단위로 입력" name="fee">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Keyword</label>
				<div class="col-sm-10">
					<input type="checkbox" name="favor_movie" value="1"> movie
					<input type="checkbox" name="favor_sport" value="1"> sport
					<input type="checkbox" name="favor_fashion" value="1"> fashion 
					<input type="checkbox" name="favor_beauty" value="1"> beauty 
					<input type="checkbox" name="favor_travel" value="1"> travel 
					<input type="checkbox" name="favor_music" value="1"> music 
					<input type="checkbox" name="favor_dance" value="1"> dance 
					<input type="checkbox" name="favor_food" value="1"> food

				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-10" align="center">
					<input type="submit" value="submit">
					<input type="reset" value="reset">
				</div>
			</div>
		</form>
	</div>
</body>
</html>