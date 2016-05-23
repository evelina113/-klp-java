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
        

			<p style="text-indent:30px">Итак, программа написана в каком-либо текстовом редакторе, например, Notepad. Теперь ее надо сохранить в файле, имя которого совпадает с именем класса, содержащего метод main (), и дать имени файла расширение java. Это правило очень желательно выполнять. При этом система исполнения Java будет быстро находить метод main() для начала работы, просто отыскивая класс, совпадающий с именем файла.</p>
			<br/>
			<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			<tr><td><b>Замечание.</b> Называйте файл с программой именем класса, содержащего метод main (), соблюдая регистр букв. </td></tr></table></p></font>
			<br/>
			<p style="text-indent:30px">В нашем примере, сохраним программу в файле с именем <b> MyFirstProgramm.java</b> в текущем каталоге. Затем вызовем компилятор, передавая ему имя файла в качестве аргумента:</p>
			
			<br/>
			<span style="font-family:Courier, monospace">
			 <font color="#ff7300">
                            <p><b>javac MyFirstProgramm.java</b></p></font></span>
			<br/>
			<p style="text-indent:30px">Компилятор создаст файл с байт-кодами, даст ему имя <b>MyFirstProgramm.class</b> и запишет этот файл в текущий каталог.</p>
			<p style="text-indent:30px">Осталось вызвать интерпретатор, передав ему в качестве аргумента имя класса (а не файла):</p>
			<br/>
			<span style="font-family:Courier, monospace">
			 <font color="#ff7300">
			<p><b>java MyFirstProgramm</b></p></font></span>
			<br/>
			<p style="text-indent:30px">На экране появится:</p>
			<br/>
			<span style="font-family:Courier, monospace">
                             <font color="#ff7300">
			<p><b>My first Java programm!!</b></p></font></span>
			
			
			<br/>
			<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0 auto;color: #fff;" cellpadding="3" width="80%">
			<tr><td><b>Замечание.</b> Не указывайте расширение class при вызове интерпретатора.</td></tr></table></p>
			<br/>
			
			<p style="text-indent:30px">На рис. 1. показано, как все это выглядит в окне Command Prompt.</p>
			<center><p><img src="../images/1.png" alt="" /></p></center>
			<center><p>Рис. 1. Окно  Command Prompt</p></br></center>
			<p style="text-indent:30px">Выше было показано, что компилируется и запускается программа на Java, не содержащая объявления пакета. На практике, однако, все нетривиальные программы содержат объявления package. При наличии объявления пакета процесс компиляции и запуска программы на Java несколько усложняется. Как было замечено ранее, программа на Java должна записываться в файл с именем, совпадающим с именем класса. Когда класс включается в пакет, добавляются требование, состоящее в том, что имя каталога, в котором храниться этот  файл, совпадало с именем пакета.</p>
			<p style="text-indent:30px">Давайте введем в <b>MyFirstProgramm.java</b> объявление пакета:</p>
			<br/>
			<span style="font-family:Courier, monospace">
                             <font color="#ff7300">
			<p>package ivanov;</p>
			<p>class MyFirstProgramm{</p>
			<p>public static void main(String[] args){ </p>
			<p>System.out.println("My first Java programm!!");</p>
			<p>}</p>
			<p>}</p>
			<br/></font></span>
			<p style="text-indent:30px">Создайте теперь каталог, в котором будет храниться данная программа, а именно <b>/ivanov</b>. Скопируйте программу <b>MyFirstProgramm.java</b> в этот каталог. Получится файл с именем:  <b>/ivanov/ MyFirstProgramm.java</b></p>
			<p style="text-indent:30px">Перед компиляцией перейдите в каталог <b>/ivanov</b> и запустите компилятор как раньше.</p>
			<br/>
			<span style="font-family:Courier, monospace">
                             <font color="#ff7300">
			<p><b> javac MyFirstProgramm.java</b></p></font></span>
			<br/>
			<p style="text-indent:30px">Результатом будет файл <b>MyFirstProgramm.class.</b></p>
			<p style="text-indent:30px">Для вызова интерпретатора необходимо выйти из папки <b>/ivanov</b> и далее передать ему в качестве аргумента имя класса следующим образом:</p>
			<br/>
			<span style="font-family:Courier, monospace">
                             <font color="#ff7300">
			<p><b>java ivanov.MyFirstProgramm</b></p></font></span>
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
<br>

 <div id="pager">
		      <p align=center>
            <a href="lp1.jsp" style="color: #00f;" >1</a>&nbsp
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
