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
        
<h2 class="h2">JavaServer Pages</h2>
        
        <h3 class="h2">Лабораторная работа №8</h3>
      
        <p><b>ВСТРОЕННЫЕ ОБЪЕКТЫ JSP </b> </p>
    	<br />
		
		<p style="text-indent:30px">Для облегчения работы и выполнения основных операций в спецификации JavaServer Pages определены встроенные объекты JSP, иногда называемые неявными объектами.</p>	
    	<p style="text-indent:30px"><b>Встроенные (неявные) объекты JSP (implicit objects) </b> – это объекты, автоматически доступные как часть стандарта JSP без их специального объявления или импорта:</p>
		
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">request -</span>запрос клиента (ServletRequest или  HttpServletRequest);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">response -</span>ответ сервера (ServletResponse или HttpServletResponse);</p>	
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">config -</span>конфигурация (ServletConfig);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">application -</span>приложение (ServletContext);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">session -</span>сеанс (HttpSession);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">pageContext -</span>контекст страницы (PageContext);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">page -</span>объект страницы (Object);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">out -</span>выходной поток (JspWriter);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">exception -</span>исключение (Throwable).</p>
		<p style="text-indent:30px">Использование встроенных объектов облегчает обработку часто встречающихся операций. Отпадает необходимость создавать новые объекты для работы с клиентскими запросами; импортировать пакеты, содержащие классы, от которых они порождены. Встроенные объекты можно использовать в коде скриптлета без каких-либо ограничений. </p>
		<p style="text-indent:30px">Рассмотрим встроенные объекты подробнее.</p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td><span style="font-family:Courier, monospace">request</span></td><td>Объект, содержащий запрос клиента.<br>
<i>Тип объекта:</i> <span style="font-family:Courier, monospace">javax.servlet.ServletRequest или javax.servlet.http.HttpServletRequest</span></br>
<i>Область видимости:</i> запрос. <br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getMethod(), getAttribute(), getServletPath(), getParameter()</span>
</td>
		<tr><td><span style="font-family:Courier, monospace">response</span></td><td>Объект, связанный с ответом на запрос клиента.<br>
<i>Тип объекта:</i><span style="font-family:Courier, monospace"> javax.servlet.ServletResponse</span> или <span style="font-family:Courier, monospace">javax.servlet.http.HttpServletResponse</span><br>
<i>Область видимости:</i> страница.<br> 
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getHeader(), setHeader(), addCookie(), setCharacterEncoding()</span>
</td>
		<tr><td><span style="font-family:Courier, monospace">config</span></td><td>Объект, связанный с конфигурацией сервлета.<br>
<i>Тип объекта:</i> <span style="font-family:Courier, monospace">javax.servlet.ServletConfig</span><br>
<i>Область видимости:</i> страница. <br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getInitParameter(), getServletName(),  getServletContext()</span>
</td>
		<tr><td><span style="font-family:Courier, monospace">application</span></td><td>Объект, связанный с конфигурацией сервлета, соответствующего данной JSP странице.<br>
<i>Тип объекта:</i><span style="font-family:Courier, monospace"> javax.servlet.ServletContext</span><br>
<i>Область видимости:</i> приложение. <br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getMimeType(), getRealPath(), getServletContextName()</span><br>
</td> 
		<tr><td><span style="font-family:Courier, monospace">session</span></td><td>Объект сессии, создаваемый контейнером для идентификации клиента, а также хранения персональных данных.<br>
<i>Тип объекта:</i> <span style="font-family:Courier, monospace">javax.servlet.http.HttpSession</span><br>
<i>Область видимости:</i> страница.<br> 
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getId(), getValue(), getValueNames(), getCreationTime()<span><br>
</td>. 
		<tr><td><span style="font-family:Courier, monospace">pageContext</span></td><td>Объект, определяющий контекст JSP страницы.<br>
<i>Тип объекта:</i> <span style="font-family:Courier, monospace">javax.servlet.jsp.PageContext</span><br>
<i>Область видимости:</i> страница.<br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getSession(), getPage(), getAttribute(), getServletContext() </span><br>
</td>
		<tr><td><span style="font-family:Courier, monospace">page</span></td><td>Объект, связанный с обработкой данной страницы. Является синонимом для <span style="font-family:Courier, monospace">this</span>, мало применяется при работе с Java.<br>
<i>Тип объекта:</i><span style="font-family:Courier, monospace"> java.lang.Object</span><br>
<i>Область видимости:</i> страница. <br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getClass(), toString()</span><br>
</td>
		<tr><td><span style="font-family:Courier, monospace">out</span></td><td>Объект, содержащий выходной поток сервлета. Информация, посылаемая в этот поток, будет передана клиенту.<br>
<i>Тип объекта:</i><span style="font-family:Courier, monospace"> javax.servlet.jsp.JspWriter</span><br>
<i>Область видимости:</i> страница.<br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> clear(), clearBuffer() , isAutoFlush(), close(), print()</span><br>
</td>
		<tr><td><span style="font-family:Courier, monospace">exception</span></td><td>Объект, приводящий к вызову страницы информации об ошибках (исключениях).<br>
<i>Тип объекта:</i><span style="font-family:Courier, monospace"> java.lang.Throwable</span><br>
<i>Область видимости:</i> страница. <br>
<i>Основные методы:</i><span style="font-family:Courier, monospace"> getMessage(), toString(), printStackTrace(), getClass()</span><br>
</td>
		</table></p>
		<br>
		
		<h3 class="h2">Лабораторная работа</h3>
		<p><b>Цель работы:</b>знакомство со встроенными объектами JSP, описание работы их методов.</p>
		<br>
		<p>1.	Создайте новый проект с названием <b>ObjectsJSP.</b></p>
		<p>2.	Ознакомьтесь с работой встроенных объектов JSP:</p>
		<p  style="text-indent:40px">а)	откройте автоматически созданную страницу<b> index.jsp;</b></p>
		<p  style="text-indent:40px">б)	сформируйте ее программный код:</p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@ page contentType="text/html" pageEncoding="UTF-8"%></p>
		<p><.%@ page import="java.util.*" %></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type"</p>
		<p style="text-indent:40px">content="text/html; charset=UTF-8"></p>
		<p style="text-indent:30px"><.title> Встроенные объекты JSP </.title></p>
		<p style="text-indent:20px"><./head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.h4> Работа с сессиями (объект session) <./h4></p>
		<p style="text-indent:30px">Идентификатор сессии: <.%= session.getId()%><.br></p>
		<p style="text-indent:30px">Время простоя сеанса: 30 сек.</p>
		<p style="text-indent:30px"><.% session.setMaxInactiveInterval(30);%> </p>
		<p style="text-indent:30px"><.h4> Работа с запросами клиента (объект request)<./h4></p>
		<p style="text-indent:30px">Протокол: <.%= request.getProtocol()%> <br></p>
		<p style="text-indent:30px">Путь: <.%= request.getServletPath()%> <br></p>
		<p style="text-indent:30px">URL: <.%= request.getRequestURL()%> </p>
		<p style="text-indent:30px"><.h4> Работа с приложениями (объект application)<./h4></p>
		<p style="text-indent:30px">Номер версии и модификации Servlet API:</p>
		<p style="text-indent:30px"><.%= application.getMajorVersion() + "." </p>
		<p style="text-indent:40px">+ application.getMinorVersion()%> <br></p>
		<p style="text-indent:30px">Версия и имя сервера:</p>
		<p style="text-indent:30px"><.%= application.getServerInfo()%> </p>
		<p style="text-indent:20px"><./body></p>
		<p><./html></p></font>
		</span>
		<br>
		<p  style="text-indent:40px">в)	запустите проект на выполнение;</p>
		<p  style="text-indent:40px">г)	просмотрите результат работы в браузере:</p>
		<br />
			<center><p> <img src="../images/31.png" alt="" /></p><br/></center>
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
           <span class="busniess_area_text1"><a href="№" class="read_more2">Лабораторная работа №8</a></span>
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
