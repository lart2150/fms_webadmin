<%@ page import="com.lart2150.fms.*" %>
<%@ include file="header.jsp" %>
      <form class="span4">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input name="username" type="text" class="input-block-level" placeholder="username">
        <input name="password" type="password" class="input-block-level" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
      </form>
<%@ include file="footer.jsp" %>

<%
String name = request.getParameter( "username" );
if (request.getParameter( "username" ) != null && com.lart2150.fms.WebUIHelper.adminLogin(name, request.getParameter( "password" ))) {
  session.setAttribute( "username", name  );
  response.setStatus(301);
  response.setHeader( "Location", "./" );
  response.setHeader( "Connection", "close" );
}
%>