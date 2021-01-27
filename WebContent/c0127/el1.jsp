<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% 
double kab = 37.8;
String kab2 = null;
%>

<%= "온달" %> <!-- 표현식 out.println("온달")-->
${"온달"}  <!-- el방식 -->
<br>

${"형이 말하는데 el 네가 왜 거기서 나와"}<br>
${"el"}은 참 간단해서 좋지만 공부는 해야해<br>

${"다음 el의 답은 뭘까"}<br>

${100} ${100+200 } ${100 >2 } ${200.35 } ${10 %3 }<br>
${false } ${empty kab2 } ${empty ""}  ${empty "a" } ${null }
등같은 표현이 가능해 <br>

<!-- 값이 없는 null 및 형변환등에 flexible
nullpoint error가 없는 것이 el 즉, error x -->
<!-- 자바에서는 aa==null or aa.equlas("") -->

문자형숫자 * 숫자<br>
<!-- 자바에서는 -->
<%=Integer.parseInt("100") * 200 %><br>
<!-- el에서는 -->
${"100"*200} <!-- 20000 -->

${ 50 ==50 }<br>
${ 50 eq 50 }<br>
${(100 >3) ? "커": "작아" }<br> <!-- 자바의 3항연산자 -->

${50 mod 5 }<br><!-- 나머지 연산자 --> 

<!-- 하하vs호호를 출력하기 위해 3가지 방법 사용중 
4ㄱㅏ지 정도의 표현을 사용해본다면 -->

${"하하 vs 호호"} <br>
<% out.println("하하 vs 호호"); %><br> <!-- scriptlet -->
<%! String hahahoho="하하 vs 호호"; %> <!-- declaration -->
<%=hahahoho %> <!-- expression -->

</body>
</html>