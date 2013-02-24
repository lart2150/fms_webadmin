<%@ page import="com.filemaker.adminserver.dbs.*" %>
<%@ page import="com.filemaker.fmslib.datatype.ServerInformation" %>
<%@ page import="com.lart2150.fms.*" %>
<%@ page import="com.filemaker.fmslib.datatype.*" %>
<%@ page import="java.util.*" %>
<%@ include file="requireLogin.jsp" %>
<%@ include file="header.jsp" %>
<%
if (isLoggedin){ %>
<h1>FMS landing page</h1>

<table class="table">
    <thead>
        <tr>
            <th>File Name</th>
            <th>Status</th>
            <th>Size</th>
            <th>Privlages</th>
        </tr>
    </thead>
    <tbody>
<%

DBSManager dbsManager = ServerSingleton.getDBSManager();
List<Database> fileList = dbsManager.getFileList();
Iterator<Database> localIterator = fileList.iterator();
Database file = null;
while (localIterator.hasNext())
{
    out.print("<tr>");
    file = localIterator.next();
    out.print("<td><a href=\"adminfile.jsp?id=" + file.getFileId() + "\">" + file.getFileName() + "</a></td>");
    out.print("<td>" + file.getStatus() + "</td>");
    out.print("<td>" + file.getSize() + "</td>");
    out.print("<td>" + file.getExtendedPrivString() + "</td>");
    //out.print("<td>" + file.getFilePath() + "</td>");
}
%>
    </tbody>
</table>
<% } %>
<%@ include file="footer.jsp" %>