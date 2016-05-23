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
<h3 class="h2">JComponent</h3>
			<p style="text-indent:30px">Базовым классом всей библиотеки визуальных компонентов Swing является JComponent. Это суперкласс других визуальных компонентов. Он является абстрактным классом, поэтому в действительности вы не можете создать JComponent, но он содержит сотни функций, которые каждый компонент Swing может использовать как результат иерархии классов. Класс JComponent обеспечивает инфраструктуру окрашивания для всех компонентов, он знает, как обрабатывать все нажатия клавиш на клавиатуре, его подклассы, следовательно, должны только прослушивать определенные клавиши. Класс JComponent также содержит метод add(), который позволяет добавить другие объекты класса JComponent, так можно добавить любой Swing-компонент к любому другому для создания вложенных компонентов (например, JPanel, содержащую JButton, или даже более причудливые комбинации, например JMenu, содержащее JButton).</p>
			<br />
			<h3 class="h2">JLabel</h3>
			<p style="text-indent:30px">Самым простым и в то же время основным визуальным компонентом в библиотеке Swing является JLabel, или «метка». К методам этого класса относится установка текста, изображения, выравнивания и других компонентов, которые описывает метка:</p>
			<p style="text-indent:40px">•	get/setText() – получить/установить текст в метке;</p>
			<p style="text-indent:40px">•	get/setIcon() – получить/установить изображение в метке;</p>
			<p style="text-indent:40px">•	get/setHorizontalAlignment – получить/установить горизонтальную позицию текста;</p>
			<p style="text-indent:40px">•	get/setVerticalAlignment()   –   получить/установить вертикальную позицию текста;</p>
			<p style="text-indent:40px">•	get/setDisplayedMnemonic()   –   получить/установить мнемонику (подчеркнутый символ) для метки;</p>
			<p style="text-indent:40px">•	get/setLabelFor() – получить/установить компонент, к которому присоединена данная метка; когда пользователь нажимает комбинацию клавиш Alt + мнемоника, фокус перемещается на указанный компонент.</p>
			<br />
			<h3 class="h2">JButton</h3>
			<p style="text-indent:30px">Основным активным компонентом в Swing является Jbutton.</p>
			<p style="text-indent:30px">Методы, используемые для изменения свойств JButton, аналогичны методам JLabel (вы обнаружите, что они аналогичны для большинства Swing-компонентов). Они управляют текстом, изображениями и ориентацией:</p>
			<p style="text-indent:40px">•	get/setText() –   получить/установить текст в кнопке;</p>
			<p style="text-indent:40px">•	get/setIcon() –   получить/установить изображение в кнопке;</p>
			<p style="text-indent:40px">•	get/setHorizontalAlignment()   –   получить/установить горизонтальную позицию текста;</p>
			<p style="text-indent:40px">•	get/setVerticalAlignment()   –   получить/установить вертикальную позицию текста;</p>
			<p style="text-indent:40px">•	get/setDisplayedMnenomic()   –   получить/установить мнемонику (подчеркнутый символ), которая в комбинации с кнопкой Alt вызывает нажатие кнопки.</p>
			<br />
			<h3 class="h2">JFrame</h3>
			<p style="text-indent:30px">Класс JFrame является контейнером, позволяющим добавлять к себе другие компоненты для их организации и предоставления пользователю. </p>
			<p style="text-indent:30px">JFrame выступает в качестве моста между независимыми от конкретной операционной системы Swing-частями и реальной операционной системой, на которой они работают. JFrame регистрируется как окно и таким образом получает многие свойств окна операционной системы: минимизация/максимизация, изменение размеров и перемещение. Хотя выполнении лабораторной работы достаточно считать JFrame палитрой, на которой вы размещаете компоненты. Перечислим некоторые из методов, которые вы можете вызвать в JFrame для изменения его свойств:</p>
			<p style="text-indent:40px">•	get/setTitle()  – получить/установить заголовок фрейма;</p>
			<p style="text-indent:40px">•	get/setState() – получить/установить состояние фрейма (минимизировать, максимизировать и т.д.);</p>
			<p style="text-indent:40px">•	is/setVisible() – получить/установить видимость фрейма, другими словами, отображение на экране;</p>
			<p style="text-indent:40px">•	get/setLocation() – получить/установить месторасположение в окне, где фрейм должен появиться;</p>
			<p style="text-indent:40px">•	get/setSize() – получить/установить размер фрейма;</p>
			<p style="text-indent:40px">•	add() – добавить компоненты к фрейму.</p>
			<br />
			<h3 class="h2">Схемы, модели и события</h3>
			<p style="text-indent:30px">При построении визуальных приложений в Java нельзя просто случайно разместить их на экране и ожидать от них немедленной работы. Компоненты необходимо разместить в определенные места, реагировать на взаимодействие с ними, обновлять их на основе этого взаимодействия и заполнять данными. Для эффективной работы с визуальными компонентами необходима установка следующих трех архитектурных составляющих Swing.</p>
			<br />
			<p>1.	Схемы (layout). Swing содержит множество схем, которые представляют собой классы, управляющие размещением компонентов в приложении и тем, что должно произойти с ними при изменении размеров окна приложения или при удалении или добавлении компонентов.</p>
			<p>2.	События (event). Программа должна реагировать на нажатия клавиш, нажатия кнопки мыши и на все остальное, что пользователь может сделать.</p>
			<p>3.	Модели (model). Для более продвинутых компонентов (списки, таблицы, деревья) и даже для некоторых более простых, например, JComboBox, модели – это самый эффективный способ работы с данными. Они удаляют большую часть работы по обработке данных из самого компонента (вспомните MVC) и предоставляют оболочку для общих объектных классов данных (например, Vector и ArrayList).</p>
			<p style="text-indent:30px">Особое внимание, в связи с необходимостью изображения динамических сцен на визуальных компонентах необходимо уделить классу Graphics 2D.</p>
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
<br>
<br>
<br>
<br>
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
  <div id="pager">
		      <p align=center>
            <a href="lp5.jsp" style="color: #00f;" >1</a>&nbsp
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
