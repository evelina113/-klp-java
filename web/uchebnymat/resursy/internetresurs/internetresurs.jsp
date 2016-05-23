<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>КЛП по JAVA</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../../css/style1.css" rel="stylesheet" type="text/css" />
<script src="js/login.js" type="text/javascript"></script>
    </head>
<body>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
    String site = new String("../../eor.jsp");
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
        
         <li><a href="../../eor.jsp" class="home1">Главная</a></li>
          <li><a href="../../lpz/lp/lp1/lp1.jsp" class="lekci1">Практикум</a></li>
          <li><a href="../../test/test.jsp" class="testy1">Контроль знаний</a></li>
          <li><a href="present1.jsp" class="res">Ресурсы</a></li>
          <li><a href="../../glossariy/gloss.jsp" class="glos1">Глоссарий</a></li>
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
        
<h2 class="h2">Интернет ресурсы</h2>
        
       <p style="text-indent:30px">1.	Введение в язык Java [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://www.williamspublishing.com/PDF/5-8459-0385-8/part.pdf свободный.</font></p><br/>		
		<p style="text-indent:30px">2.	Виртуальная машина Java [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://opensourcerules.net/java/gl1_3.html свободный.</font></p><br/>
<p style="text-indent:30px">3.	История языка Java [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://www.java-study.ru/java-uchebnik/3-java-history свободный.</font></p><br/>
<p style="text-indent:30px">4.	Операторы [Электронный ресурс]. Режим доступа: <font color="#0000ff">http://www.helloworld.ru/texts/comp/lang/java/java/05.htm свободный.</font></p><br/>
<p style="text-indent:30px">5.	Отличие JDK от JRE [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://prostoitblog.ru/java/ustanovka-java-otlichie-jdk-ot-jre свободный.</font></p><br/>
<p style="text-indent:30px">6.	Официальный сайт Java [Электронный ресурс]. Режим доступа: <font color="#0000ff">http://www.oracle.com/java свободный.</font></p><br/>
<p style="text-indent:30px">7.	Официальный сайт проекта Eclipse [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://www.eclipse.org свободный.</font></p><br/>
<p style="text-indent:30px">8.	Присваивания и инициализации [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.java-study.ru/java-uchebnik/23-initial свободный.</font></p><br/>
<p style="text-indent:30px">9.	Программирование на Java [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://www.intuit.ru/studies/courses/16/16/lecture/472?page=1 свободный.</font></p><br/>
<p style="text-indent:30px">10.	Простые типы данных [Электронный ресурс]. Режим доступа: <font color="#0000ff">http://www.intuit.ru/studies/courses/27/27/lecture/835?page=4 свободный.</font></p><br/>
<p style="text-indent:30px">11.	Синтаксис Java [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://sites.znu.edu.ua/javaprog/lect/1129.ukr.html свободный.</font></p><br/>
<p style="text-indent:30px">12.	Типы данных [Электронный ресурс]. Режим доступа: <font color="#0000ff">http://professorweb.ru/my/javascript/js_theory/level1/1_2.php свободный.</font></p><br/>
<p style="text-indent:30px">13.	Управляющие структуры [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://opensourcerules.net/java/gl2_8.html свободный.</font></p><br/>
			
		   
        </div>
		</div>
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
		   <p class="green_righte"><a href="../present/present1.jsp">Презентации</a><br />
		   
		   <span class="busniess_area_text1"><a href="../present/present1.jsp" class="read_more2">Введение в Java</a></span>
		   <span class="busniess_area_text1"><a href="../present/present2.jsp" class="read_more2">Основы программирования на языке Java </a></span>
		   <br>
		   <span class="busniess_area_text1"><a href="../present/present3.jsp" class="read_more2">Объектно-ориентированные принципы Java</a></span>
		   <br><br>
		   <span class="busniess_area_text1"><a href="../present/present4.jsp" class="read_more2">Классы и интерфейсы </a></span>
		   <span class="busniess_area_text1"><a href="../present/present5.jsp" class="read_more2">Исключения</a></span>
		   <span class="busniess_area_text1"><a href="../present/present6.jsp" class="read_more2">GUI программирование. AWT</a></span><br>
		   <span class="busniess_area_text1"><a href="../present/present7.jsp" class="read_more2">GUI программирование. Swing</a></span><br>
		   <span class="busniess_area_text1"><a href="../present/present8.jsp" class="read_more2">События в Java </a></span>
		   <span class="busniess_area_text1"><a href="../present/present9.jsp" class="read_more2">Программирование графики </a></span><br>
		   <span class="busniess_area_text1"><a href="../present/present10.jsp" class="read_more2">Апплеты </a></span>
		   <span class="busniess_area_text1"><a href="../present/present11.jsp" class="read_more2">Пакет  Java Database Connectivity </a></span>
		   <br>
		   <span class="busniess_area_text1"><a href="../present/present12.jsp" class="read_more2">Java Servlets </a></span>
		   <span class="busniess_area_text1"><a href="../present/present13.jsp" class="read_more2">JavaServer Pages </a></span>
		   <p class="green_righte"><a href="../dopinf/dopinf.jsp">Дополнительные информационно-справочные материалы</a><br />
            <p class="green_righte"><a href="../progobesp/progobesp.jsp"">Программное обеспечение</a><br />
            <p class="green_righte"><a href="#">Интернет ресурсы</a><br />
            
            <br />
              
            
          </div>
        </div>
        <div><img src="../../../images/event_bottom.jpg" alt="" /></div>
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
