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
        
<h2 class="h2">Объектно-ориентированные принципы Java</h2>
        
        <h3 class="h2">Лабораторная работа №3</h3>
      
        <p><b>Цель работы:</b> формирование практических навыков по созданию и использованию пакетов и классов, использующих механизм наследования.</p>
    	<br />
		<p><b>Задание:</b></p>	
		<p><i>Лабораторная работа №3 является продолжением лабораторной работы №2.</i></p>
    		<br />
			<p>1.	Создать два пакета и расположить классы из лабораторной работы №2 следующим образом:</p><br />
			<center><p><img src="../images/3.png" alt="" /></p><br /></center>
			<p>2.	Дополнить иерархию классов следующими классами:</p><br />
			<center><p><img src="../images/4.png" alt="" /></p><br /></center>
    		<p style="text-indent:40px">•	Класс <b><i>AbstractSensorAction</b></i> – абстрактный класс-основа для действий, проверяющих показания различных сенсоров. Класс содержит абстрактный метод <b><i> isRegistered</b></i> , который возвращает значение «истина» тогда и только тогда, когда сенсор зарегистрировал необходимое значение.  Данный метод должен быть помечен модификатором <b><i> protected</b></i> . Метод <b><i> run</b></i>  в этом классе должен быть помечен модификатором <b><i> final</b></i>  и содержать следующую реализацию: опрашивать метод <b><i> isRegistered</b></i>  до тех пор, пока он не вернет значение «истина».</p>
    		<p style="text-indent:40px">•	Классы <b><i>ButtonPressedAction</b></i> и <b><i>BumperReleasedAction</b></i> – наследники класса <b><i>AbstractSensorAction</b></i>. Эти классы должны содержать следующие реализации метода <b><i>isRegistered</b></i>: класс <b><i>ButtonPressedAction</b></i> возвращает значение «истина», когда нажата кнопка на самом роботе; класс <b><i>BumperReleasedAction</b></i> возвращает значение «истина», когда сенсор-кнопка не регистрирует нажатие.</p>
    		<p style="text-indent:40px">•	Класс <b><i>DisplayWarningAction</b></i> должен выводить на экран некоторое сообщение и подавать короткий звуковой сигнал.</p>
    		<br />
			<p style="text-indent:30px">Все реализации интерфейса <b><i>Action</b></i> должны находиться в пакете <b>ru.novsu.java.labs.actions</b>.</p>
			<br />
			<p>3.	Реализовать следующее поведение робота:</p>
			<p style="text-indent:40px">a)	робот едет прямо. У основания робота закреплен сенсор-кнопка таким образом, что он нажат, пока робот находится на ровной поверхности;</p>
			<p style="text-indent:40px">b)	робот останавливается, как только сенсор-кнопка перестает регистрировать нажатие;</p>
			<p style="text-indent:40px">c)	робот выводит сообщение на экран и ждет, пока его вернут на ровную поверхность, что подтверждается нажатием кнопка на самом роботе;</p>
			<p style="text-indent:40px">d)	переход к пункту a.</p>
			<br />
			<p><b><font size="-1">Источник:</b> <font color="#0000ff">novsu.ru›file/937832 </font></font></p>
			
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
           <span class="busniess_area_text1"><a href="#" class="read_more2">Лабораторная работа №3</a></span></p>
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
<br />
<br />
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
