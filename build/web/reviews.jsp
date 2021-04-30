<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Music webpage</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
      integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  </head>
  <body style="background: url(img/dd-min.jpg)">
      
      </div>
    <div class="navbar">
      <a class="logo">Music <span>Rating and Reviews</span></a>
      <nav>
        <ul class="navlist">
          <li><a href="music.jsp">Home</a></li>
          <li><a href="#">Recent Rating</a></li>
          <li><a href="about.jsp">About</a></li>
          <li><a href="profile.jsp">Profile</a></li>
        </ul>
      </nav>
      </div>
    <br><br><br>
<center><h1 style ="color:white" >Recent Reviews</h1></center>
<br><br>
<table class="sops" >
     <tr class ="sots">
     <th>Person</th>
     <th>Song</th>
     <th>Star</th>
     <th>Review</th>
</tr>
    <%
     try
      {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_project","root","admin");
         String Query="Select*from reviews";
         Statement stm=conn.createStatement();
         ResultSet rs=stm.executeQuery(Query);
         while(rs.next())
         {
          %>
          <tr> 
           <td><%=rs.getString("Person")%></td>
           <td><%=rs.getString("Song")%></td>
           <td><%=rs.getInt("Stars")%></td>
           <td><%=rs.getString("Review")%></td>
          </tr>
          <% 
      }
}
      catch (Exception ex)
      {
          out.println("Exception:"+ex.getMessage());
          ex.printStackTrace();
      }
    %>
<td></td>
<td></td>
<td></td>
<td></td>
      </script>
      <script src="https://apis.google.com/js/platform.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"
      ></script>
    </section>
  </body>
</html>
