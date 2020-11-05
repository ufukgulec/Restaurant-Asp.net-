<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="restaurant.index" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Restoranım</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="Restaurantly/assets/img/restoran.png" rel="icon">
    <link href="Restaurantly/assets/img/restoran.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="Restaurantly/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="Restaurantly/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="Restaurantly/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="Restaurantly/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="Restaurantly/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="Restaurantly/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="Restaurantly/assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="Restaurantly/assets/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- ======= Top Bar ======= -->
    <asp:Repeater ID="RepeaterAnasayfa" runat="server">
        <ItemTemplate>
            <div id="topbar" class="d-flex align-items-center fixed-top">
                <div class="container d-flex">
                    <div class="contact-info mr-auto">
                        <i class="icofont-phone"></i><%#Eval("tel") %>
                        <span class="d-none d-lg-inline-block"><i class="icofont-clock-time icofont-rotate-180"></i><%#Eval("acikGun") %> <%#Eval("acikSaat") %></span>
                    </div>
                </div>
            </div>
            
            <!-- ======= Header ======= -->
            <header id="header" class="fixed-top">
                <div class="container d-flex align-items-center">

                    <h1 class="logo mr-auto"><a href="index.aspx"><%#Eval("ad") %></a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                    <nav class="nav-menu d-none d-lg-block">
                        <ul>
                            <li class="active"><a href="index.aspx">Home</a></li>
                            <li><a href="#about">Hakkımızda</a></li>
                            <li><a href="#menu">Menu</a></li>
                            <li><a href="#specials">Spesiyal</a></li>
                            <li><a href="#events">Organizasyon</a></li>
                            <li><a href="#gallery">Galeri</a></li>
                            <li><a href="#chefs">Şefler</a></li>
                            <li><a href="#contact">İletişim</a></li>
                            <li class="book-a-table text-center"><a href="#book-a-table">Rezervasyon</a></li>
                        </ul>
                    </nav>
                    <!-- .nav-menu -->

                </div>
            </header>
            <!-- End Header -->

            <!-- ======= Hero Section ======= -->

            <section id="hero" style="background-image: url('<%#Eval("arkaPlan")%>')" class="d-flex align-items-center">
                <div class="container position-relative text-center text-lg-left" data-aos="zoom-in" data-aos-delay="100">
                    <div class="row">
                        <div class="col-lg-8">
                            <h1><span><%#Eval("ad") %></span> Hoşgeldiniz.</h1>
                            <h2><%#Eval("slogan") %></h2>

                            <div class="btns">
                                <a href="#menu" class="btn-menu animated fadeInUp scrollto mb-2">Menümüz</a>
                                <a href="#book-a-table" class="btn-book animated fadeInUp scrollto">Rezervasyon Yap</a>
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex align-items-center justify-content-center" data-aos="zoom-in" data-aos-delay="200">
                            <a href="<%#Eval("videoLink") %>" class="venobox play-btn" data-vbtype="video" data-autoplay="true"></a>
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>


    <!-- End Hero -->

    <main id="main">

        <!-- ======= About Section ======= -->
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <section id="about" style="background-image: url('<%#Eval("arkaPlan")%>')" class="about">
                    <div class="container" data-aos="fade-up">
                        <div class="row">
                            <div class="col-lg-6 order-1 order-lg-2" data-aos="zoom-in" data-aos-delay="100">
                                <div class="about-img">
                                    <img src="<%#Eval("foto") %>" alt="">
                                </div>
                            </div>
                            <div class="col-lg-6 pt-4 pt-lg-5 order-2 text-center order-lg-1 content">
                                <h3><%#Eval("baslik") %></h3>
                                <p class="font-italic">
                                    <%#Eval("aciklama") %>
                                </p>
                            </div>
                        </div>

                    </div>
                </section>
            </ItemTemplate>
        </asp:Repeater>

        <!-- End About Section -->

        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Neden Biz</h2>
                    <p>Neden Restoranımızı Seçmelisiniz</p>
                </div>

                <div class="row">
                    <asp:ListView ID="ListViewNeden" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 mt-4 mt-lg-0">
                                <div class="box h-100" data-aos="zoom-in" data-aos-delay="100">
                                    <span>
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-hand-thumbs-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16v-1c.563 0 .901-.272 1.066-.56a.865.865 0 0 0 .121-.416c0-.12-.035-.165-.04-.17l-.354-.354.353-.354c.202-.201.407-.511.505-.804.104-.312.043-.441-.005-.488l-.353-.354.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315L12.793 9l.353-.354c.353-.352.373-.713.267-1.02-.122-.35-.396-.593-.571-.652-.653-.217-1.447-.224-2.11-.164a8.907 8.907 0 0 0-1.094.171l-.014.003-.003.001a.5.5 0 0 1-.595-.643 8.34 8.34 0 0 0 .145-4.726c-.03-.111-.128-.215-.288-.255l-.262-.065c-.306-.077-.642.156-.667.518-.075 1.082-.239 2.15-.482 2.85-.174.502-.603 1.268-1.238 1.977-.637.712-1.519 1.41-2.614 1.708-.394.108-.62.396-.62.65v4.002c0 .26.22.515.553.55 1.293.137 1.936.53 2.491.868l.04.025c.27.164.495.296.776.393.277.095.63.163 1.14.163h3.5v1H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z" />
                                        </svg>
                                    </span>
                                    <h4><%# Eval("baslik") %></h4>
                                    <p><%#Eval("aciklama") %></p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>

            </div>
        </section>
        <!-- End Why Us Section -->

        <!-- ======= Menu Section ======= -->
        <section id="menu" class="menu section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Menu</h2>
                    <p>Lezzetli Menümüze Göz Atın</p>
                </div>

                <div class="row" data-aos="fade-up" data-aos-delay="100">
                    <div class="col-lg-12 d-flex justify-content-center">
                        <ul id="menu-flters">
                            <li data-filter="*" class="filter-active">Hepsi</li>
                            <asp:DataList ID="DataListkategori" runat="server" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <li data-filter=".<%#Eval("id") %>"><%#Eval("ad") %></li>
                                </ItemTemplate>
                            </asp:DataList>
                        </ul>
                    </div>
                </div>

                <div class="row menu-container" data-aos="fade-up" data-aos-delay="200">
                    <asp:ListView ID="ListViewMenu" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-6 menu-item <%#Eval("kategoriId") %>">
                                <img src="<%#Eval("resim") %>" class="menu-img" alt="<%#Eval("ad") %>">
                                <div class="menu-content">
                                    <a href="#"><%#Eval("ad") %></a><span><%#Eval("fiyat") %></span>
                                </div>
                                <div class="menu-ingredients">
                                    <%#Eval("icindekiler") %>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                </div>

            </div>
        </section>
        <!-- End Menu Section -->

        <!-- ======= Specials Section ======= -->
        <section id="specials" class="specials">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Spesiyal</h2>
                    <p>Özel Ürünlerimizi Tadın</p>
                </div>

                <div class="row" data-aos="fade-up" data-aos-delay="100">
                    <div class="col-lg-3">

                        <ul class="nav nav-tabs flex-column">
                            <asp:ListView ID="DataListSpe" runat="server">
                                <ItemTemplate>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#tab-<%#Eval("id") %>"><%#Eval("ad") %></a>
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>

                    </div>
                    <div class="col-lg-9 mt-4 mt-lg-0">
                        <div class="tab-content">
                            <div class="tab-pane active show" id="">
                                <div class="row">
                                    <div class="col-lg-8 details order-2 order-lg-1">
                                        <h3>Şefin Spesiyali</h3>
                                        <p class="font-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                        <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                                    </div>
                                    <div class="col-lg-4 text-center order-1 order-lg-2">
                                        <img src="" alt="" class="img-fluid">
                                    </div>
                                </div>
                            </div>
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                    <div class="tab-pane" id="tab-<%#Eval("id") %>">
                                        <div class="row">
                                            <div class="col-lg-8 details order-2 order-lg-1">
                                                <h3><%#Eval("baslik") %></h3>
                                                <p class="font-italic"><%#Eval("aciklama") %></p>
                                            </div>
                                            <div class="col-lg-4 text-center order-1 order-lg-2">
                                                <img src="<%#Eval("resim") %>" alt="<%#Eval("ad") %>" class="img-fluid img-thumbnail" style="border-radius: 50%">
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>

                        </div>

                    </div>
                </div>
        </section>
        <!-- End Specials Section -->

        <!-- ======= Events Section ======= -->
        <section id="events" class="events">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Organizyonlar</h2>
                    <p>Etkinliklerinizi Restoranımızda Düzenleyin</p>
                </div>

                <div class="owl-carousel events-carousel" data-aos="fade-up" data-aos-delay="100">
                    <asp:ListView ID="ListViewOrganizasyon" runat="server">
                        <ItemTemplate>
                            <div class="row event-item">
                                <div class="col-lg-6">
                                    <img src="<%#Eval("foto") %>" class="img-fluid" alt="<%#Eval("ad") %>">
                                </div>
                                <div class="col-lg-6 pt-4 pt-lg-0 content">
                                    <h3><%#Eval("ad") %></h3>
                                    <div class="price">
                                        <p><span><%#Eval("fiyat") %> ₺</span></p>
                                    </div>
                                    <p class="font-italic">
                                        <%#Eval("arkaPlan") %>
                                    </p>
                                    <p>
                                        <%#Eval("aciklama") %>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                </div>

            </div>
        </section>
        <!-- End Events Section -->

        <!-- ======= Book A Table Section ======= -->
        <section id="book-a-table" class="book-a-table">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Rezervasyon</h2>
                    <p>Bir masa rezervasyonu</p>
                </div>

                <form action="#" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
                    <div class="form-row">
                        <div class="col-lg-4 col-md-6 form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validate"></div>
                        </div>
                        <div class="col-lg-4 col-md-6 form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
                            <div class="validate"></div>
                        </div>
                        <div class="col-lg-4 col-md-6 form-group">
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Your Phone" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validate"></div>
                        </div>
                        <div class="col-lg-4 col-md-6 form-group">
                            <input type="text" name="date" class="form-control" id="date" placeholder="Date" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validate"></div>
                        </div>
                        <div class="col-lg-4 col-md-6 form-group">
                            <input type="text" class="form-control" name="time" id="time" placeholder="Time" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                            <div class="validate"></div>
                        </div>
                        <div class="col-lg-4 col-md-6 form-group">
                            <input type="number" class="form-control" name="people" id="people" placeholder="# of people" data-rule="minlen:1" data-msg="Please enter at least 1 chars">
                            <div class="validate"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea>
                        <div class="validate"></div>
                    </div>
                    <div class="mb-3">
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your booking request was sent. We will call back or send an Email to confirm your reservation. Thank you!</div>
                    </div>
                    <div class="text-center">
                        <button type="submit">Rezerve</button>
                    </div>
                </form>

            </div>
        </section>
        <!-- End Book A Table Section -->

        <!-- ======= Testimonials Section ======= -->
        <section id="testimonials" class="testimonials section-bg">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>GÖRÜŞLER</h2>
                    <p>Hakkımızda ne diyorlar</p>
                </div>

                <div class="owl-carousel testimonials-carousel" data-aos="zoom-in" data-aos-delay="100">
                    <asp:ListView ID="ListViewYorum" runat="server">
                        <ItemTemplate>
                            <div class="testimonial-item m-2">
                                <div class="row">
                                    <p style="height: 300px; width: 294px;">
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        <%#Eval("yorum1") %>
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <h3><%#Eval("isim") %> <%#Eval("soyisim") %></h3>
                                    </div>
                                    <div class="col-12">
                                        <h4><%#Eval("tarih") %></h4>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                </div>

            </div>
        </section>
        <!-- End Testimonials Section -->

        <!-- ======= Gallery Section ======= -->
        <section id="gallery" class="gallery">

            <div class="container" data-aos="fade-up">
                <div class="section-title">
                    <h2>Galeri</h2>
                    <p>Restoranımızdan bazı fotoğraflar</p>
                </div>
            </div>

            <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">

                <div class="row no-gutters">
                    <asp:ListView ID="ListViewGaleri" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-3 col-md-4">
                                <div class="gallery-item">
                                    <a href="<%#Eval("resimYolu") %>" class="venobox" data-gall="gallery-item">
                                        <img src="<%#Eval("resimYolu") %>" alt="<%#Eval("alt") %>" class="img-fluid">
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>

                </div>

            </div>
        </section>
        <!-- End Gallery Section -->

        <!-- ======= Chefs Section ======= -->
        <section id="chefs" class="chefs">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Şefler</h2>
                    <p>Profesyonel Aşçılarımız</p>
                </div>

                <div class="row">
                    <asp:ListView ID="ListViewSef" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6">
                                <div class="member" data-aos="zoom-in" data-aos-delay="100">
                                    <img src="<%#Eval("foto") %>" class="img-fluid" alt="<%#Eval("isim") %>">
                                    <div class="member-info">
                                        <div class="member-info-content">
                                            <h4><%#Eval("isim") %> <%#Eval("soyisim") %></h4>
                                            <span><%#Eval("kidem") %></span>
                                        </div>
                                        <div class="social">
                                            <a href="<%#Eval("twitter") %>"><i class="icofont-twitter"></i></a>
                                            <a href="<%#Eval("facebook") %>"><i class="icofont-facebook"></i></a>
                                            <a href="<%#Eval("instagram") %>"><i class="icofont-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:ListView>

                </div>

            </div>
        </section>
        <!-- End Chefs Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>İletişim</h2>
                    <p>Bize Ulaşın</p>
                </div>
            </div>
            <asp:Repeater ID="Repeateriletisim" runat="server">
                <ItemTemplate>
                    <div data-aos="fade-up">
                        <iframe style="border: 0; width: 100%; height: 350px;" src="<%#Eval("harita") %>" frameborder="0" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>

                    <div class="container" data-aos="fade-up">

                        <div class="row mt-5">

                            <div class="col-lg-4">
                                <div class="info">
                                    <div class="address">
                                        <i class="icofont-google-map"></i>
                                        <h4>Adres:</h4>
                                        <p><%#Eval("adres") %></p>
                                    </div>

                                    <div class="open-hours">
                                        <i class="icofont-clock-time icofont-rotate-90"></i>
                                        <h4>Açık Saatler:</h4>
                                        <p>
                                            <%#Eval("acikGun") %>:<br>
                                            <%#Eval("acikSaat") %>
                                        </p>
                                    </div>

                                    <div class="email">
                                        <i class="icofont-envelope"></i>
                                        <h4>Email:</h4>
                                        <p><%#Eval("eposta") %></p>
                                    </div>

                                    <div class="phone">
                                        <i class="icofont-phone"></i>
                                        <h4>Telefon:</h4>
                                        <p><%#Eval("tel") %></p>
                                    </div>

                                </div>

                            </div>
                </ItemTemplate>
            </asp:Repeater>



            <div class="col-lg-8 mt-5 mt-lg-0">

                <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                    <div class="form-row">
                        <div class="col-md-6 form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validate"></div>
                        </div>
                        <div class="col-md-6 form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validate"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                        <div class="validate"></div>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="message" rows="8" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                        <div class="validate"></div>
                    </div>
                    <div class="mb-3">
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="text-center">
                        <button type="submit">Send Message</button>
                    </div>
                </form>

            </div>

            </div>

            </div>
        </section>
        <!-- End Contact Section -->

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-info">
                            <h3>ASP.NET PROJESİDİR</h3>

                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i><a href="admin/bilgiler.aspx">AdminPaneli</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">About us</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Services</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Terms of service</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Privacy policy</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Our Services</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Web Design</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Web Development</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Product Management</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Marketing</a></li>
                            <li><i class="bx bx-chevron-right"></i><a href="#">Graphic Design</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-newsletter">
                        <h4>Our Newsletter</h4>
                        <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>


                    </div>

                </div>
            </div>
        </div>

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>ufukGulec</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/restaurantly-restaurant-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer>
    <!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>

    <!-- Vendor JS Files -->
    <script src="Restaurantly/assets/vendor/jquery/jquery.min.js"></script>
    <script src="Restaurantly/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="Restaurantly/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="Restaurantly/assets/vendor/php-email-form/validate.js"></script>
    <script src="Restaurantly/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="Restaurantly/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="Restaurantly/assets/vendor/venobox/venobox.min.js"></script>
    <script src="Restaurantly/assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="Restaurantly/assets/js/main.js"></script>

</body>

</html>
