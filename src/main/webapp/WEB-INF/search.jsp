<!DOCTYPE html>
<html>
<head>
    <title>Jsp Sample</title>
    <%@page import="java.sql.*;"%>
</head>
<body bgcolor=yellow>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = (Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/forum","root","1066");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from dbschema.doctor;");
    %><table border=1 align=center style="text-align:center">
      <thead>
          <tr>
             <th>ID</th>
             <th>NAME</th>
             <th>SKILL</th>
             <th>ACTION</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("cedula") %></td>
                <td><%=rs.getString("nombres") %></td>
                <td><%=rs.getString("apellidos") %></td>
                <td><%=rs.getString("fecha_nacimiento") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("especialidad") %></td>
                <td><%=rs.getString("empleador") %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    
    %>
</body>
</html>