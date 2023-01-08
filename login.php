<!DOCTYPE html> <!-- html comment: html version 5 -->
<html>
    <head>
         <!--meta information-->
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
      <title>Log In</title>
<style>
    body {font-family: Arial, Helvetica, sans-serif;
  background: linear-gradient(to top, rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%), url(bg.jpg);
    background-position: center;
    background-size: cover;}
.navbar{
    width: 1200px;
    height: 75px;
    margin: auto;
}
h1{
    font-family: 'Times New Roman';
    text-align: center;
    color: rgb(250, 245, 243);
    font-size: 60px;
    padding-left: 20px;
    margin-top: 3%;
    letter-spacing: 2px;
}
p{
    font-family: 'Times New Roman';
    text-align: center;
    color: rgb(250, 245, 243);
    font-size: 30px;
    padding-left: 20px;
    margin-top: 3%;
    letter-spacing: 2px;
}


</style>
    </head>
    
    <body>
        <div class="content">
            <h1> Online Voting System </h1>
            <form action="verifyuser.php" method="POST">
                    
               <p> Email: <input type="email" placeholder="Username" name="uemail"> </p>
                <p> Password: <input type="password" placeholder="Password" name="upass"> </p>
                
                
                <p><input type="submit" value="Log In"></p>
            </form>
        </div>
    </body>
</html> 