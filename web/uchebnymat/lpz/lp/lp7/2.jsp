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
        
<p style="text-indent:30px">Директива <b>taglib</b> позволяет использовать на страницах JSP дополнительные теги, созданные разработчиком приложения (custom tags). Если контейнер не может найти библиотеку тегов, возникает ошибка трансляции. </p>
		<p style="text-indent:30px">Синтаксис директивы <span style="font-family:Courier, monospace">taglib:</span> </p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			
		<tr><td align="center"><span style="font-family:Courier, monospace"><.%@ taglib uri="URI библиотеки тегов" prefix="имяПрефикса"%></span><br />
		</table></p>
		<p align="justify"       
		p style="text-indent:30px">Директива <b>include</b> используется для помещения в JSP страницу текста и программного кода из других источников и ресурсов. Подстановка выполняется в момент трансляции страницы JSP в соответствующий сервлет.</p>
		<p style="text-indent:30px">Синтаксис директивы <span style="font-family:Courier, monospace">include:</span></p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			
		<tr><td align="center"><span style="font-family:Courier, monospace"><.%@ include file="Относительный URI включаемого файла" %></span><br />
		</table></p>
		<p style="text-indent:30px">Директива <span style="font-family:Courier, monospace">include</span> имеет один атрибут <span style="font-family:Courier, monospace">file</span>, который включает в себя текст специфицированного ресурса в файл JSP. Рассматриваемый источник, например, страница HTML, интерпретируется в качестве статического объекта. </p>
		<p style="text-indent:30px">Содержимое подключаемого файла обрабатывается как обычный текст JSP и может включать такие элементы, как статический HTML, элементы скриптов, директивы и действия. Возможности данной директивы можно использовать для размещения на каждой странице JSP неизменяемой информации, например, сведения об авторских правах.</p>
		<p style="text-indent:30px"><b>Объявления (declarations) </b>предназначены для определения переменных и методов на языке скриптов, которые в дальнейшем будут использоваться на странице JSP.</p>
		<p style="text-indent:30px">Синтаксис объявления: </p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.%! объявление %></span><br />
		</table></p>
		<p style="text-indent:30px">Эквивалентный XML синтаксис:</p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.jsp:declaration> объявление <\/jsp:declaration></span><br />
		</table></p>
		<p style="text-indent:30px">Объявление может содержать несколько строк, как например, в приведенном ниже методе <span style="font-family:Courier, monospace">summ(int a, int b)</span>для вычисления суммы двух целых чисел. </p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%! </p>
		<p style="text-indent:20px">public int summ (int a, int b){</p>
		<p style="text-indent:30px">return a+b;</p>
		<p style="text-indent:20px">}</p>
		<p>%></p></font>
		</span>
		<p style="text-indent:30px">Объявления не производят никакого вывода в стандартный выходной поток out. Переменные и методы, декларированные в объявлениях, инициализируются и становятся доступными для скриптлетов и других объявлений в момент инициализации страницы JSP.</p>
		<p style="text-indent:30px"><b>Скриптлеты (scriptlets)</b> состоят из фрагментов Java-кода и символов разметки скриптовых элементов. Скриптлет может содержать программный код и декларации локальных переменных, которые будут использованы для обработки запросов клиентов.</p>
		<p style="text-indent:30px">Синтаксис скриптлета: </p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.%  скриптлет   %></span><br />
		</table></p>
		<p style="text-indent:30px">Эквивалентный XML синтаксис:</p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.jsp:scriptlet>   скриптлет    <\/jsp:scriptlet></span><br />
		</table></p>
		<p style="text-indent:30px">Скриптлеты имеют доступ к тем же автоматически определенным переменным, что и выражения.</p>
		<p style="text-indent:30px"><b>Выражения (expressions)</b> – это исполняемые конструкции, написанные на языке Java, предназначенные для конвертации данных в выходящий поток в виде строковых значений результатов выполняемых методов. </p>
		<p style="text-indent:30px">Синтаксис выражения: </p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.%= выражение  %></span><br />
		</table></p>
		<p style="text-indent:30px">Эквивалентный XML синтаксис:</p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.jsp:expression>  выражение  <\/jsp:expression></span><br />
		</table></p>
		<p style="text-indent:30px">Результат выражения JSP, имеющий обязательный тип <span style="font-family:Courier, monospace">String,</span> направляется в стандартный поток вывода out с помощью текущего объекта <span style="font-family:Courier, monospace">JspWriter.</span> Если результат выражения не может быть приведен к типу <span style="font-family:Courier, monospace">String,</span> возникает либо ошибка трансляции, либо исключение <span style="font-family:Courier, monospace">ClassCastException</span>, если несоответствие было выявлено в процессе выполнения запроса.</p>
		<p style="text-indent:30px"><b>Комментарии (comments)</b> – пояснения к исходному тексту программы, находящиеся непосредственно внутри кода.  С точки зрения компилятора или интерпретатора, комментарии – часть текста программы, не влияющая на ее семантику. </p>
		<p style="text-indent:30px">В странице JSP могут быть использованы два типа комментариев:</p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.%--  JSP-комментарий   --%><br><.!--  HTML-комментарий   --></span><br />
		</table></p>
		<p style="text-indent:30px">Также можно создавать комментарии с динамическим содержимым:   </p>
		<p><table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
		<tr><td align="center"><span style="font-family:Courier, monospace"><.!-- Начало комментария <.%= expression %> конец --></span><br />
		</table></p>
		<h3 class="h2">Лабораторная работа</h3>
		<p><b>Цель работы:</b>описание процесса создания простой страницы JSP в инструментальной среде разработки NetBeans IDE. Работа с директивами и стандартными тегами JSP.</p>
		<br>
		<p>1.	Создайте новый проект в среде разработки NetBeans IDE: </p>
		<p style="text-indent:40px">а)	откройте среду разработки <b>NetBeans IDE;</b></p>
		<p style="text-indent:40px">б)	выполните команду <b>Файл &#8594; Создать проект…;</b></p>
		<p style="text-indent:40px">в)	выберите в списке  <b>Категории </b> пункт  <b>Java Web; </b></p>
		<p style="text-indent:40px">г)	выберите в списке  <b>Проекты </b> пункт  <b>Веб-приложение; </b></p>
		<p style="text-indent:40px">д)	нажмите на кнопку  <b>Далее </b> и перейдите к следующему шагу;</p>
		<p style="text-indent:40px">е)	введите имя проекта (например,  <b>ProjectJSP </b>) в строку  <b>Имя проекта; </b></p>
		<p style="text-indent:40px">ж)	при помощи кнопки  <b>Обзор </b> определите место для сохранения проекта;</p>
		<p style="text-indent:40px">з)	нажмите на кнопку  <b>Далее </b> и перейдите к следующему шагу;</p>
		<p style="text-indent:40px">и)	выберите из списка  <b>Сервер </b> необходимое название сервера; </p>
		<p style="text-indent:40px">к)	нажмите на кнопку  <b>Готово </b> для завершения создания проекта.</p>
		<p>2.	Создайте новую страницу JSP: </p>
		<p  style="text-indent:40px">а)	в созданном проекте выполните команду <b>Файл &#8594; Создать проект…;</b></p>
		<p  style="text-indent:40px">б)	выберите в списке <b>Категории</b> пункт <b>Веб;</b></p>
		<p  style="text-indent:40px">в)	выберите в списке <b>Типы файлов</b> пункт <b>JSP</b> и перейдите к следующему шагу;</p>
		<br />
			<center><p> <img src="../images/25.png" alt="" /></p><br/></center>
    		<br />
		<p  style="text-indent:40px">г)	введите имя <b>firstJSP </b>в строку <b>Имя класса;</b></p>
		<p  style="text-indent:40px">д)	в поле <b>Параметры</b> выберите <b>Файл JSP (стандартный синтаксис);</b></p>
		<p  style="text-indent:40px">е)	нажмите на кнопку <b>Готово</b> для завершения создания страницы.</p>
		<p>3.	Сформируйте код страницы <b>index.jsp:</b></p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@ page contentType="text/html" pageEncoding="UTF-8"%></p>
		<p><.%@ page import="java.util.Date" %></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type"</p>
		<p style="text-indent:40px">content="text/html; charset=UTF-8"></p>
		<p style="text-indent:30px"><.title> Моя первая страница JSP </.title></p>
		<p style="text-indent:20px"></.head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.title>Тестирование JSP страницы.</.title></p>
		<p style="text-indent:30px">Текущие дата и время: <.%= new Date()%></p>
		<p style="text-indent:20px"></.body></p>
		<p></.jsp></p></font>
		</span>
		<br>
		<p>4.	Запустите проект на выполнение и просмотрите результат работы:</p>
		<br />
			<center><p> <img src="../images/26.png" alt="" /></p><br/></center>
    		<br />
		<p>5.	Сформируйте код страницы <b>firstJSP.jsp:</b> </p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@ page contentType="text/html" pageEncoding="UTF-8"%></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type"</p>
		<p style="text-indent:40px">content="text/html; charset=UTF-8"></p>
		<p style="text-indent:30px"><.title> Директивы JSP</.title></p>
		<p style="text-indent:20px"></.head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.h4> Пример использования директивы <.i>include</.i></.h4></p>
		<p style="text-indent:30px"><.%@ include file="index.jsp" %></p>
		<p style="text-indent:20px"></.body></p>
		<p><./html></p></font>
		</span>
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
            <a href="lp7.jsp" style="color: #00f;" >1</a>&nbsp
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
