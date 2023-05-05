<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
  <link rel="icon" href="https://fanapeel.com/wp-content/uploads/logo_-university-of-maryland-terrapins-testudo-turtle-hold-red-white-m.png">
  <meta charset="ISO-8859-1">
  <title>Deposit Form</title>
  <style type="text/css">
    label {
      display: inline-block;
      width: 200px;
      margin: 5px;
      text-align: left;
    }
    input[type=text], input[type=password], select {
      width: 200px;	
    }
    input[type=radio] {
      display: inline-block;
      margin-left: 45px;
    }
    
    input[type=checkbox] {
      display: inline-block;
      margin-right: 190px;
    }	
    
    button {
      padding: 10px;
      margin: 10px;
    }
  </style>
</head>
<body>
	<div align="center">
		<form:form action="installments" method="post" modelAttribute="user">
			<form:label path="username">Username:</form:label>
			<form:input path="username"/><br/>

			<form:label path="password">Password:</form:label>
			<form:password path="password"/><br/>		

            <form:label path="amountToWithdraw">Amount to Withdraw ($):</form:label>
			<form:input path="amountToWithdraw"/><br/><br/>

            <span>There will be a maximum of 4 installments for the amount you entered</span> <br/><br/>
            <span>If you are starting a new series of installments, enter the total amount</span> <br/>
            <span>Otherwise, if you are making a payment, enter your payment amount</span> <br/><br/>
             <br/>

			<form:button>Pay Installment</form:button>
		</form:form>
    <a href='/'>Home</a>
	</div>
</body>
</html>