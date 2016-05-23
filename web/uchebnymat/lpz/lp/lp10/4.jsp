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
        

		<p>8.	Сформируйте код страницы <b>index.jsp</b>:</p>
		<br>
		<span style="font-family:Courier, monospace">
                    
		<table  border=1px" width="100%">
		 
		<tr><td><font color="#ff7300">%@page language="java" import="java.sql.*, java.io.*" 
		<p style="text-indent:40px">contentType="text/html" pageEncoding="UTF-8"%></p>
		<p>html</p>
		<p style="text-indent:20px">head</p>
		<p style="text-indent:30px">meta http-equiv="Content-Type"</p>
		<p style="text-indent:40px">content="text/html; charset=UTF-8"></p>
		<p style="text-indent:30px">title Операции с базами данных /title</p>
		<p style="text-indent:20px">/head</p>
		<p style="text-indent:20px">body</p>
		<p style="text-indent:30px">%!</p>
		<p style="text-indent:38px">//объявление переменных</p>
		<p style="text-indent:38px">String sName, sNumber, user, pass, url, sql;</p>
		<p style="text-indent:38px">boolean flagName, flagNumber;</p>
		<p style="text-indent:38px">Connection conn;</p>
		<p style="text-indent:38px">Statement stmt;</p>
		<p style="text-indent:38px">ResultSet rs;</p>
		<p style="text-indent:38px">ResultSetMetaData rsm;</p>
		<p style="text-indent:38px">int colCount;</p>
		<p style="text-indent:38px">long iNumber;</p>
		<p style="text-indent:30px">%></p>
		<p style="text-indent:30px">%</p>
		<p style="text-indent:38px">sName = null;//имя</p>
		<p style="text-indent:38px">sNumber = null; //номер</p>
		<p style="text-indent:38px">flagName = flagNumber = false;</p>
		<p style="text-indent:38px">conn = null; //для установки соединения с БД</p>
		<p style="text-indent:38px">stmt = null; //для отправки инструкций SQL в базу данных</p>
		<p style="text-indent:38px">rs = null;/* содержит возвращенные значения (таблицу данных) после выполнения SQL-команды */
</p>
		<p style="text-indent:38px">rsm = null; /*содержит количество, типы и свойства столбцов из объекта ResultSet */
</p>
		<p style="text-indent:38px">url = null; // адрес для соединения с БД</p>
		<p style="text-indent:38px">user = "root"; // имя пользователя БД</p>
		<p style="text-indent:38px">pass = "root"; // пароль пользователя БД</p>
		<p style="text-indent:38px">colCount = 0; // количество столбцов в таблице БД</p>
		<p style="text-indent:38px">iNumber = 0; // номер</p>
		<p style="text-indent:30px">%></p>
		<p style="text-indent:30px">h2> Данные о студентах /h2</p>
		<p style="text-indent:30px">form action="index.jsp" method="get"</p>
		<p style="text-indent:40px">Фамилия и имя: </p>
		<p style="text-indent:40px">input type="text" name="name" size="50"</p>
		<p style="text-indent:40px">Номер телефона: </p>
		<p style="text-indent:40px">input type="text" name="number" size="25"</p>
		<p style="text-indent:40px">input type="submit" value="Добавить" name="Add"</p>
		<p style="text-indent:40px">input type="reset" value="Очистить"</p>
		<p style="text-indent:40px">input type="submit" value="Просмотр таблицы" name="Table" </p>
		<p style="text-indent:30px">/form</p>
		<p style="text-indent:30px">%</p>
		<p style="text-indent:38px">response.setContentType("text/html; charset=UTF-8");</p>
		<p style="text-indent:38px">request.setCharacterEncoding("UTF-8");</p>
		<p style="text-indent:38px">if(request.getParameter("Add") != null){</p>
		<p style="text-indent:38px">//проверка введенных данных</p>
		<p style="text-indent:38px">try{</p>
		<p style="text-indent:42px">sName=request.getParameter("name").toString().trim();</p>
		<p style="text-indent:42px">sNumber=request.getParameter("number").toString().trim();</p>
		<p style="text-indent:42px">iNumber = Long.parseLong(sNumber);</p>
		<p style="text-indent:38px">if (sName != "")</p>
		<p style="text-indent:42px">flagName = true;</p>
		<p style="text-indent:38px">else </p>
		<p style="text-indent:42px">out.println("<br> Введите имя");</p>
		<p style="text-indent:38px">if(sNumber != "")</p>
		<p style="text-indent:42px">flagNumber = true;</p>
		<p style="text-indent:38px">else </p>
		<p style="text-indent:42px">out.println("<br> Введите номер телефона");</p>
		<p style="text-indent:38px">}</p>
		<p style="text-indent:38px">catch(Exception e){ </p>
		<p style="text-indent:42px">out.println(e.toString()); </p>
		<p style="text-indent:38px">}</p>
		<p style="text-indent:30px">%></p>
		<p style="text-indent:30px">%</p>
		<p style="text-indent:38px">//Вставка в БД корректных данных</p>
		<p style="text-indent:38px">if (flagName && flagNumber){</p>
		<p style="text-indent:42px">try {</p>
		<p style="text-indent:45px">Class.forName("com.mysql.jdbc.Driver");</p>
		<p style="text-indent:45px">url = "jdbc:mysql://localhost/students";</p>
		<p style="text-indent:45px">conn =DriverManager.getConnection(url,user, pass);</p>
		<p style="text-indent:45px">stmt = conn.createStatement();</p>
		<p style="text-indent:45px">sql="insert into phones (name, number) values ('"+sName+"', "+iNumber+")";
</p>
		<p style="text-indent:45px">stmt.execute(sql);</p>
		<p style="text-indent:45px">stmt.close();</p>
		<p style="text-indent:45px">conn.close();</p>
		<p style="text-indent:42px">}</p>
		<p style="text-indent:42px">catch(Exception ex){</p>
		<p style="text-indent:45px">out.println(" Ошибка при работе с БД " + ex.toString());
</p>
		<p style="text-indent:38px">}</p>
		<p style="text-indent:42px">out.println("<br> Данные успешно добавлены");</p>
		<p style="text-indent:38px">}</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:30px">%></p>
		<p style="text-indent:30px">%</p>
		<p style="text-indent:38px">if(request.getParameter("Table") != null){</p>
		<p style="text-indent:40px">try{</p>
		<p style="text-indent:42px">Class.forName("com.mysql.jdbc.Driver");</p>
		<p style="text-indent:42px">url = "jdbc:mysql://localhost/students";</p>
		<p style="text-indent:42px">conn=DriverManager.getConnection(url, user, pass);</p>
		<p style="text-indent:42px">stmt = conn.createStatement();</p>
		<p style="text-indent:42px">rs = stmt.executeQuery("select * from phones");</p>
		<p style="text-indent:42px">rsm = rs.getMetaData();</p>
		<p style="text-indent:42px">colCount = rsm.getColumnCount();</p>
		<p style="text-indent:38px">// Выводим данные таблицы phones из БД </p>
		<p style="text-indent:42px">out.println("table border='1'>");</p>
		<p style="text-indent:42px">out.println("th> № /th>");</p>
		<p style="text-indent:42px">out.println("th> Фамилия и имя /th>");</p>
		<p style="text-indent:42px">out.println("th> Номер телефона /th>");</p>
		<p style="text-indent:38px">while(rs.next()){</p>
		<p style="text-indent:42px">out.println("tr>");</p>
		<p style="text-indent:30px">for(int i=1; i<=colCount; i++){</p>
		<p style="text-indent:38px">out.println("td>"+rs.getString(i)+"/td>");</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:38px">out.println("/tr>");</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:38px">out.println("/table>");</p>
		<p style="text-indent:38px">stmt.close();</p>
		<p style="text-indent:38px">conn.close();</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:38px">catch(Exception ex){</p>
		<p style="text-indent:38px">out.println("Ошибка при работе с БД br> " + ex.toString()); 
</p>
		<p style="text-indent:38px">}</p>
		<p style="text-indent:30px">}</p>
		<p style="text-indent:30px">%></p>
		<p style="text-indent:20px">/body</p>
		<p>/html</p></font>
		</table>
                        
		</span>
		<br />
		<p>9.	Запустите проект на выполнение и просмотрите результат работы в браузере:</p>
		<p style="text-indent:40px">а)	введите данные о нескольких студентах:</p>
		<br />
			<center><p><img src="../images/15.png" alt="" /></p><br /></center>
    		<br />
		<p style="text-indent:40px">б)	просмотрите данные таблицы:</p>
		<br />
			<center><p><img src="../images/16.png" alt="" /></p><br /></center>
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
           <span class="busniess_area_text1"><a href="../lp9/lp9.jsp" class="read_more2">Лабораторная работа №9</a></span></p>
           <p class="green_righte">Операции с базами данных<br />
           <span class="busniess_area_text1"><a href="#" class="read_more2">Лабораторная работа №10</a></span></p>
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
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>

<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>

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
 <div id="pager">
		      <p align=center>
            <a href="lp10.jsp" style="color: #00f;" >1</a>&nbsp
            <a href="2.jsp" style="color: #00f;">2</a>&nbsp
            <a href="3.jsp" style="color: #00f;" >3</a>&nbsp
            <a href="4.jsp" style="color: #777;" >4</a>&nbsp
            <a href="5.jsp" style="color: #00f;" >5</a>&nbsp
            <a href="6.jsp" style="color: #00f;" >6</a>&nbsp
        
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
