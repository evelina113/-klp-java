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
        
        <h3 class="h2">Лабораторная работа №9</h3>
      
        <p><b>СТАНДАРТНЫЕ ЭЛЕМЕНТЫ ACTION </b> </p>
    	<br />
		
		<p style="text-indent:30px">Стандартные элементы <span style="font-family:Courier, monospace">action</span> (действия) выглядят как обычные теги, название которых начинается с сочетания символов jsp: , что согласно терминологии XML означает принадлежность данному пространству имен.</p>	
    	<p style="text-indent:30px">Синтаксис элементов <span style="font-family:Courier, monospace">action:</span></p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.jsp:action  attributes /></span><br />
		</table></p>
		<p style="text-indent:30px">Основные стандартные элементы <span style="font-family:Courier, monospace">action</span>:</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:useBean </span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:setProperty</span></p>	
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:getProperty</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:include</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:forward</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:plugin</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:params</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:param</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">jsp:fallback</span></p>
		<br>
		<p style="text-indent:30px">Рассмотрим встроенные объекты подробнее.</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:useBean</b></span></p>
		<p style="text-indent:30px">Элемент позволяет использовать экземпляр компонента JavaBeans. При его выполнении сервер приложений обеспечивает поиск экземпляра данного java-класса, пользуясь значениями, определенными в атрибутах. С помощью действия<span style="font-family:Courier, monospace"> jsp:useBean </span>можно: </p>
		<p style="text-indent:40px">- найти существующий компонент JavaBeans;</p>
		<p style="text-indent:40px">- создать новый экземпляр класса JavaBeans;</p>
		<p style="text-indent:40px">- задать локальное имя объекту, определенному в другой странице JSP или сервлете.</p>
		<p style="text-indent:30px">Атрибуты тега <span style="font-family:Courier, monospace">jsp:useBean:</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">id - </span>идентификатор, применяемый для ссылки на компонент JavaBeans из страницы JSP;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">scope - </span>атрибут, определяющий область видимости ссылки на экземпляр объекта JavaBeans (значения: <span style="font-family:Courier, monospace">page, request, session, application</span>);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">class - </span>параметр, определяющий полное имя класса реализации объекта;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">beanName - </span>наименование класса реализации объекта. Данный параметр используется, если компонент JavaBeans еще не существует;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">type - </span>тип специфицированного объекта. С помощью этого атрибута можно избежать автоматической инициализации компонента JavaBeans, если он еще не существует в данной области видимости.</p>
		<p style="text-indent:30px">Если имя класса (<span style="font-family:Courier, monospace">class</span>) и наименование объекта (<span style="font-family:Courier, monospace">beanName</span>) не определены, объект должен быть представлен в заданной области видимости. Значение идентификатора id должно быть уникально в текущем модуле трансляции (JSP-странице).</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:setProperty </b></span></p>
		
		<p style="text-indent:30px">Элемент позволяет устанавливать значения полей - свойств компонента JavaBeans, который должен быть предварительно создан действием <span style="font-family:Courier, monospace">jsp:useBean</span>.</p>
		<p style="text-indent:30px">Атрибуты тега<span style="font-family:Courier, monospace"> jsp:setProperty:</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">name - </span>параметр, идентифицирующий экземпляр объекта JavaBeans, свойство которого устанавливается текущим тегом;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">property - </span>имя свойства, которому необходимо определить значение;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">param - </span>имя параметра запроса, который передается свойству компонента JavaBeans;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">value - </span>значение устанавливаемого свойства.</p>
		<p style="text-indent:30px">Значения свойств компонента JavaBeans устанавливается с учетом соответствия типов значения и свойства.</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:getProperty</b></span></p>
		<p style="text-indent:30px">Элемент делает свойства компонента JavaBeans видимыми, позволяет получить значения полей указанного объекта, преобразует его в строку и отправляет в выходной поток. </p>
		<p style="text-indent:30px">Атрибуты тега <span style="font-family:Courier, monospace">jsp:getProperty:</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">name - </span>параметр, идентифицирующий экземпляр объекта JavaBeans;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">property - </span>имя свойства, значение которого необходимо получить.</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:include</b></span></p>
		<p style="text-indent:30px">Элемент позволяет включать статические и динамические ресурсы в контекст текущей страницы JSP. Ресурс определяется по его относительному URL-адресу, который интегрируется в контекст веб-сервера. В отличие от директивы <span style="font-family:Courier, monospace">include</span>, которая включает файл на этапе трансляции страницы JSP, действие<span style="font-family:Courier, monospace"> jsp:include </span>производит вставку файла или ресурса при запросе страницы.</p>
		<p style="text-indent:30px">Атрибуты тега <span style="font-family:Courier, monospace">jsp:include:</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">page - </span>параметр, идентифицирующий URL-адрес ресурса (определяется относительно текущей страницы JSP);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">flush - </span>атрибут, управляющий переполнением буфера (является необязательным). Если этот атрибут имеет значение <span style="font-family:Courier, monospace">true</span> и выходной поток страницы JSP буферизуется, то буфер при переполнении освобождается, в противном случае – не освобождается. </p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:forward</b></span></p>
		<p style="text-indent:30px">Элемент позволяет перенаправить запрос другой странице JSP, статическому ресурсу или классу Java-сервлета, находящемуся в том же контексте, что и текущая страница JSP. Атрибуты тега <span style="font-family:Courier, monospace">jsp:forward </span>аналогичны атрибутам<span style="font-family:Courier, monospace"> jsp:include</span>.</p>
		<p style="text-indent:30px">Действие <span style="font-family:Courier, monospace">jsp:forward</span> может включать элементы<span style="font-family:Courier, monospace"> jsp:param</span>, которые предоставляют значения для некоторых параметров запроса, используемые для перенаправления.</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:plugin</b></span></p>
		<p style="text-indent:30px">Элемент заменяет соответствующие клиентскому браузеру конструкции OBJECT или EMBED, которые приводят к выполнению компонентов Java-модуля (JavaBeans или апплета).</p>
		<p style="text-indent:30px">Атрибуты тега <span style="font-family:Courier, monospace">jsp:plugin:</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">type - </span>тип объекта (компонент JavaBeans или апплет);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">code - </span>код (class-файл) объекта;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">codebase - </span>расположение объекта;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">height</span> и <span style="font-family:Courier, monospace">width  - </span>размер объекта по высоте и ширине;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">align - </span>выравнивание объекта;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">archive - </span>список архивов;</p>
		<p style="text-indent:40px">- другие атрибуты в соответствии со спецификацией HTML.</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:param</b></span></p>
		<p style="text-indent:30px">Элемент используется для предоставления информации ключ/значение в элементах<span style="font-family:Courier, monospace"> jsp:include, jsp:plugin, jsp:params и jsp:forward.</span></p>
		<p style="text-indent:30px">Атрибуты тега <span style="font-family:Courier, monospace">jsp:param:</span></p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">name - </span>наименование параметра;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace">value - </span>значение параметра.</p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:params</b></span></p>
		<p style="text-indent:30px">Элемент позволяет группировать параметры внутри стандартного тега <span style="font-family:Courier, monospace">jsp:plugin. </span> </p>
		<br>
		<p style="text-indent:30px"><span style="font-family:Courier, monospace"><b>jsp:fallback</b></span></p>
		<p style="text-indent:30px">Элемент указывает содержимое, которое будет использоваться браузером клиента, если подключаемый модуль элемента<span style="font-family:Courier, monospace"> jsp:plugin</span> не сможет запуститься. Действие <span style="font-family:Courier, monospace">jsp:fallback</span>, как и <span style="font-family:Courier, monospace">jsp:params</span>, должно быть определено внутри тега <span style="font-family:Courier, monospace">jsp:plugin</span> и вне него не применяется.</p>
		
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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
            <a href="lp9.jsp" style="color: #777;" >1</a>&nbsp
            <a href="2.jsp" style="color: #00f;">2</a>&nbsp
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
