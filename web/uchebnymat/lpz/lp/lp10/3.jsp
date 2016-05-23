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
        

		<p>6.	Создайте таблицу <b>phones:</b></p>
		<p style="text-indent:40px">а)	в проводнике баз данных разверните узел подключения <b>students;</b></p>
		<br>
		<center><p><img src="../images/12.png" alt="" /></p><br /></center>
    	<br>
		<p style="text-indent:40px">б)	нажмите правой кнопкой мыши на пункт <b>Таблицы;</b></p>
		<p style="text-indent:40px">в)	выберите пункт контекстного меню <b>Выполнить команду</b>, в редакторе SQL в главном окне отобразится пустой холст;</p>
		<p style="text-indent:40px">г)	введите следующий запрос в редакторе SQL:</p>
		<br>
		<span style="font-family:Courier, monospace"> 
                     <font color="#ff7300">
		<p>CREATE TABLE phones</p>
		<p>(</p>
		<p>id INT (3) NOT NULL AUTO_INCREMENT,</p>
		<p>name VARCHAR (50) NOT NULL,</p>
		<p>number BIGINT (10) NOT NULL,</p>
		<p>PRIMARY KEY (id)</p>
		<p>)</p></font></span>
		<br>
		<p style="text-indent:40px">д)	таблица <b>phones</b> содержит 3 поля: ключевое <b>(id)</b>, имя <b>(name)</b>, номер телефона <b>(number)</b>;</p>
		<p style="text-indent:40px">е)	для выполнения запроса нажмите на кнопку <b>Выполнить SQL</b> верхней части окна или при помощи комбинации клавиш Ctrl+Shift+E;</p>
		<p style="text-indent:40px">ж)	после выполнения запроса в окне <b>Вывод</b> будет создана обратная связь механизма SQL, указывающая на успешность выполнения или ошибку;</p>
		<p style="text-indent:40px">з)	для проверки изменений щелкните правой кнопкой мыши на узел <b>Таблицы</b> в проводнике баз данных и выберите команду <b>Обновить.</b></p>
		<br>
		<center><p><img src="../images/13.png" alt="" /></p><br /></center>
    	<br>
		<p>7.	Подключите <b>JDBC-драйвер</b> для подсоединения к <b>MySQL:</b></p>
		<p style="text-indent:40px">а)	нажмите на название проекта в окне <b>Проекты</b> правой кнопкой мыши;</p>
		<p style="text-indent:40px">б)	выберите пункт контекстного меню <b>Свойства</b>;</p>
		<p style="text-indent:40px">в)	в списке <b>Категории</b> выберите <b>Библиотеки</b>;</p>
		<p style="text-indent:40px">г)	нажмите на кнопку <b>Добавить библиотеку</b>;</p>
		<p style="text-indent:40px">д)	в списке <b>Доступные библиотеки</b> выберите <b>Драйвер JDBC MySQL</b>, добавьте его.</p>
		<br>
		<center><p><img src="../images/14.png" alt="" /></p><br /></center>
    	<br>
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
<br><br>
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
<br><br>
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
<br><br>
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
<br><br>
<br><br>
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
<br /> <br />
<br>
<br>
<br>

<br>
<br>
 <div id="pager">
		      <p align=center>
            <a href="lp10.jsp" style="color: #00f;" >1</a>&nbsp
            <a href="2.jsp" style="color: #00f;">2</a>&nbsp
            <a href="3.jsp" style="color: #777;" >3</a>&nbsp
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
