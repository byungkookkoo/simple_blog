<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BK :: Home</title>
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/font-awesome/css/all.min.css">
    <link href="assets/vendors/aos/aos.css" rel="stylesheet">
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
    <main>
        <section class="edica-landing-section edica-landing-about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6" data-aos="fade-up-right">
                        <h4 class="edica-landing-section-subtitle-alt">ABOUT ME</h4>
                        <h2 class="edica-landing-section-title">Biography</h2>
                        <p>I am a B.S student of Computer Science, Kyonggi University.  My research interests include Artificial Intelligence, Reinforcement Learning, and Data Mining.
                            To know more about me, please visit my <a href="https://github.com/Byoungkooki">github</a>.
                            Thank you :)</p>
                        <h4 style="margin-bottom:20px">Research Interests</h4>
                        <ul class="landing-about-list">
                            <li>Artificial Intelligence</li>
                            <li>Data Mining</li>
                            <li>Reinforcement Learning</li>
                        </ul>
                    </div>
                    <div class="col-md-6" data-aos="fade-up-left">
                        <img src="assets/images/desk.jpg" width="468px" alt="about" class="img-fluid">
                    </div>
                </div>
            </div>
        </section>
        <section class="edica-landing-section edica-landing-clients">
            <div class="container">
                <h4 class="edica-landing-section-subtitle-alt">Skills</h4>
                <div class="partners-wrapper">
                    <img src="assets/images/clang.png" alt="client logo" width="100px" data-aos="flip-right" data-aos-delay="250">
                    <img src="assets/images/java.png" alt="client logo" width="100px" data-aos="flip-right" data-aos-delay="500">
                    <img src="assets/images/python.png" alt="client logo" width="150px" data-aos="flip-right" data-aos-delay="750">
                    <img src="assets/images/r.png" alt="client logo" width="100px" data-aos="flip-right" data-aos-delay="1000">
                    <img src="assets/images/sql.png" alt="client logo" width="100px" data-aos="flip-right" data-aos-delay="1250">
                </div>
            </div>
        </section>
        <section class="edica-landing-section edica-landing-blog">
            <div class="container">
                <h4 class="edica-landing-section-subtitle" data-aos="fade-up">Blog posts</h4>
                <h2 class="edica-landing-section-title" data-aos="fade-up">Latest Update</h2>
                <div class="row">
            <%@ include file="dbconn.jsp"%>
            <%
                String sql = "select * from Post order by subject desc";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                int cnt=0;
                while (cnt<3) {
                    rs.next();
                    if (cnt==0)
                    {
            %>
                    <div class="col-sm landing-blog-post" data-aos="fade-right">
                        <img src="assets/images/rectangle.png" alt="blog post" class="blog-post-thumbnail">
                        <p class="blog-post-category"><%=rs.getString("category")%></p>
                        <h4 class="blog-post-title"><%=rs.getString("subject")%></h4>
                        <a href="#!" class="blog-post-link">More</a>
                    </div>
            <%
                cnt++;
                }
                    else if (cnt==1)
                {
            %><div class="col-sm landing-blog-post" data-aos="fade-up">
                    <img src="assets/images/rectangle.png" alt="blog post" class="blog-post-thumbnail">
                    <p class="blog-post-category"><%=rs.getString("category")%></p>
                    <h4 class="blog-post-title"><%=rs.getString("subject")%></h4>
                    <a href="#!" class="blog-post-link">More</a>
                </div>
                    <%
                        cnt++;
                    }
                    else if (cnt==2)
                    {
                    %>
                    <div class="col-sm landing-blog-post" data-aos="fade-left">
                        <img src="assets/images/rectangle.png" alt="blog post" class="blog-post-thumbnail">
                        <p class="blog-post-category"><%=rs.getString("category")%></p>
                        <h4 class="blog-post-title"><%=rs.getString("subject")%></h4>
                        <a href="#!" class="blog-post-link">More</a>
                    </div>
                        <%
                                cnt++;
                    }
                            }
                        %>
                </div>
            </div>
        </section>
        <section class="edica-landing-section edica-landing-blog-posts edica-footer-banner-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="blog-post-card blog-post-1 mb-4 mb-md-0" data-aos="fade-right">
                            <p class="post-category">BK in Developer</p>
                            <h2 class="post-title">Check blog post related to Work</h2>
                            <a href="#!" class="post-link">more</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="blog-post-card blog-post-2" data-aos="fade-left">
                            <p class="post-category">BK in Daily Life</p>
                            <h2 class="post-title">Check blog post related to Daily Life</h2>
                            <a href="#!" class="post-link">more</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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