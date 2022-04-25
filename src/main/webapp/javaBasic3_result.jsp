<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください
	String name = request.getParameter("name");

    // 入力値取得
    String age = request.getParameter("age");
    int age20 = Integer.parseInt(age);
    // ロボットからの返信用メッセージ作成
    String bloodType = request.getParameter("bloodType");
	String typeA = request.getParameter("typeA");
	String typeB = request.getParameter("typeB");
	String typeAB = request.getParameter("typeAB");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->
    <p>こんにちは、<%= name %>さん！</p>
    <% if (age20 == 20) {
          out.println("私と同い年なんですね！");
         }
       else if (age20 > 20) {
          out.println(" 私よりも" + (age20-20) + "歳年上ですね。");
          }
       else if(age20 < 20) {
          out.println("私よりも" + (20-age20) + "歳年下ですね。");
       }%>
    <% switch (bloodType) {
    case "typeA":
        out.println("私もA型です！");
        break;
    case "typeB":
        out.println("B型の人と話すのは初めてです。");
        break;
    case "typeAB":
        out.println("私の母がAB型です");
        break;
    default:
        out.println("私の父がO型です");
        break;
    }
 %>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>