<%@ page import="com.filemaker.adminserver.dbs.*" %>
<%@ page import="com.filemaker.fmslib.datatype.ServerInformation" %>
<%@ page import="com.lart2150.fms.*" %>
<%@ page import="com.filemaker.fmslib.datatype.*" %>
<%@ page import="java.util.*" %>
<%@ include file="requireLogin.jsp" %>
<%@ include file="header.jsp" %>
<%
if (isLoggedin){ %>
<%









DBSManager dbsManager = ServerSingleton.getDBSManager();
int fileID = (int) Integer.parseInt(request.getParameter( "id" ));
Database file = dbsManager.getFileById(fileID);
%>
<h1><%= file.getFileName() %></h1>
<div class="row">
<div class="span3">Status</div><div class="span9"><%= file.getStatus() %></div>
<div class="span3">Size</div><div class="span9"><%= file.getSize() %></div>
<div class="span3">Guest allowed</div><div class="span9"><%= file.getStatus() %></div>
<div class="span3">Number of connected Clients</div><div class="span9"><%= file.getNumberOfClients() %></div>
<div class="span3">Full Path</div><div class="span9"><%= file.getFilePath() %></div>

<% } %>
<%@ include file="footer.jsp" %>