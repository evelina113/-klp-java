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
        
<h2 class="h2">GUI программирование. AWT и Swing</h2>
        
        <h3 class="h2">Лабораторная работа №5</h3>
      
        <p><b>Цель работы:</b> формирование навыков по построению приложений с использованием графического интерфейса библиотек java.awt и javax.swing.</p>
    	<br />
		<p style="text-indent:30px"><b>Графический пользовательский интерфейс (GUI)</b> – основной способ взаимодействия конечных пользователей с java-приложением. Для разработки прикладного программного обеспечения на языке Java, а точнее графического интерфейса приложений, обычно используются пакеты AWT и Swing.</p>	
		<p style="text-indent:40px">•	AWT (для доступа загружается пакет java.awt) содержит набор  классов, позволяющих выполнять графические операции и создавать оконные элементы управления, подобно тому, как это делается в VBA и Delphi;</p>
    	<p style="text-indent:40px">•	Swing (для доступа загружается пакет javax.swing) содержит новые классы, в основном аналогичные AWT. К именам классов добавляется J (JButton, JLabel и др).</p><br />
			<p style="text-indent:30px">На данный момент основные классы для построения визуальных интерфейсов содержатся в пакете Swing. Из пакета AWT используются классы для обработки сообщений. <br />
    		<br />
			<p>Простейшее графическое приложение приведено ниже.</p>
			<br />
			<span style="font-family:Courier, monospace">
                            <font color="#ff7300">
			<p>import javax. swing.*;</p>
			<p>public final class HelloWorld implements Runnable {</p>
    		<p>public static void main(String[] args) {</p>
    		<br /></font>
			<p style="text-indent:20px">//Swing имеет собственный управляющий поток (т.н. dispatching thread),который работает параллельно с основным (в котором выполняется main())потоком. Если основной поток закончит работу (метод main завершится),
			поток отвечающий за работу Swing-интерфейса может продолжать свою работу
			и даже если пользователь закрыл все окна, программа продолжит свою работу
			(до тех пор, пока жив данный поток). 
			<p style="text-indent:20px">//Начиная с Java 6, когда все
 компоненты уничтожены, управляющий поток останавливается автоматически.</p>
			<p style="text-indent:20px">//Запускаем весь код, работающий в управляющем потоке, даже инициализацию:</p>
			<br />
                        <font color="#ff7300">
			<p style="text-indent:10px">SwingUtilities.invokeLater (new HelloWorld());</p>
			<p>}</p>
			
			<p style="text-indent:30px">public void run() {</p>
			<br /></font>
			<p style="text-indent:20px">// Создаем окно с заголовком "Hello, World!"</p>
			<br />
                        <font color="#ff7300">
			<p style="text-indent:30px"> Frame f = new JFrame ("Hello, World!"); </p>
			<br />;
                        </font>
			<p align="justify"       
		p style="text-indent:20px">// Ранее практиковалось следующее: создавался listener и регистрировался
на экземпляре главного окна, который реагировал на windowClosing()
принудительной остановкой виртуальной машины вызовом System.exit().</p>
			<p style="text-indent:20px">// Теперь же есть более "правильный" способ задав реакцию на закрытие окна.</p>
			<p style="text-indent:20px">// Данный способ уничтожает текущее окно, но не останавливает приложение. Тем самым приложение будет работать пока не будут закрыты все окна.</p>
			<br />
                        <font color="#ff7300">
			<p style="text-indent:30px">f.setDefaultCloseOperation (JFrame. DISPOSE_ON_CLOSE );</p>
			<br /></font>
			<p style="text-indent:20px">// однако можно задать и так:</p>
                        <font color="#ff7300">
			<p style="text-indent:20px">// f.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);</p>
			</font>
                        <p style="text-indent:20px">// Добавляем на панель окна нередактируемый компонент с текстом.</p>
			<font color="#ff7300">
                        <p style="text-indent:20px">// f.getContentPane().add (new JLabel("Hello, World!")); - старый стиль</p>
			<br />
			<p style="text-indent:30px">f.add(new JLabel("Hello World"));</p>
			<br /> </font>
			<p align="justify"       
		p style="text-indent:20px">// pack() "упаковывает" окно до оптимального размера всех расположенных в нем компонентов.</p>
			<br />
                        <font color="#ff7300">
			<p> f.pack();</p>
			<br /></font>
			<p align="justify"       
		p style="text-indent:20px">// Показать окно</p>
			<br />
                        <font color="#ff7300">
			<p>f.setVisible(true);</p>
			<p>}}</p></font> </span>
			<br />
			<p style="text-indent:30px">Технология Swing предоставляет механизмы для управления следующими аспектами представления:</p>
			<p style="text-indent:40px">•	Клавиатура (Swing предоставляет способ перехвата пользовательского ввода);</p>
			<p style="text-indent:40px">•	Цвета (Swing предоставляет способ менять цвета, которые вы видите на экране);</p>
			<p style="text-indent:40px">•	Текстовое поле для ввода (Swing предоставляет текстовые компоненты для обработки всех повседневных задач).</p>
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
<br /> <br />
<br>
<br>
<br>
<br>
<br />
<br />
<br /> <br />
<br>
<br>
<br>
<br>
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
  <div id="pager">
		      <p align=center>
            <a href="lp5.jsp" style="color: #777;" >1</a>&nbsp
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
