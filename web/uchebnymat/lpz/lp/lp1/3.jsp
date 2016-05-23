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
        

			<h3 class="h2">Пример консольного java-приложения</h3>
			<p><b>Задание:</b> Ввести n строк с консоли. Вывести на консоль строки и их длины, упорядоченные по возрастанию.</p>
			<p><b>Решение:</b></p>
			<br/>
			<span style="font-family:Courier, monospace">
                             <font color="#ff7300">
			<p>import java.io.IOException;</p>
			<p>import java.util.InputMismatchException;</p>
			<p>import java.util.Scanner;</p>
			<p astyle="text-indent:20px">public class Main</p>
			<p style="text-indent:20px">{</p>
			<p style="text-indent:20px">public static void main(String[] args)</p>
			<p style="text-indent:20px">{</p>
			<p style="text-indent:30px">int n = 0;</p>
			<p style="text-indent:30px">while ( true ) // ввод числа строк</p>
			<p style="text-indent:30px">{</p>
			<p style="text-indent:30px">System.out.println("Введите число строк");</p>
			<p style="text-indent:30px">Scanner sc1 = new Scanner(System. in );</p>
			<p style="text-indent:30px">try</p>
			<p style="text-indent:30px">{</p>
			<p style="text-indent:38px">n = sc1.nextInt();</p>
			<p style="text-indent:30px">break;</p>
			<p style="text-indent:30px">}</p>
			<p style="text-indent:30px">catch(InputMismatchException fg)</p>
			<p style="text-indent:30px">{</p>
			<p style="text-indent:38px">// если введенное значение не является числом</p>
			<p style="text-indent:38px">System.out.print("Вы ввели не число. " );</p>
			<p style="text-indent:38px">}</p>
			<p style="text-indent:30px">}</p>
			<p style="text-indent:20px">// создание массива строк</p>
			<p style="text-indent:20px">String[] str = new String[n];</p>
			<p style="text-indent:20px">Scanner sc2 = new Scanner(System.in);</p>
			<p style="text-indent:20px">for (int i = 0; i < n; i++)</p>
			<p style="text-indent:20px">{</p>
			<p style="text-indent:20px">System. out.println( " Введите строку №" + (i+1));</p>
			<p style="text-indent:20px">str[i] = sc2.nextLine();</p>
			<p style="text-indent:20px">}</p>
			<p style="text-indent:20px">//сортировка массива строк по длине</p>
			<p style="text-indent:20px">for ( int i = 0; i < str. length -1; i++)</p>
			<p style="text-indent:20px">{</p>
			<p style="text-indent:30px">for (int j = i+1; j < str.length; j++)</p>
			<p style="text-indent:30px">{</p>
			<p style="text-indent:38px">if (str[i].length()<str[j].length())</p>
			<p style="text-indent:38px">{</p>
			<p style="text-indent:38px">String temp = str[i];</p>
			<p style="text-indent:38px">str[i] = str[j];</p>
			<p style="text-indent:38px">str[j] = temp;</p>
			<p style="text-indent:38px">}</p>
			<p style="text-indent:30px">}</p>
			<p style="text-indent:20px">}</p>
			<p style="text-indent:30px">int maxlength = str[0].length();</p>
			<p style="text-indent:30px">System.out.println("Строки в порядке убывания длины:");</p>
			<p style="text-indent:30px">for ( int i = 0; i < str. length ; i++)</p>
			<p style="text-indent:30px">{</p>
			<p style="text-indent:38px">System.out.print(str[i]);</p>
			<p style="text-indent:38px">for (int j = 0; j < maxlength - str[i].length(); j++)</p>
			<p style="text-indent:40px">System.out.print(" ");</p>
			<p style="text-indent:40px">System. out.println( " её длина = " + str[i].length());</p>
			<p style="text-indent:38px">}</p>
			<p style="text-indent:20px">}</p>
			<p style="text-indent:20px">}</p></font></span>
			<br/>
			<h3 class="h2">Задания к лабораторной работе</h3>
			<p>1.	Ввести n строк с консоли, найти самую короткую строку. Вывести эту строку и ее длину.</p>
			<p>2.	Ввести n строк с консоли. Упорядочить и вывести строки в порядке возрастания их длин, а также (второй приоритет) значений этих их длин.</p>
			<p>3.	Ввести n строк с консоли. Вывести на консоль те строки, длина которых меньше средней, также их длины.</p>
			<p>4.	В каждом слове текста k-ю букву заменить заданным символом. Если k больше длины слова, корректировку не выполнять.</p>
			<p>5.	В русском тексте каждую букву заменить ее номером в алфавите. В одной строке печатать текст с двумя пробелами между буквами, в следующей строке внизу под каждой буквой печатать ее номер.</p>
			<p>6.	Из небольшого текста удалить все символы, кроме пробелов, не являющиеся буквами. Между последовательностями подряд идущих букв оставить хотя бы один пробел.</p>
			<p>7.	Из текста удалить все слова заданной длины, начинающиеся на согласную букву.</p>
			<p>8.	В тексте найти все пары слов, из которых одно является об­ращением другого.</p>
			<p>9.	Найти и напечатать, сколько раз повторяется в тексте каждое слово.</p>
			<p>10.	Найти, каких букв, гласных или согласных, больше в каждом предложении текста.</p>
			<p>11.	Выбрать три разные точки заданного на плоскости множества точек, составляющие треугольник наибольшего периметра.</p>
			<p>12.	Найти такую точку заданного на плоскости множества точек, сумма расстояний от которой до остальных минимальна.</p>
			<p>13.	Выпуклый многоугольник задан на плоскости перечислением координат вершин в порядке обхода его границы. Определить площадь многоугольника.</p>
			<br/>
			<p><b><font size="-1">Источник:</b> <font color="#0000ff"> http://www.4stud.info/java-programming/creating-console-application.jsp </font></font></p>
			
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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
            <a href="2.jsp" style="color: #00f;">2</a>&nbsp
            <a href="3.jsp" style="color: #777;" >3</a>&nbsp
        
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
