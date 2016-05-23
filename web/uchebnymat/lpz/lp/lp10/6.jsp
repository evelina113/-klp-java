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
        
		<p>8.	Выберите тип базы данных <b>Multifunctional Database</b>, который является наиболее универсальным и поддерживает как обычные таблицы (нескольких форматов), так и таблицы, в которых есть механизм транзакций. </p>
		<br />
			<center><p><img src="../images/21.png" alt="" /></p><br /></center>
    		<br />
		<p>9.	Для транзакционных таблиц формата <b>InnoDB</b> необходимо указать дополнительно логический диск и путь до каталога, где сервер будет хранить временные файлы транзакций. </p>
		<p>10.	Произведите настройку количества одновременных подключений. Выберите вариант <b>Decision Support</b>, который характеризуется небольшим количеством одновременных подключений, но в то же время запросы каждого клиента могут быть более сложными, включающими в себя группирующие функции, выборки одновременно с нескольких таблиц и сложной сортировкой. </p>
		<br />
		<p style="text-indent:30px">Предел подключений – 20.</p>
		<br />
		<p style="text-indent:30px"><b>Online Transaction Processing</b> характеризуется меньшей сложностью запросов, но более жесткими требованиями к производительности и количеству одновременно работающих пользователей. </p>
		<p style="text-indent:30px"><b>Manual Setting</b> позволяет самостоятельно установить число подключений, исходя из собственного анализа нагрузки при реальной работе.</p>
		<br />
		<p>11.	Выберите тип подключения к серверу по сети через <b> TCP/IP</b> , для этого MySQL использует по умолчанию порт <b> 3306</b>  (при необходимости можно его изменить).</p>
		<br />
			<center><p><img src="../images/22.png" alt="" /></p><br /></center>
    		<br />
		<p>12.	В списке установок кодировки выберите <b>Manual Selected Default Character Set/ Collation</b>, определите кодировку <b>UTF-8</b> для хранения текстовых данных. </p>
		<p>13.	Установите опции Windows. </p>
		<br />
		<p style="text-indent:30px"><b>Install As Windows Service</b> позволяет установить сервис с именем, которое следует выбрать в раскрывающемся списке <b>Service Name</b>. Это дает возможность избежать конфликтов при запуске, если в системе уже имеются установленные сервера MySQL ранних версий.</p>
		<p style="text-indent:30px"><b>Include Bin Directory in Windows PATH</b> позволяет присвоить путь к каталогу с сервером системной переменной PATH. </p>
		<br />
			<center><p><img src="../images/23.png" alt="" /></p><br /></center>
    		<br />
		<p>14.	В окне установки опций защиты выберите <b>Modify Security Settings</b>, при котором создается пользователь root. Введите пароль и его подтверждение, нажмите на кнопку <b>Next</b>.</p>
		<br />
			<center><p><img src="../images/24.png" alt="" /></p><br /></center>
    		<br />
		<p>15.	В следующем окне нажмите на кнопку <b>Execute</b> для настройки сервера согласно данным указаниям. </p>
		<p>16.	Нажмите на кнопку <b>Finish</b> для завершения установки, настройки и конфигурирования MySQL. </p>
		
		
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
            <a href="3.jsp" style="color: #00f;" >3</a>&nbsp
            <a href="4.jsp" style="color: #00f;" >4</a>&nbsp
            <a href="5.jsp" style="color: #00f;" >5</a>&nbsp
            <a href="6.jsp" style="color: #777;" >6</a>&nbsp
        
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
