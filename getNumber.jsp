<%@page contentType="text/plain"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%!
    String getNumber(String Name)
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dbjsp","root","");
            PreparedStatement pst = conn.prepareStatement("Select * from Contacts where Name = ?");
            pst.setString(1,Name);
            ResultSet rs = pst.executeQuery();
            StringBuffer bf = new StringBuffer();
            if(rs.next())
            {
                bf.append(rs.getString("Number"));
                //bf.append("<br>");
            }
            else
            {
                bf.append("Not FOund");
            }
            conn.close();
            rs.close();
            return bf.toString();
        }
        catch(Exception e)
        {
            return e.toString();
        }

    }
%>

<%
    String Name = request.getParameter("Name");
    String msg="";
    try
    {
        msg = getNumber(Name);
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<%= msg %>