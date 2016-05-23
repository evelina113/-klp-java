<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
        <%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
            if(request.getParameter("Add") == null){
               out.println("<p align=center> <p class=busniess_text>РЕГИСТРАЦИЯ</p> <form action=registr.jsp method=post>"
                       + "<table border=0 width=360px height=240px><tr><td><p style='line-height:18px;'>Фамилия&nbsp;&nbsp;&nbsp;</td><td> "
                        + "<input id='Text1' type='text' name='surname'/><br></p></td></tr>"
                       + "<tr><td><p style='line-height:18px;'>Имя</td><td> <input id='Text2' type='text' name='name'/><br></p></td></tr> "
                       + "<tr><td><p style='line-height:18px;'>Группа</td><td> <input id='Text3' type='text'name='grup' /><br></p></td></tr>"+
           "<tr><td><p style='line-height:18px;'>Логин</td><td> <input id='Text4' type='text' name='login' /><br></p></td></tr>"+
            "<tr><td><p style='line-height:18px;'>Пароль </td><td> <input id='Text5' type='password' name='pass' /><br></p> </td></tr>"+
            "<tr><td><p style='line-height:18px;'>Введите код с картинки <br></p> </td></tr></table><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='http://www.captcha.ru/captcha/'> <br><br/><input id='Text6' type='text' name='pic' /></p><br />"+
            "<input type='submit' class='buttonsss2' value='Зарегистрироваться' name='Add' id='Add' O> </p>  </form>"); 
            
            
            }
            
            %>
        
                      
             <%
                 
String sName, sSurname, sUser, sPass, sGrup, user, pass, url,sql;
boolean flagName, flagNumber;
Connection conn;
Statement stmt;
ResultSet rs;
ResultSetMetaData rsm;
int colCount;
sName = null;
sSurname = null;
sUser = null;
sPass = null;
sGrup = null;
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

if(request.getParameter("Add") != null){
//проверка введенных данных
try{
sName=request.getParameter("name").toString().trim();
sSurname=request.getParameter("surname").toString().trim();
sGrup=request.getParameter("grup").toString().trim();
sUser=request.getParameter("login").toString().trim();
sPass=request.getParameter("pass").toString().trim();






if (sName != "")
flagName = true;
else 
out.println("<br> Введите имя");
if(sSurname!= "")
flagNumber = true;
else 
out.println("<br> Введите Фамилию");
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
rs = stmt.executeQuery("select * from userdata WHERE login = '"+sUser+"'");
int i=0;
while(rs.next()){
    i++;
}

     if(i!=0)
     {
     out.println ("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Такой пользователь уже зарегистрирован");
     }
     else{     
Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/klp_java";
conn =DriverManager.getConnection(url,user, pass);
stmt = conn.createStatement();
sql="insert into userdata (name, surname, grup, login, pass) values('"+sName+"', '"+sSurname+"', '"+sGrup+"', '"+sUser+"', '"+sPass+"')";
stmt.execute(sql);
stmt.close();
conn.close();
out.println("<br><p align=center> Вы успешно зарегистрировались! <br> Для успешного обучения рекомендуем узнать Ваш начальный уровень подготовки с помощью теста <br> <br> "
        + "<a href=nachtest.jsp> <input type='submit' class='buttonss2_2' value='Да'></a> <a href=eor.jsp><input type='submit' class='buttonss2' value='Нет'></a> ");
 }
 
 }
 catch(Exception ex){
 out.println("<br> Ошибка при работе с БД <br>"
+ ex.toString());
 }
 
 }

if(request.getParameter("Table") != null){
try{
Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/klp_java";
conn=DriverManager.getConnection(url, user, pass);
stmt = conn.createStatement();
rs = stmt.executeQuery("select * from userdata");
rsm = rs.getMetaData();
colCount = rsm.getColumnCount();
// Выводим данные таблицы phones из БД 
out.println("<table border='1'>");
out.println("<th> № </th>");
out.println("<th> Фамилия и имя </th>");
out.println("<th> Номер телефона </th>");
while(rs.next()){
out.println("<tr>");
for(int i=1; i<=colCount; i++){
out.println("<td>"+rs.getString(i)+"</td>");
}
out.println("</tr>");
}
out.println("</table>");
stmt.close();
conn.close();
}
catch(Exception ex){
out.println("Ошибка при работе с БД <br> " 
+ ex.toString()); 
}
}
    }
%>         
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
