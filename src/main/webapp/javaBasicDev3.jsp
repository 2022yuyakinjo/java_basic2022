<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String operator = request.getParameter("operator");
		int answer = 0;
		int no1 = 0;
		int no2 = 0;
	     //「requestオブジェクトが持っているgetParameterメソッドを、引数"name"で呼び出します」
	      // 「その戻り値でString型の変数nameを初期化します」
	      
	   if (num1 != "" &&  num2 != "") {
		    no1 = Integer.parseInt(num1); 
	        no2 = Integer.parseInt(num2);
	   }
	 	   switch(operator){
		   case "add":
			   answer = no1 + no2;
			   operator = "+";
			   break;
		   case "sub":
			   answer = no1 - no2;
			   operator = "-";
			   break;
		   case "mul":
			   answer = no1 * no2;
			   operator = "×";
			   break;		   
		   case "div":
			   answer = no1 / no2;
			   operator = "÷";
			   break;
	   }

    // 表示するメッセージ用の変数
		String reply1 = "数値を入力してください";
        
    // メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
    <%
    if ( num1 == ""  && num2 == "" ) {
		reply1 = "数値が両方とも未入力です";
	} else if ( num1 == "" || num2 == "" ) {
		reply1 = "数値を入力してください";
	} else if ( num1 != "" && num2 != "" ) {
		reply1 = num1 + operator + num2 + "=" + answer;
	}
	   
	out.println(reply1);
    %>
    
  </p>

  <form action="javaBasicDev3.jsp" method="post">   
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select>
     <input type="number" min="1" max="999999" class="number" name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>