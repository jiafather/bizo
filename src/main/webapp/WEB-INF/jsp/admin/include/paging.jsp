<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<c:set var="sNum" value="${ currentPageIndex - ((currentPageIndex-1)%pageGroupSize) }" />
<c:set var="eNum" value="${ sNum-1+pageGroupSize<totPageSize?sNum-1+pageGroupSize:totPageSize}" />
<!-- 								  <li class="disabled"><a href="#">이전</a></li> -->
<li><a href="javascript:goList('1');">이전</a></li>
<c:forEach begin="${sNum}" end="${eNum}" varStatus="i" step="1">
    <c:choose>
        <c:when test="${currentPageIndex==(sNum + i.count -1)}">
			<li class="active"><a href="javascript:goList('${sNum + i.count -1}');">${sNum + i.count -1}</a></li>
        </c:when>
        <c:otherwise>
			<li><a href="javascript:goList('${sNum + i.count -1}');">${sNum + i.count -1}</a></li>
        </c:otherwise>
    </c:choose>
</c:forEach>
<li><a href="javascript:goList('${ sNum-1+pageGroupSize<totPageSize?sNum+pageGroupSize:totPageSize}');">다음</a></li>
