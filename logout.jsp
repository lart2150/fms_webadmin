<%
session.setAttribute( "username", null );
response.setStatus(301);
response.setHeader( "Location", "login.jsp" );
%>