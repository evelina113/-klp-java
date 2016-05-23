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
        

			<h3 class="h2">Пример</h3>
			
			<p><b>Задание:</b> Отобразить вращение треугольника вокруг своего центра тяжести</p>
			<p><b>Решение:</b></p>
			<br />
			<span style="font-family:Courier, monospace">
                            <font color="#ff7300">
			<p>import java.awt.*;</p>
			<p>import java.awt.event.*;</p>
			<p>import java.awt.geom.*;</p>
			<p>import javax.swing.*;</p>
			<p style="text-indent:10px"> public class Main {</p>
			<p style="text-indent:10px">public static void main(String[] args) {</p>
			<p style="text-indent:20px">JFrame fr=new JFrame("Вращение треугольника вокруг своего центра тяжести");</p>
			<p style="text-indent:20px">fr.setPreferredSize( new Dimension(300,300));</p>
			<p style="text-indent:20px">final JPanel pan= new JPanel();</p>
			<p style="text-indent:20px">fr.add(pan);</p>
			<p style="text-indent:20px">fr.setVisible(true);</p>
			<p style="text-indent:20px">fr.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</p>
			<p style="text-indent:20px">fr.pack();</p>
			<p style="text-indent:20px">Timer tm= new Timer(500, new ActionListener(){</p>
			<p style="text-indent:20px">int i=0;</p>
			<p>@Override</p>
			<p style="text-indent:10px">public void actionPerformed(ActionEvent arg0) {</p>
			<p style="text-indent:20px">Graphics2D gr=(Graphics2D)pan.getRootPane().getGraphics();</p>
			<p style="text-indent:20px">pan.update(gr);</p>
			<p style="text-indent:20px">GeneralPath path=new GeneralPath();</p>
			<p style="text-indent:20px">path.append(new Polygon(new int []{60,-80,50},new int[]{-60,-50,40},3),true);</p>
			<p style="text-indent:20px">int x=(60-80+50)/3,y=(-60-50+40)/3;</p>
			<p style="text-indent:20px">gr.translate(150, 150);</p>
			<p style="text-indent:20px">AffineTransform tranforms = AffineTransform.getRotateInstance((i++)*0.07, x, y);</p>
			<p style="text-indent:20px">gr.transform(tranforms);</p>
			<p style="text-indent:20px">gr.draw(path);</p>
			<p style="text-indent:10px">}});</p>
			<p style="text-indent:20px">tm.start();</p>
			<p style="text-indent:10px">}</p>
			<p>}</p>
			<br /></font></span>
			<p align="justify"       
		p style="text-indent:30px">Дополнительную информацию по использованию визуальных библиотек можно получить из следующих источников:</p>
			<br />
			<p>http://www.ibm.com/developerworks/ru/edu/j-dw-java-intswing-i.jsp;</p>
			<p>http://www.mexmat.sgu.ru/sites/chairs/prinf/materials/java/lesson8.htm;</p>
			<p>http://www.uic.rsu.ru/doc/programming/java/TIJ2e.ru/Chapter13.jsp;</p>
			<br />
			<h3 class="h2">Задания к лабораторной работе</h3>
			
			<p>1.	Задать движение по экрану строк (одна за другой) из массива строк. Направление движения по апплету и значение каждой строки выбирается случайным образом.</p>
			<p>2.	Задать движение окружности по апплету так, чтобы при касании границы окружность отражалась от нее с эффектом упругого сжатия.</p>
			<p>3.	Изобразить в апплете приближающийся издали шар, удаляющийся шар. Шар должен двигаться с постоянной скоростью.</p>
			<p>4.	Изобразить в окне приложения отрезок, вращающийся в плоскости экрана вокруг одной из своих концевых точек. Цвет прямой должен изменяться при переходе от одного положения к другому.</p>
			<p>5.	Изобразить в окне приложения отрезок, вращающийся в плоскости фрейма вокруг точки, движущейся по отрезку.</p>
			<p>6.	Изобразить четырехугольник, вращающийся в плоскости апплета вокруг своего центра тяжести.</p>
			<p>7.	Создать фрейм с областью для рисования «пером». Создать меню для выбора цвета и толщины линии.</p>
			<p>8.	Составить программу для управления скоростью движения точки по апплету. Одна кнопка увеличивает скорость, другая – уменьшает. Каждый щелчок изменяет скорость на определенную величину.</p>
			<p>9.	Изобразить в окне гармонические колебания точки вдоль некоторого горизонтального отрезка. Если длина отрезка равна q, то расстояние от точки до левого конца в момент времени t можно считать равным q(1 + cos(wt))/2, где w – некоторая константа. Предусмотреть поля для ввода указанных величин и кнопку для остановки и пуска процесса.</p>
			<p>10.	Создать апплет со строкой движущейся по диагонали. При достижении границ апплета все символы строки случайным образом меняют регистр. При этом шрифт меняется на шрифт, выбранный из списка.</p>
			<p>11.	Создать апплет со строкой движущейся горизонтально, отражаясь от границ апплета и меняя при этом свой цвет, на цвет выбранный из выпадающего списка.</p>
			<p>12.	Промоделировать вращение спутника вокруг планеты по эллиптической орбите. Когда скрывается за планетой – спутник не виден.</p>
			<p>13.	Промоделировать аналоговые часы (со стрелками) с кнопками для увеличения/уменьшения времени на час/минуту.</p>
			<br />
			<p><b><font size="-1">Источник:</b> <font color="#0000ff">http://www.4stud.info/java-programming/gui-applications.jsp </font></font></p>
			
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
           <span class="busniess_area_text1"><a href="#" class="read_more2">Лабораторная работа №5</a></span></p>
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
<br>
  <br>
  <br>
  <div id="pager">
		      <p align=center>
            <a href="lp5.jsp" style="color: #00f;" >1</a>&nbsp
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
