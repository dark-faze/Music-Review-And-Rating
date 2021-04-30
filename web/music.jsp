<%-- 
    Document   : nemusic
    Created on : 05-Apr-2021, 11:54:54 am
    Author     : akhlas
--%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
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
          <li><a href="reviews.jsp">Recent Rating</a></li>
          <li><a href="about.jsp">About</a></li>
          <li><a href="profile.jsp">Profile</a></li>
        </ul>
      </nav>
    </div>
    <div class="left-col">
      <p class="subhead">Welcome<p>
      <p class="subhead">Feel the vibes</p>
    </div>
    <section class="Hero">
      <div class="container">
        <h1>Find your music</h1>
      </div>

    </section>
    <section class="searchbox">
      <div class="buscar-caja">
        <input
          type="text"
          name=""
          id="search-text"
          class="buscar-txt"
          placeholder="Search ....."
        />
        <a class="buscar-btn" id="search_button" >
          <i class="fa fa-search" onclick="myfun()" ></i>
        </a>
      </div>

      <div class="songcontainer" id="song-list">
          <button class="boton" id = "bon">Rate IT!</button>
                 <div class="bg-modal">
	<div class="modal-contents">
		<div class="close">+</div>
		<form action="connect.jsp" method = "post">
			<input type="text" placeholder="Enter Song Name" name = "Song">
                                                            <input type="number" placeholder="Give Stars" name="Stars">
			<input type="text" placeholder="Write a review" name="Review">
			<input type="submit" class="button">Rate</a>
		</form>
	</div>
</div>
        <div class="row">
            <div id="song_0" class="col">
            </div>
          <div id="song_1" class="col"></div>
          <div id="song_2" class="col"></div>
        </div>
        <div class="row">
          <div id="song_3" class="col"></div>
          <div id="song_4" class="col"></div>
          <div id="song_5" class="col"></div>
        </div>
        <div class="row">
          <div id="song_6" class="col"></div>
          <div id="song_7" class="col"></div>
          <div id="song_8" class="col"></div>
        </div>
        <div class="row">
          <div id="song_9" class="col"></div>
          <div id="song_10" class="col"></div>
          <div id="song_11" class="col"></div>
        </div>
      </div>
        <script>
          document.getElementById('bon').addEventListener("click", function() {
	document.querySelector('.bg-modal').style.display = "flex";
});

document.querySelector('.close').addEventListener("click", function() {
	document.querySelector('.bg-modal').style.display = "none";
});
      </script>
      <script src="https://apis.google.com/js/platform.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"
      ></script>
      <script src="script.js" charset="utf-8"></script>
    </section>
  </body>
</html>
