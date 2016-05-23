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
        
<h2 class="h2">Операции с базами данных</h2>
        
        <h3 class="h2">Лабораторная работа №10</h3>
        <p style="text-indent:30px"> <b> Система управления базами данных (СУБД) </b> – совокупность языковых и программных средств, предназначенных для создания, ведения и совместного использования базы данных (БД) многими пользователями.</p>
    	<p style="text-indent:30px">Для работы с СУБД в Java была предложена и реализована технология JavaDataBaseConnectivity (JDBC).</p>
		<br>
		<p style="text-indent:30px"><b>JDBC</b>  – это платформенно-независимый промышленный стандарт взаимодействия Java-приложений с различными СУБД, реализованный в виде пакета java.sql, входящего в состав Java SE, и его расширения javax.sql, входящее в Java EE.</p>
		<p style="text-indent:30px">JDBC является интерфейсом, основанным на спецификациях SAG CLI (SQL AccessGroupCallLevelInterface – интерфейс уровня вызова группы доступа SQL). JDBC определяет, как приложение открывает соединение, ведет обмен информацией с базой данных, выполняет команды SQL и извлекает результаты. Многие концепции JDBC API заимствованы из других источников, в частности, из Microsoft ODBC.</p>
		<p style="text-indent:30px">СУБД MySQL совместима c JDBC и будет рассматриваться далее для  создания баз данных. Последняя версия CУБД может быть загружена с сайта http://dev.mysql.com, для ее корректной установки необходимо следовать инструкциям <b>(Приложение)</b>.</p>
		<br>
		<p style="text-indent:30px">Алгоритм подключения Java-программы к реляционной СУБД с помощью JDBC выглядит следующим образом. </p>
		<p>1. Импортирование пакета java.sql.*, который содержит классы для работы с базами данных.</p>
		<p>2. Загрузка и регистрация драйвера.  Например, для  СУБД MySQL:</p>
		<br>
		<span style="font-family:Courier, monospace"> 
                     <font color="#ff7300">
		<p> Class.forName("com.mysql.jdbc.Driver");</p></font></span>
		<br>
		<p style="text-indent:30px">После загрузки драйвера в память становится возможным соединение с системой управления базами данных.</p>
		<p>3. Установление соединения с сервером базы данных. Для получения соединения вызывается метод DriverManager.getConnection(), в качестве параметров которому передаются  JDBC URL базы данных, логин пользователя  и пароль доступа. Метод возвращает объект Connection.</p>
		<br>
		<span style="font-family:Courier, monospace"> 
                     <font color="#ff7300">
		<p>cn = DriverManager.getConnection(url, name, password);</p></font></span>
		<br>
		<p style="text-indent:30px">Стандартный синтаксис JDBC URL выглядит следующим образом:</p>
		<br>
		<span style="font-family:Courier, monospace"> 
                     <font color="#ff7300">
		<p>jdbc:subprotocol>:subname>,</p></font></span>
		<p>где subprotocol> (подпротокол) – имя драйвера или механизма соединения с БД, subname> – идентификатор базы данных. </p>
		<br>
		<p>4. Создание запроса (инструкции). </p>
		<p style="text-indent:30px">При создании объекта для передачи запросов применяется метод createStatement() класса Connection</p>
		<br>
		<span style="font-family:Courier, monospace"> 
                     <font color="#ff7300">
		<p>Statement st = cn.createStatement();</p></font></span>
		<br>
		<p style="text-indent:30px">С помощью объекта Statement осуществляется передача SQL-команд в базу данных. </p>
		<p>5. Выполнение запроса производится с использованием метода executeQuery(), результат которого помещается в объект ResultSet:</p>
		<br>
		<span style="font-family:Courier, monospace"> 
                     <font color="#ff7300">
		<p>ResultSetrs = st.executeQuery(query);</p></font></span>
		<br>
		<p>6. Чтение полученных результатов производится методами интерфейса ResultSet. Набор данных результата (resultset) является таблицей с заголовками колонок и соответствующих значений, возвращенных запросом.</p>
		<p>7. Закрытие соединения осуществляется с использованием метода close() класса Connection.</p>
		
		
		
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
            <a href="lp10.jsp" style="color: #777;" >1</a>&nbsp
            <a href="2.jsp" style="color: #00f;">2</a>&nbsp
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
