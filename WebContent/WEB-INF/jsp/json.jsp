<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>	
</head>
<body>
	<button onclick="json()">转换JSON数据测试</button>
	<script type="text/javascript">
		function json(){
			$.ajax({
				dataType : "json", // 预期服务器返回的数据类型。
				type:"post",
				url:"json",
				data: JSON.stringify(parma),
				contentType:"application/json;charset=utf-8",
				success:function(data){
					alert(data.id+","+data.username);
					console.log(data);
				}
			});			
		}
	</script>
</body>

</html>