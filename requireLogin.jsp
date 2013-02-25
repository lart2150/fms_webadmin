<%
boolean isLoggedin = true;
if (session.getAttribute( "username") == null) {
    response.setStatus(302);
    response.setHeader( "Location", "login.jsp" );
    isLoggedin = false;
    return; 
}
%>