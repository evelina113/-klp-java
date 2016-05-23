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
        

		<p>7.	Создайте Java-апплет с названием <b>myApplet:</b></p>
		<p style="text-indent:40px">а)	выполните команду <b>Файл &#8594; Создать файл;</b></p>
		<p style="text-indent:40px">б)	выберите в списке <b>Категории</b> пункт <b>Java</b>;</p>
		<p style="text-indent:40px">в)	выберите в списке <b>Типы файлов</b> пункт <b>Апплет</b> и перейдите к следующему шагу;</p>
		<p style="text-indent:40px">г)	введите имя <b>myApplet</b> в строку <b>Имя класса</b>;</p>
		<p style="text-indent:40px">д)	нажмите на кнопку <b>Готово</b> для завершения создания апплета.</p>
		<p>8.	Сформируйте программный код апплета:</p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p>import java.awt.*;</p>
		<p>import java.awt.event.*;</p>
		<p>import java.applet.*;</p>
		<p>import java.util.Random;</p>
		<br>
		<p>public class myApplet extends Applet </p>
		<p style="text-indent:60px">implements ActionListener {</p>
		<p style="text-indent:20px">int num=0;</p>
		<p style="text-indent:20px">Button but=new Button("Прогноз погоды");</p>
		<p style="text-indent:20px">public void init()  {</p>
		<p style="text-indent:30px">but.addActionListener(this);</p>
		<p style="text-indent:30px">add(but);</p>
		<p style="text-indent:20px">}</p>
		<p style="text-indent:20px">public void paint(Graphics g){</p>
		<p style="text-indent:25px">switch (num){</p>
		<p style="text-indent:30px">case 1:  {</p>
		<p style="text-indent:40px">//солнце</p>
		<p style="text-indent:40px">g.setColor(Color.black);</p>
		<p style="text-indent:40px">g.drawString("Солнечно",10,20);</p>
		<p style="text-indent:40px">g.drawRect(20, 60, 100, 100);</p>
		<p style="text-indent:40px">g.setColor(new Color(247, 148, 29));</p>
		<p style="text-indent:40px">g.fillOval(45, 85, 50, 50);</p>
		<p style="text-indent:40px">g.drawLine(40, 80, 100, 140);</p>
		<p style="text-indent:40px">g.drawLine(40, 140, 100, 80);</p>
		<p style="text-indent:40px">g.drawLine(30, 110, 110, 110);</p>
		<p style="text-indent:40px">g.drawLine(70, 70, 70, 150);</p>
		<p style="text-indent:40px">break;</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:30px">case 2: {</p>
		<p style="text-indent:40px">//облако</p>
		<p style="text-indent:40px">g.setColor(Color.black);</p>
		<p style="text-indent:40px">g.drawString("Облачно",10,20);</p>
		<p style="text-indent:40px">g.drawRect(20, 60, 100, 100);</p>
		<p style="text-indent:40px">g.setColor(new Color(109, 207, 246));</p>
		<p style="text-indent:40px">g.fillOval(30, 110, 83, 20);</p>
		<p style="text-indent:40px">g.fillArc(30, 105, 30, 30, 0, 180);</p>
		<p style="text-indent:40px">g.fillArc(45, 90, 50, 50, 0, 180);</p>
		<p style="text-indent:40px">g.fillArc(78, 103, 35, 35, 0, 180);</p>
		<p style="text-indent:40px">break;</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:30px">case 3: {</p>
		<p style="text-indent:40px">g.setColor(Color.black);</p>
		<p style="text-indent:40px">g.drawString("Переменная",10,20);</p>
		<p style="text-indent:40px">g.drawString("облачность",20,40);</p>
		<p style="text-indent:40px">g.drawRect(20, 60, 100, 100);</p>
		<p style="text-indent:40px">g.setColor(new Color(247, 148, 29));</p>
		<p style="text-indent:40px">g.fillOval(45, 85, 50, 50);</p>
		<p style="text-indent:40px">g.drawLine(40, 80, 100, 140);</p>
		<p style="text-indent:40px">g.drawLine(40, 140, 100, 80);</p>
		<p style="text-indent:40px">g.drawLine(30, 110, 110, 110);</p>
		<p style="text-indent:40px">g.drawLine(70, 70, 70, 150);</p>
		<p style="text-indent:40px">g.setColor(new Color(109, 207, 246));</p>
		<p style="text-indent:40px">g.fillOval(30, 120, 83, 20);</p>
		<p style="text-indent:40px">g.fillArc(30, 115, 30, 30, 0, 180);</p>
		<p style="text-indent:40px">g.fillArc(45, 100, 50, 50, 0, 180);</p>
		<p style="text-indent:40px">g.fillArc(78, 113, 35, 35, 0, 180);</p>
		<p style="text-indent:40px">break;</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:25px">}</p>
		<p style="text-indent:20px">}</p>
		<p style="text-indent:20px">public void actionPerformed(ActionEvent e){</p>
		<p style="text-indent:25px">Random random = new Random();</p>
		<p style="text-indent:25px">num = random.nextInt(3)+ 1;</p>
		<p style="text-indent:25px">repaint();</p>
		<p style="text-indent:20px">}</p>
		<p>}</p></font>
		</span>
		<p>9.	Скомпилируйте файл <b>myApplet.java:</b></p>
		<p style="text-indent:40px">а)	нажмите на название файла в окне <b>Проекты</b> правой кнопкой мыши;</p>
		<p style="text-indent:40px">б)	выберите пункт контекстного меню <b>Компилировать файл;</b></p>
		<p style="text-indent:40px">в)	для того, чтобы просмотреть результат работы апплета выберите пункт контекстного меню <b>Выполнить файл</b>.</p>
		<p>10.	Подключите класс <b>myApplet </b>к проекту:</p>
		<p style="text-indent:40px">а)	нажмите на название проекта в окне <b>Проекты</b> правой кнопкой мыши;</p>
		<p style="text-indent:40px">б)	выберите пункт контекстного меню <b>Свойства</b>;</p>
		<p style="text-indent:40px">в)	в списке<b> Категории</b> выберите <b>Пакетирование</b>;</p>
		<p style="text-indent:40px">г)	нажмите на кнопку <b>Добавить файл/папку;</b></p>
		<p style="text-indent:40px">д)	перейдите к папке, которая содержит class-файл апплета <b>myApplet.class</b>, и выберите его:</p>
		<br />
			<center><p> <img src="../images/34.png" alt="" /></p><br/></center>
    		<br />
		<p>11.	Создайте страницу <b>appletJSP.jsp:</b></p>
		<br>
		<span style="font-family:Courier, monospace">
                    <font color="#ff7300">
		<p><.%@page contentType="text/html" pageEncoding="UTF-8"%></p>
		<p><.jsp></p>
		<p style="text-indent:20px"><.head></p>
		<p style="text-indent:30px"><.meta http-equiv="Content-Type"</p>
		<p style="text-indent:40px">content="text/html; charset=UTF-8"></p>
		<p style="text-indent:30px"><.title> Внедрение мультимедиа в JSP <./title></p>
		<p style="text-indent:20px"><./head></p>
		<p style="text-indent:20px"><.body></p>
		<p style="text-indent:30px"><.jsp:plugin type="applet" code="myApplet"</p>
		<p style="text-indent:40px">width="370" height="420"></p>
		<p style="text-indent:30px"><./jsp:plugin></p>
		<p style="text-indent:20px"><./body></p>
		<p><./html></p></font>
		</span>
		<br>
		<p>12.	Запустите страницу <b>appletJSP.jsp</b> на выполнение и просмотрите результат работы в браузере.</p>
		<br />
			<center><p> <img src="../images/35.png" alt="" /></p><br/></center>
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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
            <a href="lp9.jsp" style="color: #00f;" >1</a>&nbsp
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
