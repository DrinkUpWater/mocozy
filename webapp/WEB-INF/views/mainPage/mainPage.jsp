<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<!-- 공용 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/jo/css/common_css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/jo/css/mainPage_css/mainPage.css">
</head>

<%@ include file="../common/header.jsp"%>
<%@ include file="../mainPage/banner.jsp"%>
<body>
	<div class="main">
		<%@ include file="../mainPage/cateButton.jsp"%>
		
		<!--  1번 -->
		<div class="screen">
			<div class="box">
				<div class="screenheader">
					<h1 class="title">주간 베스트 TOP20👑</h1>
					<div class="selectBox"><a href="cateBest20.ct">모두보기</a></div>
				</div>
				<div class="display">
				
					<c:forEach var="club" items="${clist}">
					<div class="contentcard">
						<div class="socialing">
							<a class="cardlink" href="detail.cl?cno=${club.clubNo}"> 
							<img class="img" src="${club.thumbnailImg}" />
								
								<div class="info">
									<div class="subject">
										<div class="tag">${club.clubType}</div>
									</div>

									<div class="infotitle">${club.clubTitle}</div>

									<div class="describe">
										 <svg class="image" xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
											 <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
										</svg> ${club.address} · ${club.eventDate}
									</div>

									<div class="participant">
										<img alt="participant" class="img"/> 
										<span class="span">
											<img class="cardImg" src="_blank"/>
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank"/>
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span>
										<div class="socialmember">
											<svg class="people" xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
											  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5.784 6A2.24 2.24 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.3 6.3 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
											</svg>
										<div class="count">${club.count}/5</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
					</c:forEach>
					
					
			</div>
		</div>


	<%@ include file="../mainPage/rank.jsp"%>
	<%@ include file="../mainPage/subBanner.jsp"%>
	
	<div class="box">
		<div class="screenheader">
			<h1 class="title">다수가 본 최다 조회수 HOT 클래스 🔥 </h1>
			<div class="selectBox"><a href="cateHot.ct">모두보기</a></div>
		</div>

	<div class="display">
	<c:forEach var="club" items="${flist}">
					<div class="contentcard">
						<div class="socialing">
							<a class="cardlink" href="detail.cl?cno=${club.clubNo}"> 
							<img class="img" src="${club.thumbnailImg}" />
							
								<div class="info">
									<div class="subject">
										<div class="tag">${club.clubType}</div>
									</div>

									<div class="infotitle">${club.clubTitle}</div>

									<div class="describe">
										 <svg class="image" xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
											 <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
										</svg> ${club.address} · ${club.eventDate}
									</div>

									<div class="participant">
										<img alt="participant" class="img"/> 
										<span class="span">
											<img class="cardImg" src="_blank"/>
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank"/>
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span> 
										<span class="span"> 
											<img class="cardImg" src="_blank" />
										</span>
										<div class="socialmember">
											<svg class="people" xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
											  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5.784 6A2.24 2.24 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.3 6.3 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
											</svg>
										<div class="count">${club.count}/5</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>	
				</div>	

		</div>			
	</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
	<%@ include file="../common/topButton.jsp"%>

</html>