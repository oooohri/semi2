<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	String err = request.getParameter("err");
%>
<!doctype html>
<html lang="ko">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../nav.jsp">
	<jsp:param name="menu" value="관리자페이지"/>
</jsp:include>
<div class="container">
	<div class="row mb-3">
    	<div class="col-12">
        	<h1 class="border bg-light fs-4 p-2">헬스장 등록하기</h1>
      	</div>
   	</div>
   	<div class="row mb-3">
   		<div class="col-12">
   			<p>헬스장 정보를 입력하고 등록하세요.</p>
<%
	if("name".equals(err)){
%>
			<div class = "alert alert-danger">
				<strong>헬스장등록 실패</strong> 이미 등록된 헬스장입니다.
			</div>  
<%
	}
%>		 				
   			<form class="border bg-light p-3" method="post" action="insert.jsp" onsubmit="return fn1();">
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">지역명</label>
   					<input id="gym-locationName" type="text" class="form-control" name="locationName" placeholder="금오동" />
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">헬스장 전화번호</label>
   					<input id = "gym-tel" type="text" class="form-control" name="tel" />
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">헬스장 이름</label>
   					<input id ="gym-name" type="text" class="form-control" name="name" />
   				</div>
   				<div class="text-end w-75">
   					<button type="submit" class="btn btn-primary">등록</button>
   				</div>
   			</form>
   		</div>
   	</div>
</div>
<script type="text/javascript">
	function fn1() {
		let locationName = document.getElementById("gym-locationName").value;
		let tel = document.getElementById("gym-tel").value;
		let name = document.getElementById("gym-name").value;
		if(locationName ===""){
			alert("지역명은 필수 입력값입니다.")
			return false;
		}
		if(tel ===""){
			alert("헬스장 전화번호는 필수 입력값입니다.")
			return false;
		}
		if(name ===""){
			alert("헬스장 이름은 필수 입력값입니다.")
			return false;
		}
		
		return true;
	}
</script>

</body>
</html>