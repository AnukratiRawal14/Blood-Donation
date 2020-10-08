<!DOCTYPE html>
<html lang="en">

<head>
    <title>BloodWala</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <script src="https://kit.fontawesome.com/47101d2035.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">

        <style>
        .mySlides {
            display: none;
        }

        .slideimg {
            width: 1100px;
            height: 390px;
            vertical-align: middle;
        }

        /* Slideshow container */
        .slideshow-container {
            height: 390px;
            width: 1100px;
            position: relative;
            margin: auto;
        }


        /* Number text (1/3 etc) */
        .numbertext {
            color: #ffffff;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: rgb(212, 102, 102);
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.4s ease;
        }

        .active {
            background-color: #191a52;
        }

        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .8
            }

            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .8
            }

            to {
                opacity: 1
            }
        }
    </style>
</head>

<body>
    <header class="site-header">
        <nav class="navbar justify-content-center navbar-expand-md navbar-dark bg-primary fixed-top">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggle"
                    aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarToggle">
                    <!-- Navbr left Side -->
                    <div class="navbar-nav mr-auto">
                        <a class="nav-item nav-link" href="#why">Why Donate Blood?</a>
                        <a class="nav-item nav-link" href="#know">Know and Learn</a>
                        <a class="nav-item nav-link" href="#canidonate">Can I donate?</a>
                        <a class="nav-item nav-link" href="#about">About Us</a>
                    </div>
                    <!-- Navbar Right Side -->
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="#signup">Sign Up!</a>
                        <a class="nav-item nav-link" href="Login.jsp">Login</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>



    <div class="mt-5" style="padding: 2em;">

        <div class="slideshow-container">

            <div class="mySlides fade">
                <div class="numbertext">1 / 4</div>
                <img class="slideimg" src="img/slides/1.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 4</div>
                <img class="slideimg" src="img/slides/2.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 4</div>
                <img class="slideimg" src="img/slides/3.png" style="width:100%">
            </div>

            <div class="mySlides fade">
                <div class="numbertext">4 / 4</div>
                <img class="slideimg" src="img/slides/4.png" style="width:100%">
            </div>

        </div>
        <br>

        <div style="text-align:center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>
    </div>

    <section>
        <section id="why">
            <div class="container">
                <div class="mt-5">
                    <img src="img/give.jpg" width="1200px" alt="give blood">
                </div>

                <h1 class="mb-3 heading"><i class="fas fa-hand-holding-medical"></i> Why Donate Blood?</h1>
                <div class="justify-content-center">
                    <img src="img/3lives.png" width="300px" alt="donate blood" class="why_img2">

                </div>
                <h5>A blood donation truly is a gift of life that a healthy individual can give to others in their
                    community who are sick or injured. In one hours time, a person can donate one unit of blood that
                    can be
                    separated into four individual components that could help save multiple lives.</h5>
                <br>
                <h5>
                    From one unit of blood, red blood cells can be extracted for use in trauma or surgical patients.
                    Plasma,
                    the liquid part of blood, is administered to patients with clotting problems. The third component of
                    blood, platelets, clot the blood when cuts or other open wounds occur, and are often used in cancer
                    and
                    transplant patients. Cryoprecipitated anti-hemophilic factor (AHF) is also used for clotting
                    factors.
                </h5>

                <br>
                <div class="justify-content-center">
                    <img src="img/donate.png" alt="donate blood" class="why_img1">
                    <!-- Image and other styles needed to be added -->
                </div>

                <h4>Blood transfusion is needed for:</h4>
                <h5>
                    <ul>
                        <li>Women with complications of pregnancy, such as ectopic pregnancies and haemorrhage before,
                            during or
                            after childbirth.</li>
                        <li>Children with severe anemia often resulting from malaria or malnutrition.</li>
                        <li>People with severe trauma following man-made and natural disasters.</li>
                        <li>Many complex medical and surgical procedures and cancer patients.</li>
                    </ul>
                </h5>

            </div>
            <!-- DON'T REMOVE THE BRS!!!!! -->

            <br>
            <br>

            <!-- DON'T REMOVE THE BRS!!!!! -->

        </section>

        <section id="signup">
            <div class="container">
                <div class="row">
                    <div class="col col-sm-8 col-md-6 col-lg-4 offset-sm-2 offset-md-3 offset-lg-4">
                        <h4 class="mt-5 text-center" style="color: rgb(194, 61, 61);">Register now and be someone's
                            superhero
                            saviour!
                        </h4>
                        <h2 class="mb-3 text-center heading"><i class="fas fa-heartbeat"></i> Create a new account</h2>
                        
                        <! -------------InsertData /OTP-Process ---------------!>
                        
                        <form class="mb-3" action="otpprocess.jsp">
                            <div class="form-group">
                                <label for="firstName">Name:</label>
                                <input type="text" class="form-control" name="name" required />
                            </div>

                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" name="email" placeholder="example@example.com"
                                    id="email" required />
                            </div>
                            <div class="form-group">
                                <label for="phone">Mobile Number:</label>
                                <input type="text" class="form-control" name="mobile" required />
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" name="password" required />
                            </div>
                            <div class="text-center">
                                <input class="btn btn-primary btn-block mb-3" type="submit" value="Create Account">
                            </div>
                                      
                     </form>
                            <div class="text-center">
                                <p >Already have an account?</p>
                                <a href="Login.jsp" class="btn btn-success btn-block">Login</a>
                            </div>
                    
                    </div>
                    <!-- <div class="col">
                        <img src="img/poster.png" alt="donate blood poster">
                    </div> -->
                </div>
            </div>
        </section>

        <section id="know">
            <div class="container">
                <h1 class="mb-3 heading"><i class="fab fa-leanpub"></i> Know and Learn</h1>
                <h3 class="mt-3 mb-3">Which blood types are most needed?</h3>
                <p>
                    Some blood types are in higher demand from hospitals than others.

                    For example, it's estimated that around 8% of people have O negative blood, but O negative makes up
                    13%
                    of requests from hospitals.

                    This is because anyone can receive the red cells from O negative donors. So O negative red cells can
                    be
                    used in emergencies or when a person's blood type in unknown.

                    Sometimes we need to target specific blood types to increase stock levels. That's why we sometimes
                    contact regular donors with the particular blood type we need, and ask them to give blood.
                </p>
                <h3 class="mt-3 mb-3">8 Main Blood Types</h3>
                <div class="type_buttons col-12 mb-5 mt-5">
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/o-positive-blood-type/" target="_blank"
                        title="O positive">O positive</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/o-negative-blood-type/#:~:text=Why%20is%20O%20negative%20blood,patient's%20blood%20type%20is%20unknown."
                        target="_blank" title="O negative">O negative</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.carterbloodcare.org/blood-facts/blood-types/a-positive/" target="_blank"
                        title="A positive">A positive</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/a-negative-blood-type/" target="_blank"
                        title="A negative">A negative</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/b-positive-blood-type/#:~:text=B%20positive%20is%20an%20important,donations%20with%20the%20subtype%20Ro."
                        target="_blank" title="B positive">B positive</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/b-negative-blood-type/" target="_blank"
                        title="B negative">B negative</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/ab-positive-blood-type/"
                        target="_blank" title="AB positive">AB positive</a>
                    <a class="m-3 btn btn-primary"
                        href="https://www.blood.co.uk/why-give-blood/blood-types/ab-negative-blood-type/#:~:text=AB%20negative%20is%20the%20rarest,to%20the%20AB%20blood%20group."
                        target="_blank" title="AB negative">AB negative</a>
                </div>
                <h3 class="mt-3 mb-3">Who can donate to whom?</h3>

                <table class="col-12 table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Blood Type</th>
                            <th scope="col">Donate Blood To</th>
                            <th scope="col">Receive Blood From</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">A+</th>
                            <td>A+ AB+</td>
                            <td>A+ A- O+ O-</td>
                        </tr>
                        <tr>
                            <th scope="row">O+</th>
                            <td>O+ A+ B+ AB+</td>
                            <td>O+ O-</td>
                        </tr>
                        <tr>
                            <th scope="row">B+</th>
                            <td>B+ AB+</td>
                            <td>B+ B- O+ O-</td>
                        </tr>
                        <tr>
                            <th scope="row">AB+</th>
                            <td>AB+</td>
                            <td>Everyone</td>
                        </tr>
                        <tr>
                            <th scope="row">A-</th>
                            <td>A+ A- AB+ AB-</td>
                            <td>A- O-</td>
                        </tr>
                        <tr>
                            <th scope="row">O-</th>
                            <td>Everyone</td>
                            <td>O-</td>
                        </tr>
                        <tr>
                            <th scope="row">B-</th>
                            <td>B+ B- AB+ AB-</td>
                            <td>B- O-</td>
                        </tr>
                        <tr>
                            <th scope="row">AB-</th>
                            <td>AB+ AB-</td>
                            <td>AB- A- B- O-</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        <section id="canidonate">
            <div class="container">
                <h1 class="mb-3 heading"><i class="fas fa-fist-raised"></i> Can I donate?</h1>

                <div class="grid-text" data-mh="grid-text" style="">
                    <p>Sometimes it is not possible to give blood, or we may ask you to wait before donating
                        again.
                        To save you a wasted
                        journey, please read this list of the most common reasons people cannot give blood. If
                        you
                        have a medical condition, or a question about&nbsp;whether you can give blood, you
                        should check health&nbsp;&amp;
                        eligibility travel section.
                    </p>
                    <h3>Can I donate if I have a cold?</h3>
                    <p>No, if you are sneezing and coughing or very congested you should not attend. It is
                        important
                        that you do not
                        have any infection at the time of donating. If you are unsure it is best not to give
                        blood.
                    </p>
                    <h4>Can I donate if I feel ill, have a chesty cough or a cold sore?</h4>
                    <p>If you are feeling under the weather with any of these things it’s best that you wait
                        until
                        you feel better
                        before you give blood. Use our <a rel="noopener noreferrer"
                            href="https://my.blood.co.uk/knowledgebase/" target="_blank"
                            title="health questions for blood donors" style="color: rgb(216, 30, 5);">health&nbsp;&amp;
                            eligibility</a>&nbsp;section to find out more.</p>
                    <h4>Can I donate blood if I am taking antibiotics or have an infection?</h4>
                    <p>You must be completely healed or recovered from any infection for at least 14 days before
                        you
                        give blood. If you
                        are taking antibiotics you may need to wait a period of time after your last tablet.
                        Please
                        follow our advice
                        about <a rel="noopener noreferrer" href="https://my.blood.co.uk/KnowledgeBase/Index/Infection"
                            target="_blank" title="Donating blood after an infection"
                            style="color: rgb(216, 30, 5);">donating
                            after
                            an infection</a>.
                        Please also see our advice about <a rel="noopener noreferrer"
                            href="https://my.blood.co.uk/KnowledgeBase/Index/Antibiotic" target="_blank"
                            title="Donating blood after antibiotics" style="color: rgb(216, 30, 5);">donating
                            after
                            antibiotics</a>.&nbsp;</p>
                    <h4>Can I donate if I am pregnant, or have recently been pregnant?</h4>
                    <p>During your pregnancy, you are not able to give blood. If you had a blood transfusion
                        during
                        your pregnancy or at
                        delivery then you will not be able to become a blood donor. Please follow our advice
                        about
                        <a rel="noopener noreferrer" href="https://my.blood.co.uk/KnowledgeBase/Index/Pregnancy"
                            target="_blank" title="Giving blood during or after pregnancy"
                            style="color: rgb(216, 30, 5);">giving blood during and after
                            pregnancy</a>.
                    </p>
                    <h4>Can I give blood if I am receiving medical treatment or taking medication?</h4>
                    <p>Well need to check that you can donate. Whether or not you can donate will depend on the
                        medication you are
                        receiving as well as the condition for which you are being treated.&nbsp;Please search
                        for
                        your condition or
                        medication in our <a rel="noopener noreferrer" href="https://my.blood.co.uk/knowledgebase/"
                            target="_blank" title="health questions for blood donors"
                            style="color: rgb(216, 30, 5);">health&nbsp;&amp;
                            eligibility</a>&nbsp;section.</p>
                    <h4>Can I give blood if I have been to the dentist or received dental treatment?</h4>
                    <p>Simple fillings and check ups are usually ok after 24 hours. However, some treatments
                        will
                        mean a longer
                        deferral. Please follow our advice about <a rel="noopener noreferrer"
                            href="https://my.blood.co.uk/KnowledgeBase/Index/Dental%20Treatment" target="_blank"
                            title="Giving blood after dental treatment" style="color: rgb(216, 30, 5);">giving
                            blood
                            after dental
                            treatment</a>.</p>

                    <h4>Can I give blood if I have a heart condition?</h4>
                    <p>We will need to have more information to know if you can give blood. It will depend on
                        your
                        specific heart
                        condition. Please see our advice for <a rel="noopener noreferrer"
                            href="https://my.blood.co.uk/KnowledgeBase/Index/heart" target="_blank"
                            title="Giving blood with a heart condition" style="color: rgb(216, 30, 5);">giving
                            blood
                            with a heart
                            condition</a>.&nbsp;</p>
                    <h4>Can I donate if I have got a tattoo or a body piercing?</h4>
                    <p>If you had this done recently you may have to wait before you can donate again. Please
                        follow
                        our advice about <a rel="noopener noreferrer"
                            href="https://my.blood.co.uk/KnowledgeBase/index/tattoo" target="_blank"
                            title="Giving blood after a tattoo" style="color: rgb(216, 30, 5);">giving blood
                            after a
                            tattoo or getting
                            your body pierced</a>.&nbsp;</p>
                    <h4>Can I give blood if I have had cancer?</h4>
                    <p>Our advice depends on the type of cancer. Please search for the relevant cancer in our <a
                            rel="noopener noreferrer" href="https://my.blood.co.uk/knowledgebase/" target="_blank"
                            title="health questions for blood donors" style="color: rgb(216, 30, 5);">health&nbsp;&amp;
                            eligibility</a>&nbsp;section.</p>

                    <h4>Can I donate blood if I have high or low blood pressure?</h4>
                    <p>It is possible to donate blood if you have high blood pressure or low blood pressure.
                        However, there are some
                        restrictions. Please follow our advice about <a rel="noopener noreferrer"
                            href="https://my.blood.co.uk/KnowledgeBase/index/blood%20pressur" target="_blank"
                            title="Giving blood when you have high or low blood pressure"
                            style="color: rgb(216, 30, 5);">giving blood
                            when you have high or low blood pressure</a>.&nbsp;</p>
                    <h4>Can I give blood if I have had acupuncture?</h4>
                    <p>It may be possible to give blood after acupuncture. We will need to know the reason you
                        had
                        the treatment and the
                        certification of the acupuncturist. Please follow the full advice about <a
                            rel="noopener noreferrer" href="https://my.blood.co.uk/KnowledgeBase/index/acupuncture"
                            target="_blank" title="Donating blood after acupuncture"></a>
                </div>
                </p>
            </div>
        </section>
        <section class="" id="about">
            <div class="container mb-5">
                <h1 class="mb-3 heading"><i class="fas fa-users"></i> About Us</h1>

                Have you at anytime witnessed a relative of yours or a close friend searching frantically for a blood donor, 
            when blood banks say out of stock, the donors in mind are out of reach and the time keeps ticking? 
            Have you witnessed loss of life for the only reason that a donor was not available at the most needed hour? 
            Is it something that we as a society can do nothing to prevent?
            This thought gave us the idea of implementing this website.
            <h4> Warning: Do not pay any amount to any person promising supply of blood packets or arranging donors. 
            Inform us at Bloodwala@gmail.com or contact the concerned mentioned below so that we can initiate required action.</h4>
            </div>
            <section class="stories">
                <div class="container mb-5">
                    <h4>Some stories that inspire, some lives that changed</h4>

                    <div class="row">
                        <div class="col-4">
                            <div class="content">
                                <img src="img/woman.jpg" width="300px" alt="Mountains">
                                <div class="m-3">
                                    <h3>V. Shankarathota</h3>
                                    <p>Donating blood makes me feel like a superwoman. I always motivate others to
                                        donate
                                        and help.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="content">
                                <img src="img/man.jpg" width="300px" alt="Lights">
                                <div class="m-3">

                                    <h3>Abbas Jhunjhunwala</h3>
                                    <p>Karke dekho, achcha lagta hai. :)</p>
                                </div>

                            </div>
                        </div>
                        <div class="col-4">
                            <div class="content">
                                <img src="img/child.jpg" width="300px" alt="Nature">
                                <div class="m-3">

                                    <h3>Chhotu Bhai</h3>
                                    <p>I am happy and healthy because of people like you.</p>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </section>


        <footer class="small bg-dark">
            <div class="container py-sm-5">
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-3">
                        <h6 style="color: #fff;">Quick links</h6>
                        <ul class="list-unstyled">
                            <li><a href="Login.jsp">Login</a></li>
                            <li><a href="#signup">Sign Up</a></li>
                            <li><a href="#about">About us</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <h6 style="color: #fff;">Follow us</h6>
                        <ul class=" list-unstyled">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Instagram</a></li>
                            <li><a href="#">YouTube</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <address style="color: #fff;">
                            <strong>AITR, Indore</strong><br />
                            Indore<br />
                            Madhya Pradesh<br />
                            <a href="tel:+919191xxxxx">+919191xxxxx</a><br />
                            <a href="mailto:bloodwala@gmail.com">BloodWala@gmail.com</a>
                        </address>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                        <h6 style="color: #fff;">The Change Makers!</h6>
                        <ul class=" list-unstyled">
                            <li><a href="#">Ketumaan Vishwakarma</a></li>
                            <li><a href="#">Anukrati Rawal</a></li>
                            <li><a href="#">Divija Sisodia</a></li>
                            <li><a href="#">Devashish Mandloi</a></li>
                            <li><a href="#">Bhavesh Rajani</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
                <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1;
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 5000);
            }
        </script>
</body>

</html>