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
        

		<h3 class="h2">Лабораторная работа</h3>
		<p style="text-indent:30px"><b>Цель работы:</b>знакомство со стандартными элементами action, создание страницы JSP для описания процессов их реализации.</p>
		<br>
		<p>1.	Создайте новый проект с названием <b>Actions.</b></p>
		<p>2.	Создайте страницу <b>time.jsp.</b></p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@ page language="java" contentType="text/html"</p>
		<p style="text-indent:40px">pageEncoding="UTF-8"%></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.title> Использование элемента jsp:useBean </.title></p>
		<p style="text-indent:20px"><./head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.jsp:useBean id="clock" class="java.util.Date" /></p>
		<p style="text-indent:30px"><.h3> Текущее время: <./h3></p>
		<p style="text-indent:30px"><.b> Часы: <./b></p>
		<p style="text-indent:30px"><.jsp:getProperty name="clock" property="hours"/> </p>
		<p style="text-indent:30px"><.br></p>
		<p style="text-indent:30px"><.b> Минуты: <./b></p>
		<p style="text-indent:30px"><.jsp:getProperty name="clock" property="minutes"/> </p>
		<p style="text-indent:30px"><.br></p>
		<p style="text-indent:30px"><.b> Секунды: <./b></p>
		<p style="text-indent:30px"><.jsp:getProperty name="clock" property="seconds"/> </p>
		<p style="text-indent:20px"><./body></p>
		<p><./html></p></font>
		</span>
		<br>
		<p>3.	Запустите страницу <b>time.jsp</b> на выполнение:</b></p>
		<br />
			<center><p> <img src="../images/32.png" alt="" /></p><br/></center>
    	<br />
		<p>4.	Создайте страницы <b>book1.jsp</b> и <b>book2.jsp</b> с информацией о книгах:</p>
		<p style="text-indent:40px">а)	сформируйте программный код страницы <b>book1.jsp:</b></p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.title> Автор Перри Б. </.title></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type" content="text/html;</p>
		<p style="text-indent:40px">charset=windows-1251"></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type" content="text/html;</p>
		<p style="text-indent:20px"><./head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.b> Перри Б. <./b> Java сервлеты и JSP: сборник </p>
		<p style="text-indent:30px">рецептов. Изд.  3-е / Пер. с англ. – М.: КУДИЦ-ПРЕСС, </p>
		<p style="text-indent:30px">2009. – 768 с.</p>
		<p style="text-indent:20px"><./body></p>
		<p><./html></p></font>
		</span>
		<br>
		<p style="text-indent:40px">б)	сформируйте программный код блока <.body>…<./body> страницы <b>book2.jsp</b>:</p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.b> Falkner J., Jones K. </b> Servlets and JavaServer</p>
		<p style="text-indent:30px">Pages: The J2EE Technology Web Tier. - Addison-Wesley, </p>
		<p style="text-indent:30px">2003. - 784 p.</p>
		<p style="text-indent:20px"><./body></p></font>
		</span>
		<br>
		<p>5.	Создайте страницу <b>books.jsp</b>:</p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@ page language="java" contentType="text/html"</p>
		<p style="text-indent:40px">pageEncoding="UTF-8"%></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.title> Использование элементов action <./title></p>
		<p style="text-indent:20px"><./head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.h3> Список литературы <./h3></p>
		<p style="text-indent:30px"><.ol></p>
		<p style="text-indent:50px"><.li> <.jsp:include page="book1.jsp"/></p>
		<p style="text-indent:50px"><.li> <.jsp:include page="book2.jsp"/></p>
		<p style="text-indent:30px"><./ol></p>
		<p style="text-indent:30px"><.jsp:declaration> int num = 2; <./jsp:declaration>    </p>
		<p style="text-indent:30px"><.jsp:text> Всего найдено источников: <./jsp:text></p>
		<p style="text-indent:30px"><.jsp:expression> num <./jsp:expression></p>
		<p style="text-indent:20px"><./body></p>
		<p><./html></p></font>
		</span>
		<br>
		<p>6.	Запустите страницу <b>books.jsp</b> на выполнение и просмотрите результат работы в браузере:</p>
		<br />
			<center><p> <img src="../images/33.png" alt="" /></p><br/></center>
    		<br />
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
           <span class="busniess_area_text1"><a href="../lp7/lp7.jsp" class="read_more2">Лабораторная работа №7</a></span>
           <span class="busniess_area_text1"><a href="../lp8/lp8.jsp" class="read_more2">Лабораторная работа №8</a></span>
           <span class="busniess_area_text1"><a href="№" class="read_more2">Лабораторная работа №9</a></span></p>
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
            <a href="lp9.jsp" style="color: #00f;" >1</a>&nbsp
            <a href="2.jsp" style="color: #777;">2</a>&nbsp
            <a href="3.jsp" style="color: #00f;" >3</a>&nbsp
        
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
