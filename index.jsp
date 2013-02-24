<%@ page import="com.filemaker.adminserver.dbs.DBSAgent" %>
<%@ page import="com.filemaker.fmslib.datatype.ServerInformation" %>
<%@ page import="com.lart2150.fms.*" %>
<%@ include file="requireLogin.jsp" %>
<%@ include file="header.jsp" %>
<%
if (isLoggedin){ %>
<h1>FMS landing page</h1>
Welcome back <%= session.getAttribute( "username" ) %>
<% } %>
<%@ include file="footer.jsp" %>