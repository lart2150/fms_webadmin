<%
session.setAttribute( "username", null );
response.setStatus(302);
response.setHeader( "Location", "login.jsp" );
%>