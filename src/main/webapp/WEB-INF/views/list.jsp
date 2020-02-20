<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<form action="list" method="post">
<select name="condition">
                    <option value="">请选择</option>
                     <c:if test="${condition=='user_id' }">
                    <option value="user_id" selected>作者</option>
                    </c:if>
                    <c:if test="${condition!='user_id' }">
                    <option value="user_id">作者</option>
                    </c:if>
                     <c:if test="${condition=='commentCnt' }">
                    <option value="commentCnt" selected>评论数量</option>
                    </c:if>
                    <c:if test="${condition!='commentCnt' }">
                    <option value="commentCnt">评论数量</option>
                    </c:if>
             </select>
             开始时间：<input type="date" name="start" value="${start}">
             结束时间: <input type="date" name="end" value="${end}">
             
             <input type="submit" value="查询">
             <table>
                <tr>
                   <td>id</td>
                   <td>文章标题</td>
                   <td>文章发布时间</td>
                   <td>作者</td>
                   <td>评论数量</td>
                   <td>文章状态</td>
                </tr>
                <c:forEach items="${articleList }" var="a">
                  <tr>
                   <td>${a.id }</td>
                   <td>${a.title }</td>
                   <td>${a.created}</td>
                   <td>${a. username}</td>
                   <td>${a.commentcnt }</td>
                   <td>${a.status==1?'审核通过':审核未通过 }</td>
                  </tr>
                </c:forEach>
             </table>
</form>
</body>
</html>