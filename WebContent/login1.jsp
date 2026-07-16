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
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js" 
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript"
    src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
    <script type="text/javascript">
 
    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
            	Username: {
                    required: true,
                    Username: true
                },
         
                Password: "required",
            },
             
            messages: {
            	Username: {
                    required: "Please enter email",
                    Username: "Please enter a valid email address"
                },
                 
                Password: "Please enter password"
            }
        });
 
    });
</script>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<table border="1"cellpading="40" cellspacing="40">
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
<td><font size="10" color="blue"><u>LOGIN PAGE:</font></b></i></u></br></br>
<form action="./logdata1" method="post">
<p>Enter UserName</p>
<input type="text" name="Username"/>
<br/>
<p>Enter Password</p>
<input type="password" name="Password"/>
<br/><br/>${message}
<input type="submit" value="Login">
</form>
<a href=reg1.jsp>Sign Up</a>
</td>
<td><font size="7" color="blue"><b><u><i>Welcome</font></b></i></u></br></br>
<img src="https://t3.ftcdn.net/jpg/02/20/14/38/240_F_220143804_fc4xRygvJ8bn8JPQumtHJieDN4ORNyjs.jpg"align="center"width="600" height="300"/>
<p><em>Congratulations and welcome to the team! We believe that what a strong group of people can accomplish together is much larger, far greater, and will exceed that which an individual can accomplish alone.We asure you full co-operation from our side.</p></td></em>
</tr>
</table>

</body>
</html>