

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/login.css">
</head>

<body>

    <div class="header">
        <div class="logo">
            <img src="assets/img/logo.png" alt="">
        </div>
        <nav class="navbar">
            <ul class="nav nav-underline">
                <li class="nav-link">
                    <a href="index.html"> Accueil</a>
                </li>

                <li class="nav-link">
                    <a href="store"> Produits</a></li>
                <li class="nav-link active">
                    <a href="login"> Se Connecter</a></li>
                <li class="nav-link">
                    <a href="#"> A Propos</a></li>
                <li class="nav-link icons">
                    <a href="#">
                        <ion-icon name="cart-outline"></ion-icon>
                    </a>
                </li>
                <li class="nav-link icons">
                    <a href="profil">
                        <ion-icon name="person-outline"></ion-icon>
                    </a>
                </li>
                <li class="nav-link icons">
                    <a href="dashboard">
                        <ion-icon name="grid-outline"></ion-icon>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="banner1">
        <div class="box">
            <div class="box_img"></div>
            <div class="login_card">
                <img src="assets/img/logo.png" alt="Scm_Clothing"><br><br>
                <h4>Juste quelques clicks
                    <br>avant de commencer!! </h4>
                <br>
                <form method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">Votre adressse email ne sera partage avec personne.</div>
                    </div>

                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Mot de passe</label>
                        <input type="password" name="pass" class="form-control" id="exampleInputPassword1">
                    </div>
                    <button type="submit" class="btn btn-primary">Se connecter</button><br><br><br><br>
                    <a href="register" style="float: right;">Vous n'avez pas un compte? Creer un maintenant -></a>
                </form>
            </div>
        </div>

    </div>
    <% if (request.getAttribute("conn") != null && !(boolean)request.getAttribute("conn")) { %>
<script>
    window.alert("Votre email ou mot de passe est incorrecte, Veuillez Reessayez !!");
</script>
<% } else if (request.getAttribute("conn") != null && (boolean)request.getAttribute("conn")) { %>
<%
    response.sendRedirect("dashboard");
%>
<% } %>
   




    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>