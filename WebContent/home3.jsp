<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<tittle>
<div style="background:black;height:600px;">

<p><marquee><font color="yellow" size="6">WELCOME</marquee></p></font>
</br></br>
<img src= "https://www.mentorrbuddy.com/images/thumbnail.png"align="left"width="50" height="50"/>
<img src= "https://bharatedu.co.in/wp-content/uploads/2016/06/Logo-Bharat-College-of-Engineering.png"width="300" height="300" align="left"/>
<h1 align="center" size="50" style="bold"><font color="white" size="150"><b>SDK BANK</h1></b></font>
<p align="center" size="16"stle="bold"><font color="white" size="5" ><i>invest your money in safe hands</p></i></font>

</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
<table border="1" cellpading="15" cellspacing="15" align="right">
<tr>
<font  >
<nav>
<ul>
<td> <li><a href="#"><font size="6" color="white"><b><a href="reg1.jsp">NEW ACCOUNT</fornt></a></td></b></li></a>
<td> <a href="#"><font size="6"color="white" ><a href="login2.jsp"><b>BALANCE</fornt></a></td></b></a>
<td><a href="#"><font size="6" color="white"><a href="dep.jsp"><b>DEPOSIT</fornt></a></td></b></a>
<td><a href="#"><font size="6"color="white" ><a href="withdrawform.jsp"><b>WITHDRAW</fornt></a></td><td></b></a>
<td><a href="#"><font size="6"color="white" ><a href="transferform.jsp"><b>TRANSFER</fornt></a></td><td></b></a>
<td><a href="#"><font size="6"color="white"><a href="aboutus.html"><b>ABOUT US</fornt></a></td></b></a></a>
</ul>
</nav>

</tr>
</table>

</font>
</div>
</tittle>
</head>
<body>
<table border="1" cellpading="15" cellspacing="15" ">
<tr>
<td><font size="8" color="blue"><u><b><i>Services</font></b></i></br></u></br>
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTaXamp_cjieKws5x1nqS6jmjVcVzrPL2ZqeTxrh2z1Dy_rZ3K-&usqp=CAU"/>
<p><fontsize="8"><em>1.Advancing of Loans.</br>
2.Overdraft.</br>
3.Discounting of Bills of Exchange.</br>
4.Check/Cheque Payment.</br>
5.Collection and Payment Of Credit Instruments.</br>
6.Foreign Currency Exchange.
7.Consultancy.</br>
8.Bank Guarantee.</br>
9.Remittance of Funds.</br>
10.Credit cards.</br></p></font>
</td>

<td width="1000" height="450" align="center">
<h1 align="center"><font color="red"> ACCOUNT INFO </h1></br></font> 
</br>
</font> 
<%
String thisamount = (String) session.getAttribute("amount");
%>
<div>
<b>Hello , Mr/Mrs:${user.uname}</b>
<br/>
<b>You have deposited RS:</b> <b><%= thisamount %> /-</b>
<b> in your account.</b>
<br/>
<b>THANK YOU FOR VISITING YOUR TRUSTED BANK </b>
<br/>
<b>HAVE A GOOD DAY </b>
<br/><br/>
<a href="./logout3">Logout</a>
</div>
</td>
</tr>
</table>
</body>
</html>
