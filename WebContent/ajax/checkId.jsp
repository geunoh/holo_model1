<%@page import="org.yolo.holo.dao.DounorsDAO"%>
<%@page import="org.yolo.holo.dao.DonutsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	
	int cnt = DounorsDAO.selectCheckId(id);
	
%>
{"count" : <%=cnt %>}