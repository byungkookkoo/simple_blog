<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String filename = "";
    String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
    String encType = "utf-8"; //인코딩 타입
    int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
            new DefaultFileRenamePolicy());

    String subject = multi.getParameter("subject");
    String category = multi.getParameter("category");
    String name = multi.getParameter("name");
    String email = multi.getParameter("email");
    String message = multi.getParameter("message");

    String sql = "insert into post values(?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, subject);
    pstmt.setString(2, name);
    pstmt.setString(3, email);
    pstmt.setString(4, category);
    pstmt.setString(5, message);
    pstmt.executeUpdate();

    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("blog.jsp");
%>
