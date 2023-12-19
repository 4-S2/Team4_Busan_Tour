<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <style>
    body {
      font-family: sans-serif;
    }

    .container {
      width: 500px;
      margin: 0 auto;
      padding: 20px;
    }

    .title {
      font-size: 24px;
      text-align: center;
    }

    .form-group {
      margin-bottom: 10px;
    }

    .form-control {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .required {
      color: red;
    }

    .btn {
      width: 100px;
      height: 40px;
      background-color: #000;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .btn1 {
      width: 100px;
      height: 40px;
      background-color: #000;
      color: #eee;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    
    
  </style>
</head>
<body>
  <div class="container">
    <h2 class="title">회원가입</h2>
    <form action="#">
      <div class="form-group">
        <label for="id">아이디</label>
        <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요">
        <span class="required">*</span>
      </div>
      <div class="form-group">
        <label for="password">비밀번호</label>
        <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요">
        <span class="required">*</span>
      </div>
      <div class="form-group">
        <label for="password_confirmation">비밀번호 확인</label>
        <input type="password" class="form-control" id="password_confirmation" placeholder="비밀번호를 다시 입력하세요">
        <span class="required">*</span>
      </div>
      <div class="form-group">
        <label for="name">이름</label>
        <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요">
      </div>
      <div class="form-group">
        <label for="mobile">휴대폰 번호</label>
        <input type="text" class="form-control" id="mobile" placeholder="휴대폰 번호를 입력하세요">
      </div>
      <div class="form-group">
        <label for="email">이메일</label>
        <input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요">
      </div>
      <button type="submit" class="btn">회원가입</button>
       <button type="submit" class="btn btn-1">돌아가기</button>
    </form>
  </div>
</body>
</html>