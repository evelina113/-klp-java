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
        
<h2 class="h2">Java Servlets</h2>
        
        <h3 class="h2">Лабораторная работа №6</h3>
      
        <p><b>Цель работы:</b> описание процесса создания простого java-сервлета в инструментальной среде разработки NetBeans IDE.</p>
    	<br />
		<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
	        <tr><td><b>Сервлет</b> – это java-приложение, выполняемое на стороне сервера и взаимодействующее с клиентами посредством принципа запрос-ответ.<br><br />
		<b>Сервлет</b> – это компонент приложений Java Enterprise Edition, выполняющийся на стороне сервера, способный обрабатывать клиентские запросы и динамически генерировать ответы на них. Наибольшее распространение получили сервлеты, обрабатывающие клиентские запросы по протоколу HTTP.<br />
		<br />Чтобы создавать и внедрять сервлеты, Вам понадобится web-сервер с их поддержкой и инструментальное средство разработки на Java, например, NetBeans IDE.</td> </tr>
		</table>
		<br />
		<p>1.	Создайте новый проект в среде разработки NetBeans IDE: </p>	
    		<p style="text-indent:40px">а)	откройте среду разработки <b>NetBeans IDE;</b></p>
			<p style="text-indent:40px">б)	выполните команду <b>File &#8594; New Project;</b></p>
			<p style="text-indent:40px">в)	выберите в списке <b>Categories</b> пункт <b>Java Web</b>;</p>
			<p style="text-indent:40px">г)	выберите в списке <b>Projects</b> пункт <b>Web Application</b>;</p>
			<p style="text-indent:40px">д)	нажмите на кнопку <b>Next</b> и перейдите к следующему шагу;</p>
			<br />
			<center><p> <img src="../images/6.png" alt="" /></p><br/></center>
    		<br />
			<p style="text-indent:40px">е)	введите имя проекта (например, FirstProject) в строку <b>Project Name;</b></p>
			<p style="text-indent:40px">ж)	при помощи кнопки <b>Browse</b> определите место для сохранения проекта;</p>
			<p style="text-indent:40px">з)	нажмите на кнопку <b>Next</b> и перейдите к следующему шагу;</p>
			<p style="text-indent:40px" align="justify">и)	выберите из списка <b>Servers</b> необходимое название сервера приложений (например, GlassFish v3) и перейдите к следующему шагу; </p>
			<p style="text-indent:40px">к)	нажмите кнопку <b>Finish</b> для завершения создания проекта.</p>
			<br />
			<p>2.	Создайте новый сервлет: </p>
    		<p style="text-indent:40px">а)	в создавшемся проекте выполните команду <b>File &#8594; New File;</b></p>
    		<p style="text-indent:40px">б)	выберите в списке <b>Categories</b> пункт <b>Web</b>;</p>
    		<p style="text-indent:40px">в)	выберите в списке <b>File Types</b> пункт <b>Servlet</b> и перейдите к следующему шагу;</p>
			<br />
			<center><p><img src="../images/7.png" alt="" /></p><br /></center>
    		<br />
			<p style="text-indent:40px">г)	введите имя сервлета (например, FirstServlet) в строку <b>Class Name;</b></p>
			<p style="text-indent:40px">д)	введите имя пакета, в котором будут храниться class-файлы сервлета;</p>
			<p style="text-indent:40px">е)	нажмите кнопку <b>Finish</b> для завершения создания сервлета.</p>
			<br />
			<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			
		<tr><td>Сформируйте код сервлета и рассмотрите этапы его выполнения: NetBeans IDE автоматически создал код сервлета и ряд вспомогательных файлов. Класс, реализующий работу сервлета, называется FirstServlet и наследует класс HttpServlet:<br />
		<br /> public class <b>FirstServlet</b> extends <b>HttpServlet {…}</b>		</tr>
		</table>
		<br />
		<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			
			<tr><td>Любой класс сервлета, используемый для генерации HTML-страницы, должен реализовывать метод doGet() или doPost(). Класс HttpServlet предоставляет для каждого типа HTTP-запроса свой do-метод.<br />
		<br /> В данном случае были автоматически созданы следующие методы:<br />
		<br />
		<p>protected void <b>processRequest</b>(HttpServletRequest </p>
		<p>request, HttpServletResponse response) {…}</p>
		<p>protected void <b>doGet</b>(HttpServletRequest request, HttpServletResponse response) {…}</p>
		<p>protected void <b>doPost</b>(HttpServletRequest request, HttpServletResponse response) {…}</p>
		</table>
		<br />
		<p style="text-indent:40px">ж)	в создавшемся сервлете удалите все блоки с комментариями, на данном занятии они нам не понадобятся;</p>
		<p style="text-indent:40px">з)	впишите в тело метода <b>processRequest (HttpServletRequest request, HttpServletResponse response)</b> следующий код:</p>	
		<br />
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p>response.setContentType("text/html;charset=UTF-8");</p>	
		<p>PrintWriter out = response.getWriter();</p>	
		<p>out.println("Тестирование сервлета.");</p>
		<p>out.println("Текущее время: "+ new java.util.Date());</p></font></span>	
		<br />
		<p style="text-indent:40px">и)	запустите сервлет на выполнение командой Shift+F6;</p>	
		<p style="text-indent:40px">к)	просмотрите результат выполнения сервлета в браузере:</p>	
		<br />
		<center><p><img src="../images/8.png" alt="" /></p><br /></center>
		
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
           <span class="busniess_area_text1"><a href="#" class="read_more2">Лабораторная работа №6</a></span></p>
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

<br>
<br>
<br>
<br>
<br>
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
