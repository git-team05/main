<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="team05.main.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="team05.main.MainDAO"%>
<%@ page language="java" contentType="text/html; 
	charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> ::::team05 main page:::: </title>
	<link href="main.css" rel="stylesheet" type="text/css" >
</head>
<%
	MainDAO dao = MainDAO.getInstance();
	// 마감임박 공구 가져오기
	List soonEndProList = dao.getSoonEndPro();
	// 진행중인 공구 가져오기 (최신순)
	List sellingProList = dao.getSellingPro();
	// 실시간랭킹 공구 가져오기 (판매개수 높은순)
	List likeProList = dao.getLikePro();
	
	// 마감까지 d-day 구하기 위해 미리 선언
	Calendar today = Calendar.getInstance();
	Calendar cal = Calendar.getInstance();
	long dayday = 0;
%>
<body>
<div align="center">
	<jsp:include page="../main/layoutTop.jsp"/>		
</div>
<div align="center">
	<table border="5" width="500"> <!-- 전체 윤곽 테이블 -->
		<tr> <!--첫째줄 tr 시작-->
			<td colspan="2">
				<table> <!-- 마감임박 공동구매 들어갈 테이블 시작 -->
					<tr>
						<td>
							<table>
								<tr>
									마감임박 공동구매
									<%for(int i = 0; i<soonEndProList.size(); i++) {
										ProductDTO 	dto = (ProductDTO)soonEndProList.get(i);
										// 가격 숫자 > 문자로 변경
										String price = Integer.toString(dto.getProPrice());
										%>
									<td>
										<table onclick="location.href='/team05/product/productContent.jsp?proNum=<%=dto.getProNum()%>'">
										<tr>
											<td rowspan="3">
												<img src="/team05/imgs/<%=dto.getThumbImg() %>" width=450px height=450px />
											</td>
											<td>
											<% // d-day 계산
											cal.setTime(dto.getEndDate());
											dayday = Math.abs(((cal.getTimeInMillis()- today.getTimeInMillis())/(24*60*60*1000))); %> 
											D-<%= dayday %> <br />
											</td>
										</tr>
										<tr>
											<td>
												<%=dto.getProName() %>
											</td>
										</tr>
										<tr>
											<td>
												<%=price.replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",") %> 원
											</td>
										</tr>
									</table>
								</td>
								<%} %>
								</tr>
							</table> <!-- 마감임박 공동구매 들어갈 테이블 끝 -->
						</td>
					</tr> <!--첫째줄 tr 끝-->
				</table>
			</td>
		</tr>
		<tr> <!--둘째줄 tr 시작-->
			<td> <!--  진행중인공구 -->
				<table> <!-- 진행중인 공동구매 들어갈 테이블 시작-->
					<tr>
						진행중인 공동구매
						<%for(int i = 0; i < sellingProList.size(); i++) {
							ProductDTO dto = (ProductDTO)sellingProList.get(i);
							// 가격 숫자 > 문자로 변경
							String price = Integer.toString(dto.getProPrice());
							%>
						<td>
							<table>
								<tr>
									<td>
										<a href="/team05/product/productContent.jsp?proNum=<%=dto.getProNum()%>">
										<% // d-day
										cal.setTime(dto.getEndDate());
										dayday = Math.abs(((cal.getTimeInMillis()- today.getTimeInMillis())/(24*60*60*1000))); %> 
										D-<%= dayday %> <br />
										<img src="/team05/imgs/<%=dto.getThumbImg() %>" width=300px height=300px /> <br />
										<%= dto.getProName() %> <br />
										<%=price.replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",") %> 원
										</a>
									</td>					
								<tr>
							</table>
						</td>
						<%} %>
					</tr>
				</table> <!-- 진행중인 공동구매 들어갈 테이블 끝-->
			</td> 
			<td> <!--  실시간랭킹 -->
				<table> <!-- 실시간랭킹 들어갈 테이블 시작 -->
					실시간 랭킹
					<%for(int i = 0; i < likeProList.size(); i++) {
						ProductDTO dto = (ProductDTO)likeProList.get(i);%>
						<tr>
							<td>
								<a href="/team05/product/productContent.jsp?proNum=<%=dto.getProNum()%>">
									<%=i+1%> <%=dto.getProName()%>
								</a>
							</td>
						</tr>
					<%} %>
				</table> <!-- 실시간랭킹 들어갈 테이블 끝 -->
			</td>  <!--  실시간랭킹 -->
		</tr> <!--둘째줄 tr 끝-->
	</table> <!-- 전체 윤곽 테이블 -->
</div>
<div align="center">
	<jsp:include page="../main/layoutBottom.jsp"/>		
</div>
</body>
</html>