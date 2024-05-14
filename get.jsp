<%@page contentType="text/plain"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%!
    String searchNumber(String name)
    {
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dbjsp","root","");
        String sql = "Select * from contacts where Name=?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setString(1,name);
        ResultSet rs = pst.executeQuery();
        StringBuffer bf = new StringBuffer();
        if(rs.next())
        {
            bf.append(rs.getString("Number"));
        }
        rs.close();
        conn.close();
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
    out.println(Name);
    String msg= "";
    try
    {
        msg = searchNumber(Name);
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<%= msg %>