<%@page language="java" import="java.sql.*, java.io.*" 
contentType="text/html" pageEncoding="UTF-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>КЛП по JAVA</title>
<%
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
if(session.getAttribute("username")==null)
{
    String site = new String("../eor.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
}%>
<Script Language="JavaScript">  
<!-- Начало сценария 

var time1= new Date();
var rez=[9,4,1,4,4,1,6,10,14,8];
var temas=['- Принципы объектно-ориентированного программирования. Определение методов. ','- Объявление классов. Частный доступ.','- Объявление классов. Модификаторы доступа.','- Принципы объектно-ориентированного программирования. Наследование классов в Java.','- Классы. Ключевое слово final.','- Объявление классов. Выполнение программы.','- Принципы объектно-ориентированного программирования. Перегруженные методы.','- Принципы объектно-ориентированного программирования. Переопределенные методы.','- Принципы объектно-ориентированного программирования. Абстрактные классы.','- Принципы объектно-ориентированного программирования. Наследование.'];
var qwert=[0,0,0,0,0,0,0,0,0,0];
var vinq=[4,4,4,3,4,4,3,4,4,4];
var kfQ=[1,1,1,1,1,1,1,1,1,1];
var kfS=[];
var kfFalse=[2,2,2,2,2,2,2,2,2,2];
var svob=[ [] ];
// PerVop
var mix=true;
</script> 

<style>

.onetest {
    position: relative;
    box-shadow: 0 0 6px #ffffff;
    border-radius: 6px 6px 6px 6px;  
    padding: 0px 5px;
    margin-bottom: 5px;
	background-color: #FFFFFF;
	
}
.onetest img {
max-width:600px;
}
.onetest a {
color: #000000;
text-decoration:none;
}
.testclass {
    font: italic 11px 'Arial';
	margin: 2px 0 0 0px;
}
.otv {
    left: 150px;
    position: absolute;
    top: 15px;
}
#winotv {
    background-color: #FFFFFF;
    border-radius: 6px 6px 6px 6px;
    box-shadow: 0 0 6px #000000;
    display: none;
    margin: 0 auto;
    padding: 15px 50px 15px 50px;
    width: 600px;
    text-align: left;
}
#rezbutton {
    border-radius: 6px 6px 6px 6px;
    box-shadow: 0 0 6px #000000;
    height: 32px;
    margin: 0 auto;
    width: 228px;
    display: block;
}
#rezbutton input {
    background-color: #FFFFFF;
    border: medium none;
    border-radius: 6px 6px 6px 6px;
    cursor: pointer;
    height: 100%;
    width: 100%;
    font: 14px 'Arial';
    color: #000000;
    text-align: center;
}
.svob {
	font-style: italic;
	font-weight: bold;
	font-size: 12px;
}
/*.aspan:hover {
	/*color: #0000aa; /*подсветка вариантов ответа при наведении мыши
	text-shadow: 0 0 6px;
	cursor: pointer;
}*/

/*.otv .imgtrue {
	background: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAAA1CAYAAAAEVKRZAAAACXBIWXMAAC4jAAAuIwF4pT92AAABNmlDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjarY6xSsNQFEDPi6LiUCsEcXB4kygotupgxqQtRRCs1SHJ1qShSmkSXl7VfoSjWwcXd7/AyVFwUPwC/0Bx6uAQIYODCJ7p3MPlcsGo2HWnYZRhEGvVbjrS9Xw5+8QMUwDQCbPUbrUOAOIkjvjB5ysC4HnTrjsN/sZ8mCoNTIDtbpSFICpA/0KnGsQYMIN+qkHcAaY6addAPAClXu4vQCnI/Q0oKdfzQXwAZs/1fDDmADPIfQUwdXSpAWpJOlJnvVMtq5ZlSbubBJE8HmU6GmRyPw4TlSaqo6MukP8HwGK+2G46cq1qWXvr/DOu58vc3o8QgFh6LFpBOFTn3yqMnd/n4sZ4GQ5vYXpStN0ruNmAheuirVahvAX34y/Axk/96FpPYgAAACBjSFJNAAB6JQAAgIMAAPn/AACA6AAAUggAARVYAAA6lwAAF2/XWh+QAAAL7ElEQVR42uxd3VHjShNtU7yjjWC1EaCNADsCRATIEWCXA7D9/lG2I7CIABGBRQRoI1htBFc3An0PzKyPm54fGZvLz3QVhbEtaaa7T/fpnpHo0f/okBITUUpEF0SUqL+JiBoiKolopX4HCfIupJ201s9PD3SdlIhuiKhv+DxS30mJKCeiYTDNC+kT0TUR/VI6aoJK/ns5PYBRFypbcKnVTwyZhIgoU06wDOr/K2ulFy1nRDQPavnv5eQVVOqeiDYMHBURjYnoh/oZwOsCvjcNqjeCgyyZOMgHAMiIiJ4UXdJSKjD8VJmhFrLJFdQfETv+q0oK4JgpHQX5oACJVNZYqNfo+APP4nsFr8+/uO4jlT1IZdd5qDs+bg2SKHBgLbHcw6gFc5CvTq0ipb8x6JkCUD4WQPoKHBEY74pe365NvrDe+0AxkZJeQC0X5AMAJAMaoA13JdQY+8hXdoIpUNS5UJw/Btd8k/rvvHfbS1jJcNdO2tIHIBwcBT2vX7wm/SOt+qo0og9AmDODaf2UwX+PJonyaxODyXq3vWU7ace2Ip2DI1eZoznA4LT8G7IH5fD+pVCnBTk8OPjSRKMCErKiUe+2NzUBJKHnThWC41Ar3xdfnGKZskdM23bvXfDjHX1Nabc59Br2smG19LCdtN/aSTtoJ+0P2jZLNEiiU+EkWJBXdNhtIX14XVomktHzavIfFmU/utwYssc1vB8yyNZXNvB68Mrzcb8ecEbUTtpl77Z3rvwvIqKMA2QNaK0PMCgTQErL5/dCrfIZnCambecqZwFhJLz/1QUpfm34jt7mtHL4SAa+J4IDZA7Z/OKEFYkp/P3aglzqGtiyR8ZSoJbPsqB4DYBfsawSCe9/poL4nrqte2WMVq0MtdxIOf65g1otfP26nbQ1AHKHYuFJlkfopFzC6wchc6wNx/35JM4ygiK8gawygsjVvNOxp8oJHzrUjkiRtJP7+tSU+WIlOP0I/n500FoNzpnn+GsN0FMBsQ0dZydpHy5eMepxD3/PWDFbfwJwpGCkFaMRkdLH8h2OW9ek/T1qgQtGk7sAC2n+2KHPygG8zJC5veTEgNhDR7IEJl1amgJjBU6fYv6tqULGDLMPvcLgMIJ5DvcMOPGRwbFhtuh3rLloj+x4zY6zNTvI4fQpjKOLX/+18SlzXqLjtBmvDfQK7yXJ1SSSPcCRKAr368AFfarGGLNoOOgQESOov1Yw3gUEharjuO7hnD+OlGWlxbRyjzmXHbJjxCJ+brB14viO5Hdd/Prv+U9YVKiOpOwUImgB72Vw3aEQpUpPpW4UNVuw1PqbiFr1s+kY/Rf0coMmZr0uBSdB/ZEAN8/3oFZTOv6tAiPDNXwjMPL+OThdKhTgpkZO7uH0uaDrf+A8/a5+3bvt7eDhhHUAqiMoGzNUAel3zSKyxF0fOxqjBgdeM0P0O4BkAUVgo8D7DQAbd6Ab16BbHEPJqFVE7g2csQoECLhDB7QYKHfFnLDyPH4EDtyoQPUEdvlN8k1zl5aIH6ljMgO90t2qCOwTMb/r3Ew6YU50jOwh8cU1DJ633bpmkIwpdUO76w1jOH/CxmM63wgcYgCGXglp2BXtExYUItpu3cGIrZ3IRXuIAZd/3rIOzz7UKqLtrm30iV+ec46YPWIhks+YDpGWVeonUXO5V5lhRrv71WpD4V6wc3tt/uzd9pDi1e2krU7p+JKyCWFxumToTqjbhr2UdTxu1DkaBYwcFL4BAMwt2W4BDsgdBIF85jG+mVT4qdc6wl0zfdiKcgwePLBgdL3csyuW0u5WmFqg4LxeKOH9GMaQs3nnasyRCgSxGqcGwprZoXWM9c4QiLWfne0R+G/YeOmEHdw/MDgyFk14+p4LTtAle1yy1J6A8+TsXEiPYkf0JJU5umZUTr0aiyNquoHgGDsiM86nsGTShz3ttQDbSACr2XcXrO6bsg5UqeZ0BdmuEfQ6dWTkml6uYRTMbxJLV8tpR7XtfQZjXGmAPLILxQcEyCXrNtioFbF66MEz4nEZGjhnyRxZKkwTR2cpsqRt3SzYQHaIPIrbUoFx3DF7mDIp7+ysPZsKuClwLASt0tBtkihSDk65FOyhr/OvQT8l0OOfqlM3B/sUQvbkTSCT3UzUCjPYsJ20DdFzm7eg3fvM78m+V6VLNEWFIbWaGRwQ23eVBzj4xHNL9+PR0QmbgnFM9OSCvS5Zeka6hw79U/19ARlMf9fnNgK+TlVb6jysuaaCI5vmPzJkW4lepUIg42zBBvaYgW7FqNnQcJxkSwweQ8s1Cws4cAt83k7av989od17orWTbjwzSUbbx//Y2nGPDmrFuzg+3ZILIY2OX0EtIoeSuWM8ChkIOfAljKsGww8EffvStkbQHX7Ou04jVg+Yum83hvmjD/wx6D5nbKF20OMpK8Rd3StygHUtAJvb58ZScyI4qnbS7tj/FCZ5AShOVFelUBeqmHIS1kazdZcqiwHI4Ci+BTpZitYumS6zRGecT2xwghG97Pv392gxurqAuTDHKcsepvpPO0OkvreE+c8EasSBUBmoVMPmm1vmgixiLNiysdj+u+AfmhZKHT0dqHRQuFe2qWj7FMuM6fZFgD1lDvbA6oSU/Ballo7uUgrfqzwygqstl7CIUniAKnJEtIbse9B4ASrRs1yNAymUNJcua0+o/5VAHTIDaKdMN0+ggzOPefGgVQvUdu6gP3ysC8FeyBzKDkGtD8CeGwLbGOovky83RDRvJ61Iq/kdhYUqiIZCISQVl/opimMLvUpBwXOH0/tmkEs2QR9qde6IhkvLfKcM8Dn7LGIAc3XjsKBuPANBITjBwgCeESu4Y5LXBRLG/WsHQHgw8O3y9cFRKxbtE89ggRRvA9Qqt9SMhYVZ6GbGTxM4eAbhB+YCwvUkGs/inAzFo41j+tQfqaNotQGwhnGkHoUltv+4IybA83Ec34VrSQVn4eFYpq7e1BBU0IlnQsNgBt9dOIJMbAgUtmwbCcfMQB82Kmy7tSGn7TpX7Cjo+XEF7d43osuG5hBPd2+o247aa0O2KTwd2AWQmHW7Vh2iGI/ol5borI29FhTOIzhvPCSMlpiygquV/d2QifoMtKg33EI/t3TzUtpdg3HVb7j9hlOaUh2v9XUO2Rk7VlLHrungZwMA6QP534HZKBt3rgePsZI+MmQPH3CQRzZIHUWrqcCOBKdMHY7Kn1yPtHNqaS9GFnqF96UXe+glAbpSgwNGarypULQ2wvgWjq6iya4mSjMGcM7YuOcWZ66IqNfB0cf0hnJogGQkr024sgIe49rvc2EpWl1ZDZ2yzxxfqjsyQ/RF2jUj/02eyPm73JRWwfEbliE0WJ5Y3VEJtBiBYer+8OsmzJZDC5WpVFaOla4PffvBm8uhAXJzAMS7MkIKxvOpPZBKzA3XawSgz+DzCK4Z0Xbdp7Kc00bXSk96ULNaBxsCQ+b4MdAl6dxLerlB0HUvyhAAdecx5oo+2eOcTg54Lt4p8eW2XSQ1RGPbmNZgvNzDmUfsmCHLXk+0u9vVFvEzAIdekLIdZ6oXNN3T18UbtsbM4U0BaU7bZw0U9Ly67+PwA9ruaP5ycnIk59XRb7Un0HzolS5IFySvccS0vZ3XRiViKJzvGTfnW25mQE1smxnv4Ny/6XmrdgLH+QaNnNUxOT231SvhvR65d/CO1fWvKDwg+80BciakZ19HqFmk1LQoMoCwYRH/tzquT9sdw09k33xYwXme1DlScLoByY+lrMl9y20NkRy7OD/3cEz9j4m+WXRaB1c+jvQO+F9ukc7MqfvDFqR/RTYDjq+jsaZudyTfEivVQLkl661Z10kae6wK/T/kXkDlRbnOYCFiv0NxrYP0DvxvoF8juojFLIGRegT05wq6IxnJz28tVcQN0TXIpwAIRuuYXq7Y45M8epZorSlHAEaQVwPk9B2O2eTcfcgMpo5LkCDvtkg/pvQp/HOZIAEgRun6KKAgQb5cBqGQQYIEgNgBEsARJADEkj1CIR4kAMRSf/wKJgsSALIrCbyug8mCBICYARIkSAAIkziYKUgAiJ9EwWRBAkB2ZUbbR+0UwWRB3lL+PwCoy6kdhUNrPQAAAABJRU5ErkJggg==") no-repeat;
	height: 53px;
    width: 200px;
}
.otv .imgfalse {
	background: url("data:image/png;base64,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") no-repeat;
	height: 53px;
    width: 253px;
}
.otv .img_nearly_true {
    background: url("data:image/png;base64,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") no-repeat;
    height: 53px;
    width: 321px;
}*/
</style>
<Script Language="JavaScript">
function isNumeric(n) {return !isNaN(parseFloat(n)) && isFinite(n);}
function getchecked(a,b){
	var tt = document.getElementsByName("Q"+a);
	if(tt[b].checked) tt[b].checked = false;
	else tt[b].checked = true;}
function code(strIn){	
	var strOut=[],ii,jj;
	for(ii=0; ii<strIn.length; ii++) {
		var strTmp=[];
		for(jj=0; jj<strIn[ii].length; jj++){strTmp[jj] = strIn[ii].charCodeAt(jj)-1;if (strTmp[jj]==1039) {strTmp[jj]=1103};}
		strOut[ii]='';
		for(jj=0; jj<strTmp.length; jj++){strOut[ii] += String.fromCharCode(strTmp[jj]);}}
	return strOut;}
function check_me(){
	var otv=[],i,j,tmp,str1,names,vah=false,totaltrueQ=[],totalS=[],total=0,totalQAll=0,totalSAll=0,answerQ=[],answerTrue=0;
	if(document.getElementById("torf1") != null){
		for(i=0;i<vinq.length;i++){
			otv[i]=[];
			for(j=0;j<vinq[i];j++){
				names=document.getElementsByName("Q"+(i+1));
				if(names[j].checked){otv[i][j]=1;
                }
				else otv[i][j]=0;}
			if(parseInt(otv[i].join(''),2)==0)vah=true;}}
	if(document.getElementById("svobod1") != null){
		for(i=0;i<svob.length;i++){
			names=document.getElementsByName("S"+(i+1));
			if(names[0].value=='')vah=true;}}
	if(vah) alert("Вы выполнили не все задания. Проверьте себя.");
	else{
		if(document.getElementById("torf1") != null){
			for(i=0;i<rez.length;i++){
				str1 = rez[i].toString(2);
				while(str1.length < vinq[i]) str1="0"+str1;
				totaltrueQ[i]=0;
				for(j=0;j<str1.length;j++){totaltrueQ[i] += parseInt(str1[j]);}
				totalQAll += kfQ[i];
				if(parseInt(otv[i].join(''),2)==rez[i])	{
                    qwert[i]=1;
					document.getElementById("torf"+(i+1)).innerHTML='<div class="imgtrue"></div>';
					total += kfQ[i];
					answerTrue += kfQ[i];}
				else {
					for(j=0;j<str1.length;j++){
						answerQ[j] = otv[i][j]/parseInt(str1[j]);
						if(isNaN(answerQ[j])) answerQ[j]=2;}
					if(!isNumeric(answerQ.join(''))) {
                    qwert[i]=0;
						document.getElementById("torf"+(i+1)).innerHTML='<div class="imgfalse"></div>';
						tmp=0;
						for(j=0;j<answerQ.length;j++){
							if(answerQ[j]<2) tmp += answerQ[j];
							if(answerQ[j]>2) tmp -= kfFalse[i];}
						if(tmp<0) tmp=0;
						answerTrue += kfQ[i]*tmp/totaltrueQ[i];}
					else {
                    qwert[i]=0.5;
						document.getElementById("torf"+(i+1)).innerHTML='<div class="img_nearly_true"></div>';
						tmp=0;
						for(j=0;j<answerQ.length;j++){if(answerQ[j]<2) tmp += answerQ[j];}
						total += kfQ[i]*tmp/totaltrueQ[i];
						answerTrue += kfQ[i]*tmp/totaltrueQ[i];}}}}
		if(document.getElementById("svobod1") != null){
			for(i=0;i<svob.length;i++){
				totalS[i]=0;
				names=document.getElementsByName("S"+(i+1));
				truerez = code(svob[i]);
				for(j=0;j<truerez.length;j++){if(names[0].value==truerez[j]){totalS[i]=1;}}
				totalSAll += kfS[i];
				if(totalS[i]==1){
					document.getElementById("svobod"+(i+1)).innerHTML="<div class=imgtrue></div>";
					total += kfS[i];
					answerTrue += kfS[i];}
				else document.getElementById("svobod"+(i+1)).innerHTML="<div class=imgfalse></div>";}}
		showResult(totalQAll + totalSAll, answerTrue, total);}}
function showResult(totalQS, answerTrue, total){
	var i,maxQS=0,vv,ii,jj,ss;
	for(i=0;i<kfQ.length;i++) maxQS += kfQ[i];
	for(i=0;i<kfS.length;i++) maxQS += kfS[i];
	vv = total*100/maxQS;
    if (vv>=85)
    {
    ocen=5;
    }
      if (vv>=70&&vv<85)
    {
    ocen=4;
    }
      if (vv>=50&&vv<70)
    {
    ocen=3;
    }
      if (vv<50)
    {
    ocen=2;
    }
    time2= new Date();
    time=time2-time1;

   // hour=time.getHours();
   hour=0;
   // minut=time.getMinutes();
   minut=time/60000|0;
  //  sec=time.getSeconds();
  sec=(time-minut*60000)/1000|0;
koef=answerTrue/totalQS;

var povt='';
for(i=0;i<qwert.length;i++)
{
if(qwert[i]==0 || qwert[i]==0.5)
{
povt+=temas[i]+'<br>';
}

}

if(totalQS==answerTrue.toFixed(0))
{
povt='Нет тем для повторения';
}

	document.getElementById("winotv").innerHTML+=
    '<span style="font-size: 18px;">&nbsp&nbsp&nbsp&nbsp&nbspВаш результат:</span><br/>Общее количество вопросов: <b>'+totalQS+'</b> <br> Максимально возможный балл:<b>'+totalQS.toFixed(1)+
    '</b> <br> Количество вопросов, на которые был дан ответ: <b>'+totalQS+
    '</b> <br> Количество правильных ответов: <b>'+answerTrue.toFixed(1)+
    '</b><br>Процент выполнения теста: <b>'+vv.toFixed(1)+
    '%</b> <br>Оценка: <b>'+ocen+ 
    '</b> <br> Коэффициент усвоения учебного материала: <b>'+koef.toFixed(1)+
    '</b> <br> Время прохождения теста: <b>'+hour+'</b> часов <b>'+minut+'</b> минут <b> '+sec+'</b> секунд <br><br> Перечень тем для повторения: <br><b><span style="font-size: 13px;">'+povt+'</b> </span>'+
    '';
document.getElementById("butSave").style.display = "block";
document.getElementById("qw1").value=qwert[0];
document.getElementById("qw2").value=qwert[1];
document.getElementById('qw3').value=qwert[2];
document.getElementById("qw4").value=qwert[3];
document.getElementById("qw5").value=qwert[4];
document.getElementById("qw6").value=qwert[5];
document.getElementById("qw7").value=qwert[6];
document.getElementById("qw8").value=qwert[7];
document.getElementById("qw9").value=qwert[8];
document.getElementById("qw10").value=qwert[9];
document.getElementById("qwMa").value=ocen;
document.getElementById("qwRi").value=answerTrue.toFixed(1);
	document.getElementById("rezbutton").style.display="none"; 
	document.getElementById("winotv").style.display="block"; 
	aspan = document.getElementsByName("aspan");
	for(i=0;i<aspan.length;i++)	{
		aspan[i].onclick = '';
		aspan[i].className = '';}
	if(document.getElementById("svobod1") != null){
		for(i=0;i<svob.length;i++){
			names=document.getElementsByName("S"+(i+1));
			names[0].disabled = true;}}
	if(document.getElementById("torf1") != null){
		for (ii=1;ii<=rez.length;ii++){ 
			ss = document.getElementsByName("Q"+ii.toString());
			for (jj=0;jj < ss.length;jj++){ss[jj].disabled = "disabled";}}}
	if(vv==100){ document.getElementById("winotv").style.backgroundColor="#E1FFE1"; 
    document.getElementById("td1").height=225;
    }  
	else { 
        
        document.getElementById("td1").height=300+(totalQS-answerTrue.toFixed(0))*23;
        //document.getElementById("td1").
		document.getElementById("winotv").style.color="#000000";
		document.getElementById("winotv").style.boxShadow="0 0 6px #000000"; 
		document.getElementById("winotv").style.backgroundColor="#eeeeee";}}
Array.prototype.shuffle = function( deep ){
  var i = this.length, j, t;
  while(i){
   j = Math.floor( (i--) * Math.random() );
   t = deep && typeof this[i].shuffle!=='undefined' ? this[i].shuffle():this[i];
   this[i] = this[j];
   this[j] = t;}
  return this;};
<!--Окончание сценария -->
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../css/style1.css" rel="stylesheet" type="text/css" />
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
          <li><a href="../eor.jsp" class="home1">Главная</a></li>
          <li><a href="../lpz/lp/lp1/lp1.jsp" class="lekci1">Практикум</a></li>
          <li><a href="test.jsp" class="testy">Контроль знаний</a></li>
          <li><a href="../resursy/present/present1.jsp" class="glos1">Ресурсы</a></li>
          <li><a href="../glossariy/gloss.jsp" class="glos1">Глоссарий</a></li>
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
           <div class="onetest">
<div class="testname">

<h2 class="h2">Тест №3. Объектно-ориентированные принципы Java</h2>
</div>

</div>

<!-- kol vop
10
kol vop end-->

<form name="test" method="post">
<!-- vopr i otveti -->




<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Объявление класса с данным спецификатором означает, что его нельзя расширить и породить от него подкласс:
vopros end -->

<!-- otvet
1
4
0
6
protected
final
void
new



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Результатом выполнения программы

classFinalDemo {
public static void main (String []args) {
finalintnoChange = 20;
noChange = 30;
System.out.println("ЗначениеnoChange = " + noChange);
  }
}

является:

vopros end -->

<!-- otvet
1
4
0
4
20
30
50
сообщение об ошибке



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Выберите утверждения, характеризующие перегруженные методы:
vopros end -->

<!-- otvet
1
3
1
6
это методы, которые находятся в одном классе
это методы, которые имеют одинаковое имя, но различные списки параметров
это методы, которые находятся в разных классах с одинаковым именем, но с различными списками параметров






otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Выберите утверждения, характеризующие переопределенные методы:
vopros end -->

<!-- otvet
1
4
1
10
это методы, которые находятся в суперклассе и в подклассе
это методы, которые имеют одинаковое имя, но различные списки параметров
это методы, которые имеют одинаковую сигнатуру
все варианты





otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Выберите верные утверждения:
vopros end -->

<!-- otvet
1
4
1
14
абстрактным называется класс, который содержит хотя бы один абстрактный метод
в определении абстрактного класса нужно указывать ключевое слово abstract
с помощью абстрактных классов можно объявлять классы, реализованные лишь частично, поручив полную реализацию классам-расширениям
ничего из перечисленного





otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Заполните пропуски:
Класс может _____1______ только один базовый класс, и___2______ несколько интерфейсов.

vopros end -->

<!-- otvet
1
4
0
7
1-расширять (extends); 2-раскрывать (implements)
1-раскрывать (implements); 2-расширять (extends)
1-раскрывать (implements); 2-раскрывать (implements)
1-расширять (extends); 2-расширять (extends)



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Установите соответствие между таблицами:

1	&&		a	Сравнение на неравенство
2	? :		b	Логическое "И"
3	!=		c	Поразрядная инверсия
4	~		d	Условная операция

vopros end -->

<!-- otvet
1
4
0
6
1-c; 2-b; 3-d; 4-a
1-b; 2-d; 3-a; 4-c
1-b; 2-a; 3-d; 4-c
1-c; 2-d; 3-a; 4-b



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Какое из значений k будет равно 10005?

int k=9999, k1,k2; 
k1=(k++) + 5;
System.out.println("k1=" + k1);
System.out.println("k=" + k);
k=9999;
k2=(++k) + 5;
System.out.println("k2=" + k2);
System.out.println("k=" + k);

vopros end -->

<!-- otvet
1
4
0
5
k
k1
k2
Не будет такого значения



otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr -->
<!-- vopros
Выберите верные утверждения о массиве в Java:
vopros end -->

<!-- otvet
1
3
1
6
массив - это совокупность переменных одного типа, хранящихся в смежных ячейках оперативной памяти
массивы в языке Java относятся к ссылочным типам
элементами массивов в Java не могут быть массивы






otvet end -->
</b></font><br />

</div>
<div class="onetest" name="onetest"><font size="4" color="000099"><b>
<!-- nom vopr --> 

<!-- vopros
Что такое JRE?
vopros end -->

<!-- otvet
1
3
0
6
Интегрированная среда разработки на Java
Минимальная реализация виртуальной машины, необходимая для исполнения Java-приложений, без компилятора и других средств разработки
Набор программных инструментов для полноценной работы с языком Java, который включает в себя компилятор, интерпретатор, отладчик, полную библиотеку классов Java и др.




otvet end -->
</b></font><br />

</div>
<br>
</form>    
    <div id="winotv">
<form action="test3.jsp"  method="post"> <!--menyaesh nasootv test!-->
<input type="text" name="qw1" id="qw1" hidden="true">
<input type="text" name="qw2" id="qw2" hidden="true">
<input type="text" name="qw3" id="qw3" hidden="true">
<input type="text" name="qw4" id="qw4" hidden="true">
<input type="text" name="qw5" id="qw5" hidden="true">
<input type="text" name="qw6" id="qw6" hidden="true">
<input type="text" name="qw7" id="qw7" hidden="true">
<input type="text" name="qw8" id="qw8" hidden="true">
<input type="text" name="qw9" id="qw9" hidden="true">
<input type="text" name="qw10" id="qw10" hidden="true">
<input type="text" name="qwMa" id="qwMa" hidden="true">
<input type="text" name="qwRi" id="qwRi" hidden="true">    
<input type="submit" name="butSave" id="butSave" class="buttons" value="Сохранить результат">
        </form>    
  </div>  
        
  <%
  if(request.getParameter("butSave") != null)
  {
  String q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,mar,riA;
  int idU, idT;
  q1 = null; q1=request.getParameter("qw1").toString().trim();
  q2 = null; q2=request.getParameter("qw2").toString().trim();
  q3 = null; q3=request.getParameter("qw3").toString().trim();
  q4 = null; q4=request.getParameter("qw4").toString().trim();
  q5 = null; q5=request.getParameter("qw5").toString().trim();
  q6 = null; q6=request.getParameter("qw6").toString().trim();
  q7 = null; q7=request.getParameter("qw7").toString().trim();
  q8 = null; q8=request.getParameter("qw8").toString().trim();
  q9 = null; q9=request.getParameter("qw9").toString().trim();
  q10 = null; q10=request.getParameter("qw10").toString().trim();
  mar = null; mar=request.getParameter("qwMa").toString().trim();
  riA = null;  riA=request.getParameter("qwRi").toString().trim();
  idU=0; idU= Integer.parseInt(session.getAttribute("idUser").toString());
  idT=0; idT=3; //nomer testa ne zabud mat tvoyu
  try
  {
      String url, sql, user, pass;
      Connection conn;
      Statement stmt;
      user="root";
      pass="root";
  Class.forName("com.mysql.jdbc.Driver");
url = "jdbc:mysql://localhost/klp_java";
conn =DriverManager.getConnection(url,user, pass);
stmt = conn.createStatement();
sql="insert into otv (test_ID, user_ID, question_1, question_2, question_3, question_4,"
        + " question_5, question_6, question_7, question_8, question_9, question_10, right_answers, mark"
        + ") values('"+idT+"', '"+idU+"', '"+q1+"', '"+q2+"', '"+q3+"', '"+q4+"', '"+q5+"', '"+q6+"',"
        + " '"+q7+"', '"+q8+"', '"+q9+"', '"+q10+"', '"+riA+"', '"+mar+"')";
stmt.execute(sql);
stmt.close();
conn.close();
  }
  catch(Exception ex)
  {
      out.println("error");
              }
  }
  %>      
    
   
<div id="rezbutton">
<input type="button" name="simb" onclick="check_me()" value="Проверить результат">
</div>

<Script Language="JavaScript">
var vopr_otv = [
'<font color="#333333" size="3"><p><b>\r\n'+
'Конструктор класса - это…'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf1"></div>' +
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,0)"> специальный метод, который не имеет возвращаемого значения и имеет то же самое название, что и класс</span><br>'
+'<input type=checkbox name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,1)"> метод, который имеет возвращаемое значение и имеет то же самое название, что и класс</span><br>'
+'<input type=checkbox name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,2)"> метод, который не имеет возвращаемого значения и имя конструктора не совпадает с именем класса</span><br>'
+'<input type=checkbox name=Q1 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(1,3)"> специальный метод, который вызывается при создании нового объекта</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Частный доступ, который доступен только из методов данного класса - это…'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf2"></div>' +
'<input type=radio name=Q2><span name="aspan" class="aspan" onclick="getchecked(2,0)"> public</span><br>'
+'<input type=radio name=Q2><span name="aspan" class="aspan" onclick="getchecked(2,1)"> private</span><br>'
+'<input type=radio name=Q2><span name="aspan" class="aspan" onclick="getchecked(2,2)"> protected</span><br>'
+'<input type=radio name=Q2><span name="aspan" class="aspan" onclick="getchecked(2,3)"> friendly</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Заполните пропуски:'+
'</b><br>'+
'<table border=1px color="#fff"  bgcolor="#ff7300"  style="margin:0;color: #fff;" cellpadding="3"><tr><td><b>Описание модификаторов доступа</b></td><td><b>private</b></td><td><b>friendly</b></td><td><b>protected</b></td><td><b>public</b></td></tr>'+
'<tr><td>Тот же самый класс</td><td>Да</td><td>2.</td><td>Да</td><td>Да</td></tr>'+
'<tr><td>Тот же самый пакет, другой класс</td><td>Нет</td><td>Да</td><td>Да</td><td>4.</td></tr>'+
'<tr><td>Тот же самый пакет подкласс</td><td>1.</td><td>Да</td><td>Да</td><td>Да</td></tr>'+
'<tr><td>Другой пакет другой класс</td><td>Нет</td><td>Нет</td><td>Нет</td><td>Да</td></tr>'+
'<tr><td>Другой пакет подкласс</td><td>Нет</td><td>Нет</td><td>3.</td><td>Да</td></tr></table>'+
'</p></font><font color="#333333" size="3"><div class="otv" id="torf3"></div>' +
'<input type=radio name=Q3><span name="aspan" class="aspan" onclick="getchecked(3,0)"> 1 - нет; 2 - нет; 3 - да; 4 - нет</span><br>'
+'<input type=radio name=Q3><span name="aspan" class="aspan" onclick="getchecked(3,1)"> 1 - нет; 2 - да; 3 - нет; 4 - да</span><br>'
+'<input type=radio name=Q3><span name="aspan" class="aspan" onclick="getchecked(3,2)"> 1 - да; 2 - да; 3 - да; 4 - да</span><br>'
+'<input type=radio name=Q3><span name="aspan" class="aspan" onclick="getchecked(3,3)"> 1 - нет; 2 - да; 3 - да; 4 - да</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Выберите верные утверждения о наследовании в Java:'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf4"></div>' +
'<input type=radio name=Q4><span name="aspan" class="aspan" onclick="getchecked(4,0)"> суть наследования состоит в создании производного класса, который имеет возможности базового класса плюс свои собственные</span><br>'
+'<input type=radio name=Q4><span name="aspan" class="aspan" onclick="getchecked(4,1)"> наследование не поддерживает концепцию иерархии классов</span><br>'
+'<input type=radio name=Q4><span name="aspan" class="aspan" onclick="getchecked(4,2)"> при использовании наследования можно описать объект путём определения того класса (или классов), от которого он наследуется</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Объявление класса с данным спецификатором означает, что его нельзя расширить и породить от него подкласс:'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf5"></div>' +
'<input type=radio name=Q5><span name="aspan" class="aspan" onclick="getchecked(5,0)"> protected</span><br>'
+'<input type=radio name=Q5><span name="aspan" class="aspan" onclick="getchecked(5,1)"> final</span><br>'
+'<input type=radio name=Q5><span name="aspan" class="aspan" onclick="getchecked(5,2)"> void</span><br>'
+'<input type=radio name=Q5><span name="aspan" class="aspan" onclick="getchecked(5,3)"> new</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Результатом выполнения программы </b>'+
'<br>'+
'<span style="font-family:Courier, monospace"><font color="#ff7300">class FinalDemo {'+
'<br>'+
'public static void main (String []args) {'+
'<br>'+
'final int noChange = 20;'+
'<br>'+
'noChange = 30;'+
'<br>'+
'System.out.println("Значение noChange = " + noChange);'+
'<br>'+
'  }'+
'<br>'+
'}</font></span>'+
'<br>'+
'является:'+
'</p></font><font color="#333333" size="3"><div class="otv" id="torf6"></div>' +
'<input type=radio name=Q6><span name="aspan" class="aspan" onclick="getchecked(6,0)"> 20</span><br>'
+'<input type=radio name=Q6><span name="aspan" class="aspan" onclick="getchecked(6,1)"> 30</span><br>'
+'<input type=radio name=Q6><span name="aspan" class="aspan" onclick="getchecked(6,2)"> 50</span><br>'
+'<input type=radio name=Q6><span name="aspan" class="aspan" onclick="getchecked(6,3)"> сообщение об ошибке</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Выберите утверждения, характеризующие перегруженные методы:'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf7"></div>' +
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,0)"> это методы, которые находятся в одном классе</span><br>'
+'<input type=checkbox name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,1)"> это методы, которые имеют одинаковое имя, но различные списки параметров</span><br>'
+'<input type=checkbox name=Q7 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(7,2)"> это методы, которые находятся в разных классах с одинаковым именем, но с различными списками параметров</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Выберите утверждения, характеризующие переопределенные методы:'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf8"></div>' +
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,0)"> это методы, которые находятся в суперклассе и в подклассе</span><br>'
+'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,1)"> это методы, которые имеют одинаковое имя, но различные списки параметров</span><br>'
+'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,2)"> это методы, которые имеют одинаковую сигнатуру</span><br>'
+'<input type=checkbox name=Q8 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(8,3)"> все варианты</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Выберите верные утверждения:'+
'</b></p></font><font color="#333333" size="3"><div class="otv" id="torf9"></div>' +
'\<!-- otvet--\>\r\n'+
'<input type=checkbox name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,0)"> абстрактным называется класс, который содержит хотя бы один абстрактный метод</span><br>'
+'<input type=checkbox name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,1)"> в определении абстрактного класса нужно указывать ключевое слово abstract</span><br>'
+'<input type=checkbox name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,2)"> с помощью абстрактных классов можно объявлять классы, реализованные лишь частично, поручив полную реализацию классам-расширениям</span><br>'
+'<input type=checkbox name=Q9 class="niceCheck"><span name="aspan" class="aspan" onclick="getchecked(9,3)"> ничего из перечисленного</span><br>'
,
'<font color="#333333" size="3"><p><b>\r\n'+
'Заполните пропуски:</b>'+
'<br>'+
'Класс может _____1______ только один базовый класс, и___2______ несколько интерфейсов.'+
'</p></font><font color="#333333" size="3"><div class="otv" id="torf10"></div>' +
'<input type=radio name=Q10><span name="aspan" class="aspan" onclick="getchecked(10,0)"> 1-расширять (extends); 2-раскрывать (implements)</span><br>'
+'<input type=radio name=Q10><span name="aspan" class="aspan" onclick="getchecked(10,1)"> 1-раскрывать (implements); 2-расширять (extends)</span><br>'
+'<input type=radio name=Q10><span name="aspan" class="aspan" onclick="getchecked(10,2)"> 1-раскрывать (implements); 2-раскрывать (implements)</span><br>'
+'<input type=radio name=Q10><span name="aspan" class="aspan" onclick="getchecked(10,3)"> 1-расширять (extends); 2-расширять (extends)</span><br>'
];
kodvopr = document.getElementsByName("onetest");
if(mix)vopr_otv.shuffle();
for (jj=0;jj<kodvopr.length;jj++){kodvopr[jj].innerHTML += vopr_otv[jj];}
</script>
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
            <p class="green_right">Введение в Java<br />
            <span class="busniess_area_text1"><a href="test.jsp" class="read_more2">Тест №1</a></span></p>
            
            <p class="green_right">Основы программирования на Java<br />
              <span class="busniess_area_text1"><a href="test2.jsp" class="read_more2">Тест №2</a></span></p>
			   
            <p class="green_right">Объектно-ориентированные принципы Java<br />
              <span class="busniess_area_text1"><a href="#" class="read_more2">Тест №3</a></span></p>
             
			<p class="green_right">Исключения и сборщик мусора<br />
              <span class="busniess_area_text1"><a href="test4.jsp" class="read_more2">Тест №4</a></span></p>
              
		    <p class="green_right">GUI программирование. AWT и Swing<br />
              <span class="busniess_area_text1"><a href="test5.jsp" class="read_more2">Тест №5</a></span></p>
			  
			<p class="green_right">Обработка событий<br />
              <span class="busniess_area_text1"><a href="test6.jsp" class="read_more2">Тест №6</a></span></p>
			  
			<p class="green_right">Работа с графикой<br />
              <span class="busniess_area_text1"><a href="test7.jsp" class="read_more2">Тест №7</a></span></p>
			  
			<p class="green_right">Апплеты<br />
              <span class="busniess_area_text1"><a href="test8.jsp" class="read_more2">Тест №8</a></span></p>
			  
			<p class="green_right">Работа с базами данных<br />
              <span class="busniess_area_text1"><a href="test9.jsp" class="read_more2">Тест №9</a></span></p>
			  
			<p class="green_right">Сервлеты<br />
              <span class="busniess_area_text1"><a href="test10.jsp" class="read_more2">Тест №10</a></span></p>
			  
			<p class="green_right">JavaServer Pages<br />
              <span class="busniess_area_text1"><a href="test11.jsp" class="read_more2">Тест №11</a></span></p>
              
			
          </div>
        </div>
        <div><img src="../../images/event_bottom.jpg" alt="" /></div>
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
  <br>
  <br>
<br>
<br>
<br>
  <br>
<br>
  <br>
  <br>

  <br>
  <br>
  <br>
  <br>
  <br>
 <br>
<br>
  <br>
  <br>
  <br>
  <br>
<br>
<br>
  <br>
  <table border=0 id="tab" name="tab">
  <tr>
  <td id="td1"> </td>
  </tr>
  </table>
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
