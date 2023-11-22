<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.Cookie" %>
<html>      
    <head>
        <title>
            Login Page
        </title>
        <link rel="stylesheet" href="abc.css"/>
    </head>
    <body>  
        <div id="mymenu">
            <ul>
                <li><a href="Login.jsp">LOGIN</a></li>
                <li><a href="Regis.jsp">REGISTER</a></li>
                <li>CONTACT</li>
            </ul>
        </div>
        <center>
            <%
        String invalid=request.getParameter("inv");
        if(invalid!=null)
        {
        %>
        <h2> <%=invalid%></h2>
        <%    
        }
        String wrg=request.getParameter("wrg");
        if(wrg!=null)
        {
        %>
        <h2> <%=wrg%></h2>
        <%    
        }
        String log=request.getParameter("log");
        if(log!=null)
        {
            String s1=request.getParameter("un");
            String s2=request.getParameter("up");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql:///ajava?useSSl=false","root","root");
                Statement st =con.createStatement();
                ResultSet rs=st.executeQuery("select *from Login where uname='"+s1+"' and upass='"+s2+"'");
                if(rs.next())
                {
                    out.println("<h2>Login Complete</h2>");
                    Cookie ck=new Cookie("uname",s1);
                    ck.setMaxAge(60*60);
                    response.addCookie(ck);
                    response.sendRedirect("index.html");
                }
                else
                {
                    response.sendRedirect("Login.jsp?inv=Invalid user name and password");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        }    
    %>
            <form action="Login.jsp">
                <div id="mydata">
                    <table cellpadding="12">
                        <tr>
                            <td>Enter Name</td>
                                <td><input type="text" class="b" placeholder="Name" name="un"></td>
                        </tr>
                        <tr>
                            <td>Enter Pass</td>
                            <td><input type="Password" class="b" placeholder="Pass" name="up"></td>
                        </tr>
                        <tr>
                            <th colspan="2"><input type="submit" value="Login" name="log" class="a"></th>
                        </tr>
                    </table>
                </div>
            </form>
        </center>
    </body>
</html>
