<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>
<body align="center">

	<div align="center">
	<h1><b>당신의 이름과 등수를 입력한 후에 입장하세요.</b></h1>
	<form method="post" >
		이름 : <input type="text" name="name" id="name"> <p>
		등수 : <input type="radio" name="rank" id="rank1" value="1st">1등 <input type="radio" name="rank" id="rank2" value="2nd">2등
		  <input type="radio" name="rank" id="rank3" value="3rd">3등 <input type="radio" name="rank" id="rank4" value="4th">4등
		   <input type="radio" name="rank" id="rank5" value="꼴등">꼴등<p>
		   <input type="submit" id="infoApply" value="입력">
		   <input type="reset" id="reset" value="취소">
	</form>
	</div>
			<%!	String name, rank; %>
			
<%			
			request.setCharacterEncoding("euc-kr"); 
			name = request.getParameter("name");
			rank = request.getParameter("rank");
		
			if("1st".equals(rank))
			{
%>
			<div align="center">	
			<p>축하드립니다. <%= name %> 님 이번 시즌 랭킹 <%= rank %>을 하셨군요.</p>
			1등은 새로운 시즌에 3장의 카드만을 선택할 수 있습니다. <br />
			새로운 시즌 덱을 선택하시겠습니까?
			<input type="button" id="cardPick" value="도전!" onclick="location.href='cardmain1st.html'">
			</div>
<%
			}else if("2nd".equals(rank))
			{
%>				
			<div align="center">	
			<p>반갑습니다. <%= name %> 님 이번 시즌 랭킹 <%= rank %>을 하셨군요. 조금 더 분발해 주시기 바랍니다.</p>
			2등은 4장의 카드를 선택할 수 있습니다.<br />
			새로운 시즌 덱을 선택하시겠습니까?
			<input type="button" id="cardPick" value="도전!" onclick="location.href='cardmain.html'">
			</div>
<%
			}else if("3rd".equals(rank))
			{
%>				
			<div align="center">	
			<p>반갑습니다. <%= name %> 님 이번 시즌 랭킹 <%= rank %>을 하셨군요. 새로운 시즌에선 상위권에 도전해보세요.</p>
			3등은 4장의 카드를 선택할 수 있습니다.<br />
			새로운 시즌 덱을 선택하시겠습니까?
			<input type="button" id="cardPick" value="도전!" onclick="location.href='cardmain.html'">
			</div>
<%
			}else if("4th".equals(rank))
			{
%>				
			<div align="center">	
			<p>반갑습니다. <%= name %> 님 이번 시즌 랭킹 <%= rank %>을 하셨군요. 여차하면 꼴등할 수 있으니 조금 더 열겜 해주시기 바랍니다.</p>
			4등은 4장의 카드를 선택할 수 있습니다.<br />
			새로운 시즌 덱을 선택하시겠습니까?
			<input type="button" id="cardPick" value="도전!" onclick="location.href='cardmain.html'">
			</div>
<%
			}else if("꼴등".equals(rank))
			{
%>		
			<div align="center">	
			<p>안타깝네요. <%= name %> 님 이번 시즌 랭킹 <%= rank %>을 하셨군요. 좀 더 연습을 할 필요가 있습니다.</p>
			
			꼴등에게는 한 장의 카드를 더 선택 할수 있는 혜택이 주어집니다. 총 5장의 카드를 선택할수 있습니다.<br />
			새로운 시즌 덱을 선택하시겠습니까?
			<input type="button" id="cardPick" value="도전!" onclick="location.href='cardmain5th.html'">
			</div>
<%
			}
%>
		









<%-- <%
			}else if(name == null)
			{
			
			out.println("<script>alert('빈칸을 채워주시기 바랍니다.(버럭)');</script>");				
			}
%>
 --%>		


</body>
</html>