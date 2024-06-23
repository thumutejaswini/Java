<!-- src/main/webapp/WEB-INF/jsp/navbar.jsp -->

<div id="container">
  <nav>
    <div id="logo">Student Management System</div>
    <ul>
      <li><a href="${pageContext.request.contextPath}/">HOME</a></li>
      <li><a href="${pageContext.request.contextPath}/aboutus.html">ABOUTUS</a></li>
      <li><a href="${pageContext.request.contextPath}/gal.html">GALLERY</a></li>
      <li><a href="${pageContext.request.contextPath}/syllabus.html">SYLLABUS</a></li>
     <li><a href="${pageContext.request.contextPath}/login1" id="loginButton">LOGIN</a></li> <!-- "Login" button -->

    </ul>
  </nav>
</div>

<!-- Login form (initially hidden) -->
<div id="loginForm" style="display: none;">
  <!-- Your login form HTML goes here -->
</div>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css">

<script>
  // Function to show content corresponding to navbar selection
  function showContent(page) {
    var contentDivs = document.querySelectorAll('.content');
    for (var i = 0; i < contentDivs.length; i++) {
      contentDivs[i].style.display = 'none'; // Hide all content divs
    }
    document.getElementById(page).style.display = 'block'; // Show selected content
  }

  // Add event listener to the "Login" button
  document.getElementById('loginButton').addEventListener('click', function() {
    showContent('loginForm');
  });
</script>
