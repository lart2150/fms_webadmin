<%@ page import="com.filemaker.adminserver.dbs.*" %>
<%@ page import="com.filemaker.fmslib.datatype.ServerInformation" %>
<%@ page import="com.lart2150.fms.*,com.filemaker.adminserver.*" %>
<%@ include file="requireLogin.jsp" %>
<%@ include file="header.jsp" %>
<%
if (isLoggedin){ %>
<h1>FMS landing page</h1>
Welcome back <%= session.getAttribute( "username" ) %>

<%
DBSManager dbsManager = ServerSingleton.getDBSManager();
AdminServerManager admin = ServerSingleton.getAdminServerManager();
%>
<div class="row">
    <div class="span3">Database Server Running</div><div class="span9"><%= admin.isDBSAvailable() %></div>
</div>
<div class="row">
    <div class="span3">Connected Clients</div><div class="span9"><%= dbsManager.getClientList().size() %></div>
</div>
<div class="row">
    <div class="span3">Files</div><div class="span9"><%= dbsManager.getFileList().size() %></div>
</div>
<% } else { return; }  %>
<%@ include file="footer.jsp" %>