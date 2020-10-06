<!DOCTYPE html>
<html lang="en">

<head>
    <title>Verify</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>

<body>
    <div>
        <div class="container">
            <div class="col-12 col-sm-8 col-md-6 col-lg-4 offset-sm-2 offset-md-3 offset-lg-4">
                <div class=" text-cente">
                    <h1 class="mt-5 text-center" style="color: rgb(194, 61, 61);">
                        <br> Verify your Account
                        <br>
                        <br>
                        <img src="img/otp.png" width="100px" alt="call">
                        <br>
                        <br>
                    </h1>
                </div>

                <form class="mb-3" action="InsertData.jsp">
                    <div class="form-group">
                        <label for="firstName">Enter the OTP received on registered number:</label>
                        <input type="text" class="form-control" name="otpvalue" required/>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block mb-3 mt-3">
                        Verify Account
                    </button>
                    <div class="text-center">
                        <a href="#" class="">Resend OTP</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>