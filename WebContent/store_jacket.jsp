<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/store.css">

    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <style type="text/css">
    	.card-img-top {
    display: flex;
    image-rendering: 500px 500px;
    height: 20rem;
    justify-content: center;
    align-self: center;
    padding: 25px;
    margin:25px;
}

.card img {
    object-fit: contain;
}
    </style>
</head>

<body>

    <div class="header">
        <div class="logo">
            <img src="assets/img/logo.png" alt="">
        </div>
        <nav class="navbar">
            <ul class="nav nav-underline">
                <li class="nav-link ">
                    <a href="index.html"> Accueil</a>
                </li>

                <li class="nav-link active">
                    <a href="store"> Produits</a></li>
                <li class="nav-link">
                    <a href="login"> Se Connecter</a></li>
                <li class="nav-link">
                    <a href="#"> A Propos</a></li>
                <li class="nav-link icons">
                    <a href="#">
                        <ion-icon name="cart-outline"></ion-icon>
                    </a>
                </li>
                <li class="nav-link icons">
                    <a href="#">
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
    <hr style="margin:-10px auto;width: 80%; "><br><br>
    <div class="banner1">
        <div class="categories_select">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link  categ" href="store">Robe</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link categ-active categ" href="store_jacket">Jacket</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link categ" href="store_top">Top</a>
                </li>
            </ul>
        </div>
        <div class="list_elem">
                        <%= request.getAttribute("htmldivs") %>
            

        </div>

    </div>




    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function() {
            $('#rateMe4').mdbRate();
        });
    </script>
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>