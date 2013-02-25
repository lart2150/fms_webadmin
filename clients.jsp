<%@ page import="com.lart2150.fms.*,com.filemaker.adminserver.*,com.filemaker.fmslib.datatype.*,com.filemaker.adminserver.dbs.*" %>
<%@ page import="java.util.*" %>
<%@ include file="requireLogin.jsp" %>
<%@ include file="header.jsp" %>
<%
if (isLoggedin){ %>
<h1>FMS landing page</h1>
<table class="table">
    <thead>
        <tr>
            <th>Client Name</th>
            <th>Client IP</th>
            <th>Client Version</th>
            <th>Session Name</th>
        </tr>
    </thead>
    <tbody>
<%

DBSManager dbsManager = ServerSingleton.getDBSManager();
List<Client> clientList = dbsManager.getClientList();
Iterator<Client> localIterator = clientList.iterator();
Client client = null;
while (localIterator.hasNext())
{
    out.print("<tr>");
    client = localIterator.next();
    out.print("<td><a href=\"adminclient.jsp?id=" + client.getClientId() + "\">" + client.getClientName() + "</a></td>");
    out.print("<td>" + client.getClientAddress() + "</td>");
    out.print("<td>" + client.getAppVersion() + "</td>");
    out.print("<td>" + client.getSessionName() + "</td>");
    out.print("</tr>");
}
%>
    </tbody>
</table>
<%
}
%>
<%@ include file="footer.jsp" %>