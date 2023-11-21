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
	String filename = "";
	int sizeLimit = 15 * 1024 * 1024;

	String realPath = request.getServletContext().getRealPath("upload");
	File dir = new File(realPath);
	if (!dir.exists()) dir.mkdirs();

	MultipartRequest multpartRequest = null;
	multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",new DefaultFileRenamePolicy());
	filename = multpartRequest.getFilesystemName("input");
%>


<%
	BoardDAO boardDAO = new BoardDAO();

	u.setTitle(multpartRequest.getParameter("title"));
	u.setWriter(multpartRequest.getParameter("writer"));
	u.setContent(multpartRequest.getParameter("content"));
	u.setCategory(multpartRequest.getParameter("category"));
	String seq_string = multpartRequest.getParameter("seq");
	int seq_int = Integer.parseInt(seq_string);
	u.setSeq(seq_int);

	String s = filename;
	u.setImg(s);
	System.out.println("s========>" + s);

	int i=boardDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>