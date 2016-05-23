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
          <li><a href="#" class="lekci">Практикум</a></li>
          <li><a href="../../../test/test.jsp" class="testy1">Контроль знаний</a></li>
          <li><a href="../../../resursy/present/present1.jsp" class="glos1">Ресурсы</a></li>
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
        
<h2 class="h2">Основы программирования на Java</h2>
        
        <h3 class="h2">Лабораторная работа №1</h3>
      
        <p><b>Цель работы:</b> разработка консольного приложения для реализации простейшей программы на Java.</p>
    		<br/>
    		<p style="text-indent:30px"> Реализация первой программы на языке Java выглядит следующим образом:</p><br />
    		
                <span style="font-family:Courier, monospace">
                    <font color="#ff7300">
			<p>class MyFirstProgramm{</p>
    		<p>public static void main(String[] args){ </p>
    		<p>System.out.println("My first Java programm!!"); </p>
    		<p>}</p>
			<p>}</p></font></span>
			<br/>
			<p style="text-indent:30px"> Вот и все, всего пять строчек! Но даже на этом простом примере можно заметить целый ряд существенных особенностей языка Java.</p><br/>
    		<p style="text-indent:40px">•	Всякая программа представляет собой один или несколько классов, в этом простейшем примере только один класс (class).</p>
			<p style="text-indent:40px">•	Начало класса отмечается служебным словом class, за которым следует имя класса, выбираемое произвольно, в данном случае Helloworld. Все, что содержится в классе, записывается в фигурных скобках и составляет тело класса (class body).</p>
			<p style="text-indent:40px">•	Все действия производятся с помощью методов обработки информации, коротко говорят просто метод (method). Это название употребляется в языке Java вместо названия "функция", применяемого в других языках.</p>
			<p style="text-indent:40px">•	Методы различаются по именам. Один из методов обязательно должен называться main, с него начинается выполнение программы. В нашей простейшей программе только один метод, а значит, имя ему main.</p>
			<p style="text-indent:40px">•	Как и положено функции, метод всегда выдает в результате (чаще говорят, возвращает (returns)) только одно значение, тип которого обязательно указывается перед именем метода. Метод может и не возвращать никакого значения, играя роль процедуры, как в нашем случае. Тогда вместо типа возвращаемого значения записывается слово void, как это и сделано в примере.</p>
			<p style="text-indent:40px">•	После имени метода в скобках, через запятую, перечисляются аргументы (arguments) - или параметры метода. Для каждого аргумента указывается его тип и, через пробел, имя. В примере только один аргумент, его тип — массив, состоящий из строк символов. Строка символов — это встроенный в Java API тип String, а квадратные скобки — признак массива. Имя массива может быть произвольным, в примере выбрано имя args.</p>
			<p style="text-indent:40px">•	Перед типом возвращаемого методом значения могут быть записаны модификаторы (modifiers). В примере их два: слово public означает, что этот метод доступен отовсюду; слово static обеспечивает возможность вызова метода main () в самом начале выполнения программы. Модификаторы вообще необязательны, но для метода main () они необходимы.</p>
			<br/>
			<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			<tr><td><b>Замечание.</b> После имени метода ставятся скобки, чтобы подчеркнуть, что это имя именно метода, а не простой переменной. Все, что содержит метод, тело метода (method body), записывается в фигурных скобках.</td></tr></table></p>
			<br/>
			<p style="text-indent:30px"> Единственное действие, которое выполняет метод main () в примере, заключается в вызове другого метода со сложным именем System.out.println и передаче ему на обработку одного аргумента, текстовой константы "My first Java programm!!". Текстовые константы записываются в кавычках, которые являются только ограничителями и не входят в состав текста.</p>
			<p style="text-indent:30px"> Составное имя System.out.println означает, что в классе System, входящем в Java API, определяется переменная с именем out, содержащая экземпляры одного из классов Java API, класса PrintStream, в котором есть метод println() . Все это станет ясно позднее, а пока просто будем писать это длинное имя.</p>
			<p style="text-indent:30px"> Действие метода println () заключается в выводе своего аргумента в выходной поток, связанный обычно с выводом на экран текстового терминала, в окно MS-DOS Prompt или Command Prompt или Xterm, в зависимости от вашей системы. После вывода курсор переходит на начало следующей строки экрана, на что указывает окончание ln, слово println — сокращение слов print line. В составе Java API есть и метод print (), оставляющий курсор в конце выведенной строки. Разумеется, это прямое влияние языка Pascal.</p>
			<br/>
			<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			<tr><td><b>Замечание.</b> Язык Java различает строчные и прописные буквы, имена main, Main, MAIN различны с "точки зрения" компилятора Java. В примере важно писать String, System с заглавной буквы, a main с маленькой. Но внутри текстовой константы неважно, писать "MY FIRST JAVA PROGRAMM!!" или "My First Java Programm!!", компилятор вообще не "смотрит" на нее, разница будет видна только на экране.</td></tr></table></p>
			<br/>
			
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
		   <span class="busniess_area_text1"><a href="#" class="read_more2">Лабораторная работа №1</a></span>
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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
            <a href="lp1.jsp" style="color: #777;" >1</a>&nbsp
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
