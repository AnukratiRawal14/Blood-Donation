<!DOCTYPE html>
<html lang="en">

<head>
    <title>Recipient Form</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>

<body>
    <section id="donour">
        <div class="container">

            <div class="row">
                <div class="col col-sm-8 col-md-6 col-lg-4 offset-sm-2 offset-md-3 offset-lg-4">
                    <h4 class="mt-5 text-center" style="color: rgb(194, 61, 61);">Fill this form and get assisted by
                        the saviours!
                    </h4>
                    <h1 class="mb-3 text-center heading">Form to Recieve blood</h1>
                    
                    <! -------------Recipient Form-------------!>
                    
                    
                    <form class="mb-3" action="RecipientData.jsp">
                        <div class="form-group">
                            <label for="firstName">Name:</label>
                            <input type="text" class="form-control" name="name" placeholder="Recipient's Name"
                                required />
                        </div>

                        <div class="form-group">
                            <label for="phone">Mobile Number:</label>
                            <input type="text" class="form-control" name="mobile" required
                                placeholder="Recipient's Phone" />
                        </div>
                        <label>Blood Type Needed: </label>
                        <div class="row no-gutters">
                            <div class="form-group col">
                                <select class="form-control" id="blood" name="blood">
                                    <option value="" >I need...</option>
                        <option value="A Positive">A+</option>
                        <option value="O Positive">O+</option>
                        <option value="B Positive">B+</option>
                        <option value="AB Positive">AB+</option>
                        <option value="A Negetive">A-</option>
                        <option value="O Negetive">O-</option>
                        <option value="B Negetive">B-</option>
                        <option value="AB Negetive">AB-</option>
                                </select>
                            </div>
                        </div>
                        <label>Birthday:</label>
                        <div class="row no-gutters">
                            <div class="form-group col-4">
                                <label for="birthdayDay" class="sr-only">Birthday day</label>
                                <select class="form-control" id="birthdayDay" name="day">
                                    <option value="">Day</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                </select>
                            </div>
                            <div class="form-group col-4">
                                <label for="birthdayMonth" class="sr-only">Birthday month</label>
                                <select class="form-control" id="birthdayMonth" name="month">
                                    <option value="">Month</option>
                                    <option value="january">January</option>
                                    <option value="february">February</option>
                                    <option value="march">March</option>
                                    <option value="april">April</option>
                                    <option value="may">May</option>
                                    <option value="june">June</option>
                                    <option value="july">July</option>
                                    <option value="august">August</option>
                                    <option value="september">September</option>
                                    <option value="october">October</option>
                                    <option value="november">November</option>
                                    <option value="december">December</option>
                                </select>
                            </div>
                            <div class="form-group col-4">
                                <label for="birthdayYear" class="sr-only">Birthday year</label>
                                <select class="form-control" id="birthdayYear" name="year">
                                    <option value="1980">1980</option>
                                    <option value="1981">1981</option>
                                    <option value="1982">1982</option>
                                    <option value="1983">1983</option>
                                    <option value="1984">1984</option>
                                    <option value="1985">1985</option>
                                    <option value="1986">1986</option>
                                    <option value="1987">1987</option>
                                    <option value="1988">1988</option>
                                    <option value="1989">1989</option>
                                    <option value="1990">1990</option>
                                    <option value="1991">1991</option>
                                    <option value="1992">1992</option>
                                    <option value="1993">1993</option>
                                    <option value="1994">1994</option>
                                    <option value="1995">1995</option>
                                    <option value="1996">1996</option>
                                    <option value="1997">1997</option>
                                    <option value="1998">1998</option>
                                    <option value="1999">1999</option>
                                    <option value="2000">2000</option>
                                    <option value="2000">2001</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="city">City</label>
                            <input type="text" class="form-control" name="city" required />
                        </div>
                        <div class="form-group">
                            <label for="city">State</label>
                            <input type="state" class="form-control" name="state" required />
                        </div>
                        <div class="text-center">
                            <input class="btn btn-primary btn-block mb-3" type="submit" value="Submit">
                        </div>
                    </form>
                    <form>
                        <div class="text-center">
                            <p>You will need an account to fill the form.<br>Don't have one?</p>
                            <a href="index.jsp#signup" class="btn btn-success btn-block">Create an account</a>
                        </div>
                    </form>
                    

                </div>
            </div>
        </div>
    </section>

</body>

</html>