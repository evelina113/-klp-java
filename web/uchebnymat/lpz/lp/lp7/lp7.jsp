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
        
        <h3 class="h2">Лабораторная работа №7</h3>
      
        <p><b>ОСНОВНЫЕ КОНЦЕПЦИИ ТЕХНОЛОГИИ JAVASERVER PAGES</b> </p>
    	<br />
		
		<p style="text-indent:30px">Для организации веб-взаимодействия клиента с сервером в платформе Java Enterprise Edition (Java EE) используются две базовые технологии – Java Servlet (сервлеты) и JavaServer Pages (JSP).</p>	
    	<p style="text-indent:30px">Сервлеты позволяют получать запросы от клиента, выполнять обработку информации и выводить результаты клиенту. В сервлете можно реализовать достаточно сложную логику, организовывать взаимодействие с базами данных и многое другое. </p>	
		<p style="text-indent:30px"><b>JavaServer Pages</b> – технология, позволяющая разработчикам динамически генерировать XML, HTML и другие веб-страницы.</p>
		<p style="text-indent:30px">Страницы JSP позволяет легко разделить веб-содержимое на статическую и динамическую части, допускающую многократное использование ранее определенных компонентов. Технология позволяет внедрять Java-код, а также EL (Expression Language) в статичное содержимое страниц. Разработчики JavaServer Pages могут использовать компоненты JavaBeans и создавать собственные библиотеки нестандартных тегов, которые инкапсулируют сложные динамические функциональные средства.</p>
		<p style="text-indent:30px">Спецификация JavaServer Pages наследует и расширяет спецификацию сервлетов. Как и сервлеты, компоненты JSP развертываются в веб-контейнере и управляются им. При первом обращении страница JSP компилируется в сервлет. Специальная часть веб-сервера, называемая JSP Engine (среда исполнения JSP) выполняет анализ и разбор страницы. Затем JSP Engine, на основании статической и динамической части страницы, генерирует код сервлета, компилирует его и разворачивает в контексте веб-сервера. Далее все запросы к странице JSP обрабатываются этим сервлетом.</p>
		<p style="text-indent:30px"> <b>Жизненный цикл страницы JSP состоит из следующих этапов:</b></p>
		<p style="text-indent:40px">- трансляция;</p>
		<p style="text-indent:40px">- компиляция;</p>	
		<p style="text-indent:40px">- загрузка и конкретизация класса;</p>
		<p style="text-indent:40px">- вызов метода <span style="font-family:Courier, monospace"><font color="#ff7300">jspInit();</font></span></p>
		<p style="text-indent:40px">- вызов метода <span style="font-family:Courier, monospace"><font color="#ff7300">_jspService();</font></span></p>
		<p style="text-indent:40px">- вызов метода <span style="font-family:Courier, monospace"><font color="#ff7300">jspDestroy().</font></span></p>
		<p style="text-indent:30px"> <b>Трансляция:</b> страница JSP прочитывается, синтаксически анализируется, проверяется. В случае отсутствия ошибки, создается java-файл, содержащий java-класс сервлета.</p>
		<p style="text-indent:30px"> <b>Компиляция:</b> java-файл, созданный во время фазы трансляции, компилируется в class-файл. На данном этапе код Java проверяется на корректность, в случае обнаружения ошибки появляется необходимое сообщение.</p>	
		<p style="text-indent:30px"> <b>Загрузка и конкретизация класса:</b> в случае успешной компиляции, класс сервлета загружается в память и конкретизируется. </p>
		<p style="text-indent:30px"> <b>Метод <span style="font-family:Courier, monospace"><font color="#ff7300">jspInit() </font></span></b> запрашивается только один раз за жизненный цикл и используется для того, чтобы задать все начальные условия, необходимые для данного сервлета.</p>
		<p style="text-indent:30px"> <b>Метод <span style="font-family:Courier, monospace"><font color="#ff7300"> _jspService()</font></span> </b> соответствует телу JSP-страницы, получает объекты запроса и ответа. В этом методе обрабатываются скриптлеты и выражения JSP.</p>
		<p style="text-indent:30px"> <b>Метод  <span style="font-family:Courier, monospace"><font color="#ff7300">jspDestroy() </font></span></b> запрашивается, когда экземпляр сервлета страницы JSP необходимо удалить. Любые операции по очистке, такие как освобождение ресурсов, могут производиться в рамках этого метода.</p>
		<p style="text-indent:30px">JSP страницы имеют расширение <span style="font-family:Courier, monospace"><font color="#ff7300"> *.jsp.</font></span> Обращение к JSP производится так же, как и к обычной странице HTML, например, <span style="font-family:Courier, monospace"> http://localhost:8080/HelloWorldWeb/helloWorld.jsp </span> </p>	
		<p style="text-indent:30px">Синтаксис JSP, определяющий правила записи, состоит из стандартных тегов HTML и тегов JSP. Набор стандартных тегов JSP довольно прост и включает в себя следующие категории:</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">directives</font> </span>(директивы);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">declarations</font></span> (объявления);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">scriptlets </font></span>(скриптлеты);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">expressions</font></span>(выражения);</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">comments </font></span>(комментарии).</p>	
		<p style="text-indent:30px"><b>Директивы</b> являются сообщениями для JSP-контейнера, обеспечивают глобальную информацию, касающуюся конкретных запросов, и предоставляют сведения, необходимые на стадии трансляции. </p>
		<p style="text-indent:30px">Синтаксис директивы JSP: </p>
		<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			<tr><td align="center"><span style="font-family:Courier, monospace"><.%@ директива имяАтрибута="значение" %></span><br />
		</table></p>
		<p style="text-indent:30px">Эквивалентный XML синтаксис: </p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			
		<tr><td align="center"><span style="font-family:Courier, monospace"><.jsp:directive.директива имяАтрибута="значение" /></span><br />
		</table></p>
		<p style="text-indent:30px">Существует три типа директив:</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">page</font></span> (страница) ;</p>
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">taglib </font></span>(библиотека тегов);</p>	
		<p style="text-indent:40px">- <span style="font-family:Courier, monospace"><font color="#ff7300">include</font></span> (включить).</p>
		<p style="text-indent:30px">Директива<b> page</b> определяет общие свойства страницы JSP, такие как кодировка, создание сеанса, работа с буфером, обработка ошибок и др. Порядок следования атрибутов в директиве page не имеет значения, но нарушение синтаксиса или наличие нераспознанных атрибутов приводит к ошибке трансляции. Возможные атрибуты директивы page приведены в следующей таблице:</p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			
		<tr><td><span style="font-family:Courier, monospace">language</span></td><td>Определяет язык, используемый в скриптлетах JSP, выражениях или любых включаемых файлах. По умолчанию принимается значение <span style="font-family:Courier, monospace">"java".</span></td>
		<tr><td><span style="font-family:Courier, monospace">extends</span></td><td>Задает суперкласс для генерируемого сервлета.</td>
		<tr><td><span style="font-family:Courier, monospace">import</span></td><td>Определяет импортируемые пакеты.</td>
		<tr><td><span style="font-family:Courier, monospace">session</span></td><td>Указывает на возможность работы со встроенным объектом <span style="font-family:Courier, monospace">session</span> (тип <span style="font-family:Courier, monospace">HttpSession</span>), который  привязан к существующей сессии, если таковая имеется. В противном случае создается новая сессия, к которой осуществляется привязка. </td> 
		<tr><td><span style="font-family:Courier, monospace">buffer</span></td><td>Задает размер буфера для <span style="font-family:Courier, monospace">JspWriter out</span></td>. 
		<tr><td><span style="font-family:Courier, monospace">autoFlush</span></td><td>Определяет, должен ли буфер освобождаться автоматически при переполнении или возникновении ошибки.</td>
		<tr><td><span style="font-family:Courier, monospace">info</span></td><td>Определяет строку информации о странице JSP.</td>
		<tr><td><span style="font-family:Courier, monospace">isThreadSafe</span></td><td>Определяет режим выполнения сервлета, когда множественные запросы обрабатываются одновременно с использованием одного экземпляра сервлета, в случае, что автор синхронизировал доступ к его переменным. При значении <span style="font-family:Courier, monospace">false </span>сервлет должен наследовать однопоточную модель<span style="font-family:Courier, monospace"> SingleThreadModel,</span> при которой последовательные или одновременные запросы обрабатываются отдельными экземплярами сервлета.</td>
		<tr><td><span style="font-family:Courier, monospace">errorPage</span></td><td>Определяет URL страницы, которая должна выводиться в случае возможных ситуаций, вызывающих исключения.</td>
		<tr><td><span style="font-family:Courier, monospace">isErrorPage</span></td><td>Сигнализирует о том, используется ли эта страница для обработки ошибок для других JSP страниц.</td>
		<tr><td><span style="font-family:Courier, monospace">contentType</span></td><td>Определяет кодировку для страницы JSP и ответа, а также MIME-тип ответа JSP. <br>Значение по умолчанию типа содержания –<span style="font-family:Courier, monospace"> text/html</span>, кодировки – <span style="font-family:Courier, monospace">ISO-8859-1</span>.</td> 
		<tr><td><span style="font-family:Courier, monospace">pageEncoding</span></td><td>Определяет кодировку символов страницы JSP. По умолчанию используется значение <span style="font-family:Courier, monospace">charset</span> из атрибута <span style="font-family:Courier, monospace">contentType</span>, если оно там определено. В противном случае устанавливается равным<span style="font-family:Courier, monospace"> ISO-8859-1</span>.</td>
		</table></p>
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
<br>
<br>
<br>
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
            <a href="lp7.jsp" style="color: #777;" >1</a>&nbsp
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
