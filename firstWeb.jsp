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
	<h1><b>����� �̸��� ����� �Է��� �Ŀ� �����ϼ���.</b></h1>
	<form method="post" >
		�̸� : <input type="text" name="name" id="name"> <p>
		��� : <input type="radio" name="rank" id="rank1" value="1st">1�� <input type="radio" name="rank" id="rank2" value="2nd">2��
		  <input type="radio" name="rank" id="rank3" value="3rd">3�� <input type="radio" name="rank" id="rank4" value="4th">4��
		   <input type="radio" name="rank" id="rank5" value="�õ�">�õ�<p>
		   <input type="submit" id="infoApply" value="�Է�">
		   <input type="reset" id="reset" value="���">
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
			<p>���ϵ帳�ϴ�. <%= name %> �� �̹� ���� ��ŷ <%= rank %>�� �ϼ̱���.</p>
			1���� ���ο� ���� 3���� ī�常�� ������ �� �ֽ��ϴ�. <br />
			���ο� ���� ���� �����Ͻðڽ��ϱ�?
			<input type="button" id="cardPick" value="����!" onclick="location.href='cardmain1st.html'">
			</div>
<%
			}else if("2nd".equals(rank))
			{
%>				
			<div align="center">	
			<p>�ݰ����ϴ�. <%= name %> �� �̹� ���� ��ŷ <%= rank %>�� �ϼ̱���. ���� �� �й��� �ֽñ� �ٶ��ϴ�.</p>
			2���� 4���� ī�带 ������ �� �ֽ��ϴ�.<br />
			���ο� ���� ���� �����Ͻðڽ��ϱ�?
			<input type="button" id="cardPick" value="����!" onclick="location.href='cardmain.html'">
			</div>
<%
			}else if("3rd".equals(rank))
			{
%>				
			<div align="center">	
			<p>�ݰ����ϴ�. <%= name %> �� �̹� ���� ��ŷ <%= rank %>�� �ϼ̱���. ���ο� ���𿡼� �����ǿ� �����غ�����.</p>
			3���� 4���� ī�带 ������ �� �ֽ��ϴ�.<br />
			���ο� ���� ���� �����Ͻðڽ��ϱ�?
			<input type="button" id="cardPick" value="����!" onclick="location.href='cardmain.html'">
			</div>
<%
			}else if("4th".equals(rank))
			{
%>				
			<div align="center">	
			<p>�ݰ����ϴ�. <%= name %> �� �̹� ���� ��ŷ <%= rank %>�� �ϼ̱���. �����ϸ� �õ��� �� ������ ���� �� ���� ���ֽñ� �ٶ��ϴ�.</p>
			4���� 4���� ī�带 ������ �� �ֽ��ϴ�.<br />
			���ο� ���� ���� �����Ͻðڽ��ϱ�?
			<input type="button" id="cardPick" value="����!" onclick="location.href='cardmain.html'">
			</div>
<%
			}else if("�õ�".equals(rank))
			{
%>		
			<div align="center">	
			<p>��Ÿ���׿�. <%= name %> �� �̹� ���� ��ŷ <%= rank %>�� �ϼ̱���. �� �� ������ �� �ʿ䰡 �ֽ��ϴ�.</p>
			
			�õ�Դ� �� ���� ī�带 �� ���� �Ҽ� �ִ� ������ �־����ϴ�. �� 5���� ī�带 �����Ҽ� �ֽ��ϴ�.<br />
			���ο� ���� ���� �����Ͻðڽ��ϱ�?
			<input type="button" id="cardPick" value="����!" onclick="location.href='cardmain5th.html'">
			</div>
<%
			}
%>
		









<%-- <%
			}else if(name == null)
			{
			
			out.println("<script>alert('��ĭ�� ä���ֽñ� �ٶ��ϴ�.(����)');</script>");				
			}
%>
 --%>		


</body>
</html>