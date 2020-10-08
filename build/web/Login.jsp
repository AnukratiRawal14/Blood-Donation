<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>

<body>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-8 col-md-6 col-lg-4 offset-sm-4 offset-sd-3 offset-lg-4">
                    <h4 class="mt-5 mb-3 text-center" style="color: rgb(194, 61, 61);">Anybody can save lives!<br>Bring
                        a
                        life
                        back to
                        power. Make blood donation your responsibility.</h4>
                    <h1 class="mb-3 text-center">Login</h1>
                
                    
                    <! ----------Login form---------!>
                    
                    <form class="mb-3" action="LoginData.jsp">          
                            <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" placeholder="example@email.com" name="email"
                                id="email" required />
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" name="password" id="password" required />
                        </div>
                        <div class="text-center">
                            <input class="btn btn-primary btn-block mb-3" type="submit" value="Login">
                        </div>
                    </form>
               
                   <div class="text-center">
                        <p>Don't have an account?</p>
                        <a href="index.jsp#signup" class="btn btn-success btn-block">Create account</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
                       
                 
                     
                  