<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>КЛП по JAVA</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/style1.css" rel="stylesheet" type="text/css" />
<script src="js/login.js" type="text/javascript"></script>
    </head>
<body>

<div class="header_area">
  <div class="main_area">
      <div>
          <br>
          <br>
         
          
      <div class="nav_wrap">
       

       <div class="nav_wrap2">
        <ul>
        
        
          <li><a href="eor.jsp" class="home">Главная</a></li>
          <li><a href="lpz/lp/lp1/lp1.jsp" class="lekci1">Практикум</a></li>
          <li><a href="test/test.jsp" class="testy1">Контроль знаний</a></li>
          <li><a href="resursy/present/present1.jsp" class="glos1">Ресурсы</a></li>
          <li><a href="glossariy/gloss.jsp" class="glos1">Глоссарий</a></li>
         
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
        <div class="main_wrap">
          
            <p><span style="color: #FF5700; font-weight: bold">Дисциплина «Java»</span> необходима в системе подготовки специалистов для получения основных навыков работы с современными средствами вычислительной техники и операционными системами, систематизации ранее полученных знаний и освоение новых аспектов дисциплины, обучения навыкам самостоятельного применения полученных знаний в последующих курсах специальных дисциплин.</p><br />
            <span style="line-height:18px;">Процесс изучения дисциплины направлен на достижение следующих результатов образования:</span>
			<br/>
           <br>
			<b>Знать:</b> основы применения Java-технологий, принципов организации Java-приложений; методику работы с современными средствами вычислительной техники и операционными системами; конструировать профессиональные приложения, решающие задачи в изучаемых операционных системах.
			<br>
			<b>Уметь:</b> грамотно работать с  Java-приложениями; применять изученные инструментальные средства для решения конкретных задач.
			<br>
			<b>Владеть:</b> современными инструментами для работы с Java-приложениями.
          <br>
		   <br> 
		   <br>
		   
		   
          <div class="watch_main_wrap">
            <div class="watch_wrap"><img src="../images/pic1.jpg" alt="" /></div>
            <div class="watch_wrap1">
              <p><span><a class="nulla">Цель дисциплины:</a></span><br />
                <br />
                <span style="line-height:18px;">получение основных сведений о Java-технологиях, изучение современных аспектов дисциплины необходимых для дальнейшего обучения и работы по специальности.</span><br />
                <br />
               
            </div>
            <br class="blank" />
          </div>
          <div class="watch_main_wrap">
            <div class="watch_wrap"><img src="../images/pic2.jpg" alt="" /></div>
            <div class="watch_wrap1">
              <p><span><a class="nulla">Задачи дисциплины:</a></span><br />
                <br />
                <span style="line-height:18px;">дать теоретические и методологические основы дисциплины, научить самостоятельно применять полученные знания в практической деятельности.</span><br />
                
            </div>
            <br class="blank" />
          </div>
        </div>
      </div>
    </div>
    <div class="right_body_wrap">
      
        
            <%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
out.println(" <div class='right_body_bg'>"
        + "<div class='login_wrap'>"
        + "<p class='user_text'>Личный кабинет</p>"+
          
		    " <form name='auth' action='eor.jsp' method='POST'>"+
          "<p class='user_name_text'>Логин<span style='color:#f60219;'> *</span></p>"+
         " <p style='padding:8px 0 0 28px;'>"+
          "  <input type='text' name='username' maxlength='20' class='contact_filed' value='Введите логин' onfocus=\"if(this.value == 'Введите логин') this.value = '';\" onblur=\"if(this.value=='') this.value='Введите логин';\" />"+
       "</p>"+
         " <p class='user_name_text1'>Пароль<span style='color:#f60219;'> *</span></p>"+
          "<p style='padding:8px 0 0 28px;'>"+
          "  <input type='password' name='password' id='pas' maxlength='20' class='contact_filed' value='Введите пароль' onfocus=\"if(this.value == 'Введите пароль') this.value = '';\" onblur=\"if(this.value=='') this.value='Введите пароль';\"/>"+
         " </p><br><br>"+
		 " <input type='submit' class='buttonss2' value='Войти' name='sub'>"+
         " <! <p style='padding:16px 0 0 16px;'> <!Login</p><br><br>"+
        "  <p style='padding:12px 0 0 16px;'><a href='registr.jsp' class='read_more1'>Зарегистрироваться</a></p>"+
       " </form> </div></div>");
}
else
{
    if(request.getParameter("exit") != null){
        session.setAttribute("username", null);
        out.println("<script> location.reload(); </script>");
    }
out.print("<div id='userrr'><span>Пользователь: </span>"+session.getAttribute("username")+"<br> <form action='eor.jsp' method='post'> <input type='submit' value='| Выход' name='exit' class='buttons'></form></div>");
}
%>
         
          
          
           <%
                 
String sName, sUser, sPass, user, pass, url,sql;
String idUser;
boolean flagName, flagNumber;
Connection conn;
Statement stmt;
ResultSet rs;
ResultSetMetaData rsm;
int colCount;
sName = null;
idUser = null;
sUser = null;
sPass = null;
flagName = flagNumber = false;
conn = null; //для установки соединения с БД
stmt = null; //для отправки инструкций SQL в базу данных
rs = null;/* содержит возвращенные значения (таблицу
данных) после выполнения SQL-команды */
rsm = null; /*содержит количество, типы и свойства 
столбцов из объекта ResultSet */
url = null; // адрес для соединения с БД
user = "root"; // имя пользователя БД
pass = "root"; // пароль пользователя БД
colCount = 0; // количество столбцов в таблице БД

if(request.getParameter("sub") != null && session.getAttribute("username")==null){
//проверка введенных данных
try{
sUser=request.getParameter("username").toString().trim();
sPass=request.getParameter("password").toString().trim();

if (sUser != "") 
flagName = true;
else 
out.println("<br> Введите имя пользователя");
if(sPass!= "")
flagNumber = true;
else 
out.println("<br> Введите пароль");
}
catch(Exception e){ 
out.println(e.toString()); 
}

//Вставка в БД корректных данных
if (flagName && flagNumber){
 try {
Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/klp_java";
conn=DriverManager.getConnection(url, user, pass);
stmt = conn.createStatement();
rs = stmt.executeQuery("select * from userdata WHERE login = '"+sUser+"' AND pass = '"+sPass+"'");
int i=0;
while(rs.next()){
    i++;
    try{
    sName=rs.getString(2);
    idUser=rs.getString(1);
    }
    catch(Exception e)
    {
    
    }
}

     if(i==0)
     {
     out.println("<font color = red>Такой пользователь не зарегистрирован </font>" );
     }
     else{     
         
    out.println(sName);
    session.setAttribute("username",sName);
    session.setAttribute("idUser", idUser);
    out.println("<script> location.reload(); </script>");
 }
 
 }
 catch(Exception ex){
 out.println("<br> Ошибка при работе с БД <br>"
+ ex.toString());
 }
 
 }
    }
%>         
          
          
          
		
     
      <div class="event_wrap">
        
    </div>
    <br class="blank" />
              <div class="event_wrap">
        <div class="event_top_wrap">
          <p class="latest_text">Содержание</p>
        </div>
        <div class="event_meddile_wrap">
          <div class="feb_wrap">
		  
           <p class="green_righte">Основы программирования на Java<br />
            <p class="green_righte">Исключения и сборщик мусора<br />
            <p class="green_righte">GUI программирование. AWT и Swing<br />
            <p class="green_righte">Работа с графикой<br />
            <p class="green_righte">Апплеты<br />
            <p class="green_righte">Работа с базами данных<br />
			<p class="green_righte">Сервлеты<br />
            <p class="green_righte">JavaServer Pages<br />
            
              <br />
              
            
          </div>
        </div>
        <div><img src="../images/event_bottom.jpg" alt="" /></div>
      </div>
  </div>
</div>
          <br />
          <br />
      </div>
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
