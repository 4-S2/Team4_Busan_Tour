<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style type="text/css">  
     
    </style>
</head>
<body>
    <h1>로그인</h1>
    <form id="login-form" action="login.do" method="post">
        <div>
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" />
        </div>
        <div>
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" />
        </div>
        <div>
            <input type="checkbox" id="saveId" name="saveId" />
            <label for="saveId">아이디 저장</label>
        </div>
        <input type="submit" value="로그인" />
    </form>
    <div>
        <a href="#">아이디 찾기</a>
        <a href="#">비밀번호 찾기</a>
        <a href="#">회원가입</a>
    </div>
</body>
</html>