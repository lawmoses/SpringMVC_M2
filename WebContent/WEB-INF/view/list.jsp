<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></head>

<p class="w3-left" style="padding-left: 30px;"></p>
<div class="w3-container">
	<span class="w3-center  w3-large">
		<h3>�Խ��� : ${boardid} �� (��ü ��:${count})</h3>
	</span>
	<p class="w3-right w3-padding-right-large">
<!-- ����  -->
		<a href="writeFormUpload">�۾���</a>	<!-- writeForm -->
	</p>
	
	<c:if test="${count==0 }">
		<table class="table-bordered" width="700">
			<tr class="w3-grey">
				<td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
		</table>
	</c:if>
	
	<c:if test="${count!=0 }">

	<table class="w3-table-all" width="700">
		<tr class="w3-grey">
			<td align="center" width="50">��ȣ</td>
			<td align="center" width="250">�� ��</td>
			<td align="center" width="100">�ۼ���</td>
			<td align="center" width="150">�ۼ���</td>
			<td align="center" width="50">�� ȸ</td>
			<td align="center" width="100">IP</td>
		</tr>
	
	<c:forEach  var="article"  items="${articleList}">	
		<tr height="30">
			<td align="center" width="50">${number}</td>
			<c:set var="number" value="${number-1}"/>
			<td width="250">
	
			<c:if test="${article.re_level>0}">
				<img src="../images/level.gif"
					width="${5 * article.re_level}" height="16"> 
				<img src="../images/re.gif">
			</c:if> 
	
			<c:if test="${article.re_level==0}">
	 			<img src="../images/level.gif"  height="16">
			</c:if>
		 		<a href="content?num=${article.num}&pageNum=${currentPage}">
					${article.subject}</a> 

 			<c:if test="article.readcount>=20">
 				<img src="../images/hot.gif" border="0" height="16">
			</c:if>
 			</td>
			<td align="center" width="100">${article.writer}</td>
			<td align="center" width="150">${article.reg_date}</td>
			<td align="center" width="50">${article.readcount}</td>
			<td align="center" width="100">${article.ip}</td>
		</tr>	
	</c:forEach>
	</table>	
	</c:if>
	
	
<div class="w3-center">
	<c:if  test="${count>0 }">

	<c:if test="${startPage > bottomLine }" >
		<a href="list?pageNum=${startPage - bottomLine}">[����]</a>
	</c:if>

	<c:forEach var="i" begin="${startPage}" end="${endPage}">	
		<a href="list?pageNum=${i}"> 
    		<c:if test="${i != currentPage}">[${i}]</c:if>
 			<c:if test="${i == currentPage}"> 
 				<font color='red'>[${i}]</font>	
 			</c:if>
 		</a>
	</c:forEach>
	
		<c:if test="${endPage < pageCount}">	
			<a href="list?pageNum=${startPage+bottomLine}">[����]</a>
		</c:if>		
	</c:if>
	
	</div>
	</div>
	</body>
	
	</html>


