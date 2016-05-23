<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>КЛП по JAVA</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../../../css/style1.css" rel="stylesheet" type="text/css" />
<script src="js/login.js" type="text/javascript"></script>
    </head>
<body>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
    String site = new String("../../../eor.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
}%>
<div class="header_area">
  <div class="main_area">
      <div>
          <br>
          <br>
     <div class="nav_wrap">
    <div class="nav_wrap2">
        <ul>
        
          <li><a href="../../../eor.jsp" class="home1">Главная</a></li>
          <li><a href="../lp1/lp1.jsp" class="lekci">Практикум</a></li>
          <li><a href="../../../test/test.jsp" class="testy1">Контроль знаний</a></li>
          <li><a href="../../../resursy/present1.jsp" class="glos1">Ресурсы</a></li>
          <li><a href="../../../glossariy/gloss.jsp" class="glos1">Глоссарий</a></li>
          
        </ul>
          </div>
        <br class="blank" />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />

<div class="main_area">
  <div class="body_wrap">
    <div class="left_body_wrap">
      <div class="left_body_main">
        

		<p>6.	Запустите страницу <b>firstJSP.jsp</b> на выполнение:</p>
		<br />
			<center><p> <img src="../images/27.png" alt="" /></p><br/></center>
    		<br />
		<p>7.	Создайте страницу <b>secondJSP.jsp:</b></p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@ page contentType="text/html" pageEncoding="UTF-8"%></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type"</p>
		<p style="text-indent:40px">content="text/html; charset=UTF-8"></p>
		<p style="text-indent:30px"><.title>Стандартые теги JSP </.title></p>
		<p style="text-indent:20px"></.head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.h4> Выражение JSP</.h4></p>
		<p style="text-indent:30px">4*5 = <.%= 4*5 %></p>
		<p style="text-indent:30px"><.h4> Объявление JSP </.h4></p>
		<p style="text-indent:30px"><.%! int num = 33; %> int num = 33;</p>
		<p style="text-indent:30px"><.h4> Скриптлет JSP </.h4></p>
		<p style="text-indent:30px"><.%out.println("Я студент группы ПМ-" + num + "!");%></p>
		<p style="text-indent:20px"></.body></p>
		<p><./html></p></font>
		</span>
		<br>
		<p>8.	 Запустите страницу <b>secondJSP.jsp</b> на выполнение и просмотрите результат работы в браузере.</p>
		<br />
			<center><p> <img src="../images/28.png" alt="" /></p><br/></center>
    		<br />
		<p>9.    Ознакомьтесь с основными фазами жизненного цикла страницы JSP.</p>
		<p>10.	 Создайте страницу <b>xmlJSP.jspx</b>, выбрав опцию <b>Документ JSP (синтаксис XML).</b></p>
		<br />
			<center><p> <img src="../images/29.png" alt="" /></p><br/></center>
    		<br />
		<p>11.   Рассмотрите сформированный программный код в формате <b>XML.</b></p>
		<p>12.	 Сформируйте программный код блока <span style="font-family:Courier, monospace">jsp:body>…/jsp:body>:</span></p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.!--объявление переменной для подсчета количества подключений--></p>
		<p><.jsp:declaration> </p>
		<p style="text-indent:20px">private int accessCount = 0; </p>
		<p><./jsp:declaration></p>
		<p><.!-- вывод значения количества подключений --></p>
		<p><.h4> Количество подключений =</p>
		<p style="text-indent:10px"><.jsp:expression> ++accessCount </.jsp:expression></p>
		<p><./h4></p></font>
		</span>
		<br>
		<p>13.	 Запустите страницу  <b>xmlJSP.jspx </b> на выполнение и просмотрите результат работы в браузере:</p>
		<br />
			<center><p> <img src="../images/30.png" alt="" /></p><br/></center>
    		<br />
		
		
    		</div>
      </div>
    </div>
    <div class="right_body_wrap">
  
      <div class="event_wrap">
        <div class="event_top_wrap">
          <p class="latest_text">Содержание</p>
        </div>
        <div class="event_meddile_wrap">
          <div class="feb_wrap">
		   <p class="green_righte">Основы программирования на Java<br />
		   <span class="busniess_area_text1"><a href="../lp1/lp1.jsp" class="read_more2">Лабораторная работа №1</a></span>
           <p class="green_righte">Объектно-ориентированные принципы Java<br />
           <span class="busniess_area_text1"><a href="../lp2/lp2.jsp" class="read_more2">Лабораторная работа №2</a></span>
           <span class="busniess_area_text1"><a href="../lp3/lp3.jsp" class="read_more2">Лабораторная работа №3</a></span></p>
           <p class="green_righte">Исключения<br />
           <span class="busniess_area_text1"><a href="../lp4/lp4.jsp" class="read_more2">Лабораторная работа №4</a></span></p>
           <p class="green_righte">GUI программирование. AWT и Swing<br />
           <span class="busniess_area_text1"><a href="../lp5/lp5.jsp" class="read_more2">Лабораторная работа №5</a></span></p>
           <p class="green_righte">Java Servlets<br />
           <span class="busniess_area_text1"><a href="../lp6/lp6.jsp" class="read_more2">Лабораторная работа №6</a></span></p>
           <p class="green_righte">JavaServer Pages<br />
           <span class="busniess_area_text1"><a href="№" class="read_more2">Лабораторная работа №7</a></span>
           <span class="busniess_area_text1"><a href="../lp8/lp8.jsp" class="read_more2">Лабораторная работа №8</a></span>
           <span class="busniess_area_text1"><a href="../lp9/lp9.jsp" class="read_more2">Лабораторная работа №9</a></span></p>
           <p class="green_righte">Операции с базами данных<br />
           <span class="busniess_area_text1"><a href="../lp10/lp10.jsp" class="read_more2">Лабораторная работа №10</a></span></p>
          <br />
              
            
          </div>
        </div>
       <div><img src="../../../../images/event_bottom.jpg" alt="" /></div>
      </div>
    </div>
    <br class="blank" />
  </div>
</div>
<br />
<br />
      </div>
      </div>
   </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br />
<br />
<br />
<br />
<br />
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br />
<br />
<br />
<br />
<br />
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br />
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br />
<br />
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br />
<br />
<br />
<br />

<br>
<br>
<br>
<br>
<br>
<br>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br>
<br>

<br />
<br />
<br />
<br />
<br />
<br />
<br /> <br />
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
 <div id="pager">
		      <p align=center>
            <a href="lp5.jsp" style="color: #00f;" >1</a>&nbsp
            <a href="2.jsp" style="color: #00f;">2</a>&nbsp
            <a href="3.jsp" style="color: #777;" >3</a>&nbsp
        
    			</p>  
          
        </div>
<br>
  <div class="footer_wrap">
  <div class="footer_area">
    <p class="footer_nav_text"><a href="#" class="footeractive">Главная</a> |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color: #fff; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 9pt; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
        © Кафедра прикладной математики и информатики, 2015</span></div>
    <br class="blank" />
  </div>
</div>
</body>
</html>
