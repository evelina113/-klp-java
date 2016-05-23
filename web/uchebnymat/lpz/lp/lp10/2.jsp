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
		<p><b>Цель работы:</b>создание веб-проекта с использованием JSP и СУБД MySQL.</p>
		<br>
		<p>1.	Создайте новый проект <b>DB.</b></p>
		<p>2.	Настройте свойства сервера базы данных MySQL:</p>
		<p style="text-indent:40px">а)	перейдите на вкладку <b>Службы;</b></p>
		<p style="text-indent:40px">б)	разверните узел <b>Базы данных;</b></p>
		<p style="text-indent:40px">в)	нажмите на узел </b>Сервер MySQL </b>правой кнопкой мыши (если его нет, необходимо зарегистрировать его при помощи пункта контекстного меню <b>Зарегистрировать сервер MySQL);</b></p>
		<p style="text-indent:40px">г)	выберите пункт контекстного меню <b>Свойства;</b></p>
		<p style="text-indent:40px">д)	в окне <b>Свойства сервера MySQL</b> введите пароль администратора, который был определен при установке сервера базы данных:</p>
		<br>
		<center><p><img src="../images/9.png" alt="" /></p><br /></center>
    	<br>	
		<p style="text-indent:40px">е)	перейдите на вкладку <b>Свойства администратора;</b></p>
		<p style="text-indent:40px">ж)	в поле <b>Путь к команде запуска</b> с помощью кнопки <b>Обзор</b> определите путь к файлу <b>mysqld.exe</b> папки <b>bin</b> каталога установки MySQL;</p>
		<p style="text-indent:40px">з)	в поле <b>Путь к команде остановки</b> определите путь к файлу <b>mysqladmin.exe</b> папки <b>bin</b> каталога установки MySQL, в поле <b>Аргументы</b> введите <b>-u rootstop</b> для получения прав пользователя <b>root</b> на остановку сервера. </p>
		<br>
		<center><p><img src="../images/10.png" alt="" /></p><br /></center>
    	<br>
		<p>3.	Запустите сервер базы данных MySQL на вашем компьютере.</p>
		<p>4.	Выберите пункт контекстного меню <b>Подключение</b> (перед попыткой подключения к серверу базы данных MySQL убедитесь в том, что он запущен на компьютере). В случае успешного подключения узел сервера MySQL в окне <b>Службы</b> выглядит следующим образом:</p>
		<br>
		<center><p><img src="../images/11.png" alt="" /></p><br /></center>
    	<br>
		<p align="justify">5.	Создайте базу данных <b>students</b> (в среде NetBeans IDE существует встроенный редактор SQL, который является распространенным способом взаимодействия с базами данных):</p>
		<p style="text-indent:40px">а)	щелкните на узле <b>ервер MySQL</b> правой кнопкой мыши;</p>
		<p style="text-indent:40px">б)	выберите пункт контекстного меню <b>Создать базу данных;</b></p>
		<p style="text-indent:40px">в)	введите название базы данных <b>students</b>;</p>
		<p style="text-indent:40px">г)	в узле <b>Сервер MySQL</b> будет выведена новая база данных.</p>
		
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
           <span class="busniess_area_text1"><a href="../lp9/lp9.jsp" class="read_more2">Лабораторная работа №9</a></span></p>
           <p class="green_righte">Операции с базами данных<br />
           <span class="busniess_area_text1"><a href="#" class="read_more2">Лабораторная работа №10</a></span></p>
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
<br /><br>
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
<br /><br>
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
<br /><br>
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
<br /><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br />

<br /> <br />
<br>
<br>
<br>

<br>
<br>
 <div id="pager">
		      <p align=center>
            <a href="lp10.jsp" style="color: #00f;" >1</a>&nbsp
            <a href="2.jsp" style="color: #777;">2</a>&nbsp
            <a href="3.jsp" style="color: #00f;" >3</a>&nbsp
            <a href="4.jsp" style="color: #00f;" >4</a>&nbsp
            <a href="5.jsp" style="color: #00f;" >5</a>&nbsp
            <a href="6.jsp" style="color: #00f;" >6</a>&nbsp
        
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
