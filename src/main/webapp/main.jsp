<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<link rel="stylesheet" href="css/custom.css"> <!-- 참조  -->
<link rel="stylesheet" href="css/style.css">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<title>가시원 공식 홈페이지</title>
</head>
<body>

  <style>
  #draggable { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0; }
  #droppable { width: 150px; height: 150px; padding: 0.5em; float: left; margin: 10px; }
  </style>

<%
    String userID = null; 
    if (session.getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
%>
    <nav class ="navbar navbar-default">
        <div class="navbar-header"> <!-- 홈페이지의 로고 -->
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="main.jsp">메인</a></li>
                <li><a href="bbs.jsp">게시판</a></li>
                <li><a href="list.jsp">구매하기</a><li>
                
                
            </ul>
            <%
            // 접속하기는 로그인이 되어있지 않은 경우만 나오게한다
                if(userID == null)
                {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                
                        <li><a href="sign in.jsp">로그인</a></li>
                                           
                    </ul>
                </li>
            </ul>
            <%
            // 로그인이 되어있는 사람만 볼수 있는 화면
                } else {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
             
                     <li><a href="logout.jsp">로그아웃</a><li>
                    </ul>
                </li>
            </ul>
            <%
                }
            %>
        </div>
    </nav>
   <li><a href="main.jsp">메인</a></li>
                <li><a href="bbs.jsp">게시판</a></li>
                <li><a href="list.jsp">구매하기</a><li>
    <script src="main.js"></script>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13028.13074735361!2d127.27210723503498!3d37.94406029749526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357d2b23a348be3b%3A0xbc6d0daffb3ac73!2z6rCA7Iuc7JuQKOWckik!5e1!3m2!1sko!2skr!4v1675464762696!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    <img src="https://webp2.xplant.co.kr/data/item/16271/1627187825_l1.jpg"> 

<h1 class="center">가시원 공식 홈페이지</h1>
<h5 class="black">가시원 방문을 환영합니다.</h5>
 <p><a class="btn btn-primary btn-pull" href="gasispinegarden.html" role="button">자세히 알아보기</a></p>
          
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->