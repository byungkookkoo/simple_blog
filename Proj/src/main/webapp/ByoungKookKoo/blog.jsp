<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BK :: Blog</title>
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/font-awesome/css/all.min.css">
    <link rel="stylesheet" href="assets/vendors/aos/aos.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="assets/vendors/jquery/jquery.min.js"></script>
    <script src="assets/js/loader.js"></script>
</head>
<body>
    <div class="edica-loader"></div>
    <header class="edica-header">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="index.jsp"><strong>BYOUNGKOOK'S WEBSITE</strong></a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#edicaMainNav" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="edicaMainNav">
                    <ul class="navbar-nav mx-auto mt-5 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="blogDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
                            <div class="dropdown-menu" aria-labelledby="blogDropdown">
                                <a class="dropdown-item" href="blog.jsp">Blog</a>
                                <a class="dropdown-item" href="archive.jsp">Blog Archive (Beta)</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="post.jsp">Post</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>

    <main class="blog">
        <div class="container">
            <h1 class="edica-page-title" data-aos="fade-up">Blog</h1>
            <%@ include file="dbconn.jsp"%>
            <section class="featured-posts-section">
                <div class="row">
                    <%
                        String sql = "select * from Post";
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();
                        int cnt=0;
                        while (cnt<3) {
                            rs.next();
                            if (cnt==0)
                            {
                    %>
                    <div class="col-sm fetured-post blog-post" data-aos="fade-right">
                        <div class="blog-post-thumbnail-wrapper">
                            <img src="assets/images/blog_1.jpg" alt="blog post">
                        </div>
                        <p class="blog-post-category"><%=rs.getString("category")%></p>
                        <a href="#!" class="blog-post-permalink">
                            <h6 class="blog-post-title"><%=rs.getString("subject")%></h6>
                        </a>
                        <p class="blog-post-category"><%=rs.getString("message")%></p>
                    </div>
                    <%
                        cnt++;
                    }
                    else if (cnt==1)
                    {
                    %><div class="col-sm fetured-post blog-post" data-aos="fade-up">
                    <div class="blog-post-thumbnail-wrapper">
                        <img src="assets/images/blog_1.jpg" alt="blog post">
                    </div>
                    <p class="blog-post-category"><%=rs.getString("category")%></p>
                    <a href="#!" class="blog-post-permalink">
                        <h6 class="blog-post-title"><%=rs.getString("subject")%></h6>
                    </a>
                    <p class="blog-post-category"><%=rs.getString("message")%></p>
                </div>
                    <%
                        cnt++;
                    }
                    else if (cnt==2)
                    {
                    %>
                    <div class="col-sm fetured-post blog-post" data-aos="fade-left">
                        <div class="blog-post-thumbnail-wrapper">
                            <img src="assets/images/blog_1.jpg" alt="blog post">
                        </div>
                        <p class="blog-post-category"><%=rs.getString("category")%></p>
                        <a href="#!" class="blog-post-permalink">
                            <h6 class="blog-post-title"><%=rs.getString("subject")%></h6>
                        </a>
                        <p class="blog-post-category"><%=rs.getString("message")%></p>
                    </div>
                    <%
                                cnt++;
                            }
                        }
                    %>
                </div>
            </section>
            <div class="row">
                <div class="col-md-8">
                    <section>
                        <div class="row row-cols-2">

                        <%
                            while(rs.next())
                            {
                                cnt++;
                        %>
                            <div class="col-md-6 blog-post" data-aos="fade-up">
                                <div class="blog-post-thumbnail-wrapper">
                                    <img src="assets/images/blog_4.jpg" alt="blog post">
                                </div>
                                <p class="blog-post-category"><%=rs.getString("category")%></p>
                                <a href="#!" class="blog-post-permalink">
                                    <h6 class="blog-post-title"><%=rs.getString("subject")%></h6>
                                </a>
                                <p class="blog-post-category"><%=rs.getString("message")%></p>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </section>
                </div>
                <div class="col-md-4 sidebar" data-aos="fade-left">
                    <div class="widget widget-post-list">
                        <h5 class="widget-title">Post List</h5>
                    </div>
                    <div class="widget">
                        <h5 class="widget-title">Categories</h5>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <footer>
        <div class="container">
            <div class="footer-bottom-content">
                <p class="mb-0">&copy;2020 ByoungKook Koo</p>
                <p class="mb-0">Powered by &copy;Edica. 2020 <a href="https://www.bootstrapdash.com" target="_blank" rel="noopener noreferrer" class="text-reset">bootstrapdash</a> .</p>
            </div>
        </div>
    </footer>
    <script src="assets/vendors/popper.js/popper.min.js"></script>
    <script src="assets/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/vendors/aos/aos.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
        AOS.init({
            duration: 2000
        });
    </script>
</body>

</html>