<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* session : 가방 구두 넥타이 별로 각각 준비되어 있다면 해당 상품에 갯수 누적
		그러므로 일단 session이 있다고 가정하고 누적시작*/

		String sangValue = request.getParameter("sangpum"); //select 이름
		String cntValue = request.getParameter("cnt"); //수량
/* 일단 상품명과 개수가 넘어왔으니까
현재 session에 있는 상품별 개수가 몇개인지 알아야함
앞에 만일 구두 3개가 장바구니에 있었고 지금 구두 5개가 넘어왔다면
세션에 있는 개수 + 지금수량
그러므로 세션을 먼저 읽어야함
그 다음에 수량을 누적하기 위해 무슨 상품이 넘어왔는지 물어보면서 작업 */
		
//분류작업
		//상품명과 갯수가 넘어옴
//세션속성명의 값을 읽어서 종류가 3개니까 세션도3개
		Object obj1 = session.getAttribute("cnts1"); //가방
		Object obj2 = session.getAttribute("cnts2"); //구두
		Object obj3 = session.getAttribute("cnts3"); //넥타이 개수

		int cnt1 = 0;
		int cnt2 = 0;
		int cnt3 = 0;
		int cnt = 0;
		if (obj1 != null) {
			/* 처음이면(session없으면 obj1은 null)아무것도 안하고 다음으로 감 */
			cnt1 = (Integer) obj1;
		}
		if (obj2 != null) {
			cnt2 = (Integer) obj2;
		}
		if (obj3 != null) {
			cnt3 = (Integer) obj3;
		}
		
		//가방이 3개라면
		cnt = Integer.parseInt(cntValue); //넘어온 수량을 int로

		if ("bag".equals(sangValue)) {
			cnt1 += cnt; //세션 속성값을 위해 누적 cnt1에는 3이 누적됨
		}
		if ("koodoo".equals(sangValue)) {
			cnt2 += cnt;
		}
		if ("tie".equals(sangValue)) {
			cnt3 += cnt; //넥타이10개 선택시 여기에 10개가 들어감
		}

		//세션에 제대로 된 속성값 저장

		session.setAttribute("cnts1", cnt1); //가방3개
		session.setAttribute("cnts2", cnt2);
		session.setAttribute("cnts3", cnt3);
		// session.invalidate() 세션삭제
	%>

	<h2>현재 장바구니 내용</h2>
	<hr>
	<%
		if (cnt1 != 0) {
	%>
	가방 :
	<%=cnt1%>
	<%
		}
	%>
	<br>
	<%
		if (cnt2 != 0) {
	%>
	구두 :
	<%=cnt2%>
	<%
		}
	%>
	<br>
	<%
		if (cnt3 != 0) {
	%>
	넥타이 :
	<%=cnt3%>
	<%
		}
	%>
	<br>
	<br>

	<a href="bask.jsp">계속 사기</a>
</body>
</html>