<%@ page import = "java.sql.*"%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<%
    String Person =  user.getName() ;
    String Song = request.getParameter("Song");
    String Stars = request.getParameter("Stars");
    String Review = request.getParameter("Review");
    
try{
Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","admin");
    PreparedStatement ps = conn.prepareStatement("insert into reviews(Person,Song,Stars,Review) values(?,?,?,?);");
    ps.setString(1,Person);
    ps.setString(2,Song);
    ps.setString(3,Stars);
    ps.setString(4,Review);
    int x = ps.executeUpdate();
    if (x>0){
    out.println("Thanks for rating");
            }

}catch(Exception e){
   out.println(e);

}
  %> 