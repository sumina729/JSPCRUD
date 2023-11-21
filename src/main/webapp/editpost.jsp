<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.jspcrud.BoardDAO"%>

<%@ page import ="com.example.jspcrud.*, java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.awt.datatransfer.DataFlavor" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.jspcrud.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();

	u.setTitle(request.getParameter("title"));
	u.setWriter(request.getParameter("writer"));
	u.setContent(request.getParameter("content"));
	u.setCategory(request.getParameter("category"));
	String seq_string = request.getParameter("seq");
	int seq_int = Integer.parseInt(seq_string);
	u.setSeq(seq_int);

	int i=boardDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>