<%@ page import="com.filemaker.adminserver.dbs.*" %>
<%@ page import="com.filemaker.fmslib.datatype.ServerInformation" %>
<%@ page import="com.lart2150.fms.*" %>
<%@ page import="com.filemaker.fmslib.datatype.*" %>
<%@ page import="java.util.*" %>
<%@ include file="requireLogin.jsp" %>
<%
if (isLoggedin){ 
    int fileID = (int) Integer.parseInt(request.getParameter( "id" ));
    DBSManager dbsManager = ServerSingleton.getDBSManager();
    Database file = dbsManager.getFileById(fileID);
    int sessionid = com.lart2150.fms.WebUIHelper.getSession((String)session.getAttribute( "username"));
    if ("close".equals(request.getParameter("action"))) {
        Vector<String> files = new Vector<String>(2);
        files.add(file.getFileName());
        dbsManager.closeFiles(files, "Closing",120, sessionid);
    } else if ("open".equals(request.getParameter("action"))) {
        Vector<String> files = new Vector<String>(2);
        files.add(file.getFileName());
        dbsManager.openFiles(files, sessionid);
    } else if ("pause".equals(request.getParameter("action"))) {
        Vector<String> files = new Vector<String>(2);
        files.add(file.getFileName());
        dbsManager.pauseFiles(files, sessionid);
    } else if ("resume".equals(request.getParameter("action"))) {
        Vector<String> files = new Vector<String>(2);
        files.add(file.getFileName());
        dbsManager.resumeFiles(files, sessionid);
    }
    response.setStatus(302);
    response.setHeader( "Location", "adminfile.jsp?id=" + fileID );
}
%>
