<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>The tableName Database Table </TITLE>
    </HEAD>

    <BODY>
        <H1>The tableName Database Table </H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/newschema?useSSL=false", "root", "1066");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select nombres, apellidos, especialidad from doctor order by especialidad asc") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>NOMBRES</TH>
                <TH>APELLIDOS</TH>
                <TH>ESPECIALIDAD</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>