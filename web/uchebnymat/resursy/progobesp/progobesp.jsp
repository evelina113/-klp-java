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
        
<h2 class="h2">Программные обеспечения</h2>
        
       <p style="text-indent:30px">1.	Java SE Development Kit 8u40 [Электронный ресурс]. Режим доступа: <font color="#0000ff">http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html свободный.</font></p><br/>
    	<p style="text-indent:30px">2.	Java для всех операционных систем [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://www.java.com/ru/download/manual.jsp свободный.</font></p><br/>
<p style="text-indent:30px">3.	Инструментальная среда разработки Eclipse IDE [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.eclipse.org/downloads свободный.</font></p><br/>
<p style="text-indent:30px">4.	Инструментальная среда разработки NetBeans IDE (NB 8.0.2) [Электронный ресурс]. Режим доступа:<font color="#0000ff"> http://www.oracle.com/technetwork/java/javase/downloads/jdk-netbeans-jsp-142931.html свободный.</font></p><br/>
<p style="text-indent:30px">5.	Интерактивная среда разработки Greenfoot [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.java.com/en/download/chrome.jsp?locale-=en свободный.</font></p><br/>
<p style="text-indent:30px">6.	Свободная среда разработки Geany [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.geany.org/Download/Releases свободный.</font></p><br/>
<p style="text-indent:30px">7.	Сервер приложений GlassFish [Электронный ресурс]. Режим доступа: <font color="#0000ff"> https://glassfish.java.net/download.html свободный.</font></p><br/>
<p style="text-indent:30px">8.	Среда программирования Alice [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.java.com/en/download/chrome.jsp?locale-=en свободный.</font></p><br/>
<p style="text-indent:30px">9.	Среда разработки BluеJ [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.bluej.org свободный.</font></p><br/>
<p style="text-indent:30px">10.	Среда разработки IntelliJ IDEA [Электронный ресурс]. Режим доступа:<font color="#0000ff">  https://www.jetbrains.com/idea/download свободный.</font></p><br/>	
<p style="text-indent:30px">11.	Среда разработки JDeveloper [Электронный ресурс]. Режим доступа: <font color="#0000ff"> http://www.oracle.com/technetwork/developer-tools/jdev/downloads/index.html свободный.</font></p><br/>			
		   
		   
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
            <p class="green_righte"><a href="#">Программное обеспечение</a><br />
            <p class="green_righte"><a href="../internetresurs/internetresurs.jsp">Интернет ресурсы</a><br />
            
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
