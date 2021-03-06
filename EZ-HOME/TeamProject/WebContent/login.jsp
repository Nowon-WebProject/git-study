<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이젠, 집에서 | 로그인</title>
<link href="css/styles.css" rel="stylesheet" />
<style>
/* CSS RESET */
* {
    padding: 0;
    border: 0;
    margin: 0;
}
body,html{
    height: 80%;
    background-color: #f4f4f4;
}

a {text-decoration: none;}
li {list-style: none;}

.full-bg{
    height: 100%;
}

.table{
    height: 100%;
    display:table;
    margin: 0 auto;
}
.table-cell{
    height: 100%;
    display: table-cell;
    vertical-align: middle;

}
.login-container{
    width: 500px;
    background-color: #fff;
    padding: 70px 20px;
    box-sizing: border-box;

}
.login--title{
    width: 100%;
    text-align: center;
    font-size: 50px;
}
.form-input{
    width: 100%;
    padding: 10px 20px;
    font-size: 20px;
    outline: none;
    margin: 10px 0;
    border: 1px solid #efefef;
    box-sizing: border-box;
}

.form-input:focus{
    box-shadow: 3px 3px 5px rgba(0,0,0,0.1);
    border: none;
}

.form-input--title{
    width: 100%;
    display: block;
    margin: 5px 0;
    box-sizing: border-box;
}
.form-btn{
    display: block;
    width: 100%;
    font-size: 16px;
    height: 40px;
    background-color: #000;
    color: #fff;
    box-sizing: border-box;
    margin: 5px 0;
    cursor: pointer;
}

.form-btn:hover{
    background-color: brown;
    box-shadow: 3px 3px 3px rgba(0,0,0,0.5);
    
}
</style>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
		<div class="table" style="padding-left:38%">
			<div class="table-cell">
  				<form method="post" onsubmit="return cheakFunction();" action="<%=application.getContextPath()%>/servlet?controller=user&command=login">
                    <div class="login-container">
                        <h3 class="login--title">LOGIN</h3>
                        
                        <label class=form-input--title>ID</label>
                        
                        <input type="text" id ="userId" name="userId" class="form-input" value="">
                        
                        <label class=form-input--title>PASSWORD</label>
                        
                        <input type="password" id="userPwd" name="userPwd" class="form-input" value="">
                        
                        <input type="submit" class="form-btn" value="LOG IN" id="login">
                        <input type="button" class="form-btn" value="SIGN UP" id="signup" onclick="location.href='<%=application.getContextPath()%>/user/signUp.jsp'">
                        <input type="button" class="form-btn" value="MAIN" id="main" onclick="location.href='../servlet?controller=product+review&command=productList'">
                    </div>
 				</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>