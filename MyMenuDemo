<%@page import="javax.servlet.http.Cookie" %>
<html>      
    <%
        Cookie ck[]=request.getCookies();
        if (ck!=null)
        {
    %>
            <head>
        <title>
            Mymenu Page
        </title>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body> 
        <div id="mymenu">
            <ul>
                <li><a href="MyMenuDemo.jsp">HOME</a></li>
                <li><a href="Logout.jsp">LOGOUT</a></li>
                <li>CONTACT</li>
            </ul>
        </div>
    </body>
    <%
        }
        else{
            response.sendRedirect("Login.jsp?Wrg=Wrong Process Login To Continue");
        }
    %>
</html>
