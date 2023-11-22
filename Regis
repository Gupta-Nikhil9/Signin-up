<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.Cookie" %>
<html>      
    <head>
        <title>
            Registration Page
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
        String ins=request.getParameter("dins");
        if(ins!=null)
        {
        %>
        <h2> <%=ins%></h2>
        <%    
        }
        String reg=request.getParameter("reg");
        if(reg!=null)
        {
            String s1=request.getParameter("un");
            String s2=request.getParameter("up");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql:///ajava?useSSl=false","root","root");
                Statement st =con.createStatement();
                st.executeUpdate("insert  into login values('"+s1+"','"+s2+"')");
                response.sendRedirect("Regis.jsp?dins=User Registered");
            }
            catch(Exception e)
            {
                out.println(e);
            }
        }    
    %>
            <form action="Regis.jsp">
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
                            <th colspan="2"><input type="submit" value="Register" name="reg" class="a"></th>
                        </tr>
                    </table>
                </div>
            </form>
        </center>
    </body>
</html>
