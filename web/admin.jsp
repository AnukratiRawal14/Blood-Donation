<html>
    <head>
        <title>Admin Page</title>
            <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <script src="https://kit.fontawesome.com/47101d2035.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
   
</head>
<body

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
                     <a class="nav-item nav-link" href="#why">Hi   Admin  !</a>
               </div>
             
                          <!-- Navbar Right Side -->
                          
               <div class="navbar-nav">
                        <a class="nav-item nav-link" href="#donor">Donor</a>
                        <a class="nav-item nav-link" href="#recipient">Recipient</a>
                        <a class="nav-item nav-link" href="index.jsp">Logout</a>
                </div>
                </div>
            </div>
        </nav>
    </header>
    
    <br><br><br><br>
    
    
    <! ----donor table----!>
    <section id="donor">
    <table class="col-12 table table-hover">
                    <thead class="thead-dark">
                   <div class="text-center">
                       <h1>Donor</h1>
                       <form>
                        <tr>
                               <th scope="col">Donor Id</th>
                               <th scope="col">Name</th>
                                <th scope="col">Phone</th>
                               <th scope="col">Email</th>
                               <th scope="col">Address</th>
                               <th scope="col">City</th>
                               <th scope="col">Age</th>
                               <th scope="col">Blood Group</th>
                               <th scope="col">Send Msg</th>
                               <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>ABC</td>
                           <td>987865799</td>
                            <td>abc@gmail.com-</td>
                            <td>blah blah..-</td>
                            <td>Indore</td>
                            <td>25-</td>
                            <td>B+-</td>
                            <td><a href=msgOtp.jsp>Send Msg</td>
                            <td><a href=#>Delete </td>
                        </tr>
             </tbody>
          </table>
      </form>
</section>
    
    <br><br>
    
<! ----Recipient----!>
<section id="recipient">
     <table class="col-12 table table-hover">
              <thead class="thead-dark">
                   <div class="text-center">
                       <h1>Recipient</h1>
                        <form>
                        <tr>
                               <th scope="col">Donor Id</th>
                               <th scope="col">Name</th>
                                <th scope="col">Phone</th>
                               <th scope="col">Email</th>
                               <th scope="col">Address</th>
                               <th scope="col">City</th>
                               <th scope="col">Age</th>
                               <th scope="col">Blood Group</th>
                               <th scope="col">Send Msg</th>
                               <th scope="col">Delete</th>
                         </tr>
             </thead>
                     <tbody>
                         <tr>
                               <th scope="row">1</th>
                               <td>Abhishek</td>
                               <td>9516883597</td>
                               <td>abhi@gmail.com-</td>
                               <td>blah blah..-</td>
                               <td>Indore.-</td>
                               <td>25-</td>
                               <td>B+-</td>
                               <td><a href=otpprocess.jsp>Send Msg</td>
                               <td><a href=#>Delete </td>
                         </tr>          
                   </div>
      </section>
    </div>
</body>
</html>
