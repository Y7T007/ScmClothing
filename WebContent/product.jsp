<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/index.css">
    <link rel="stylesheet" href="resssources/css/product.css">
</head>

<body>

    <div class="header">
        <div class="logo">
            <img src="assets/img/logo.png" alt="">
        </div>
        <nav class="navbar">
            <ul class="nav nav-underline">
                <li class="nav-link active">
                    <a href="index.html"> Accueil</a>
                </li>

                <li class="nav-link">
                    <a href="store.html"> Produits</a></li>
                <li class="nav-link">
                    <a href="login.html"> Se Connecter</a></li>
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
        <div class="container mt-5 mb-5 boxx">
            <div class="card ">
                <div class="h-100 row g-0">
                    <div class="col-md-6 border-end">
                        <div class="h-100 d-flex flex-column justify-content-center">
                            <div class="h-100 main_image force_main_img">
                                <img src="<%= request.getAttribute("imagePath") %>" class="main_product_imagei">
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 right-side">
                            <div class="d-flex justify-content-between align-items-center">
                                <h3><%= request.getAttribute("name") %></h3>

                            </div>
                            <div class="mt-2 pr-3 content">
                                <p>
                                   <%= request.getAttribute("description") %>
                                </p>
                            </div>
                            <h3><%= request.getAttribute("value") %> DHs </h3>
                            <div class="ratings d-flex flex-row align-items-center">
                                <div class="d-flex flex-row">
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bxs-star'></i>
                                    <i class='bx bx-star'></i>
                                </div>
                            </div>
                            <div class="mt-5">
                                <span class="fw-bold">Color</span>
                                <div class="colors">
                                    <ul id="marker">
                                        <li id="marker-1"></li>
                                        <li id="marker-2"></li>
                                        <li id="marker-3"></li>
                                        <li id="marker-4"></li>
                                        <li id="marker-5"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dropdown">
                                <select name="Taille Produit" id="size_prod" class="btn btn-secondary dropdown-toggle">
                                    <option value="XS">X Small | XS</option>
                                    <option value="S">Small   | S</option>
                                    <option value="M">Medium  | M</option>
                                    <option value="L">Large   | L</option>
                                    <option value="XL">XLarge  | XL</option>
                                </select>
                            </div>
                            <div class="buttons d-flex flex-row mt-5 gap-3">
                                <button class="btn btn-outline-dark btndd">Acheter</button>
                                <button class="btn btn-dark">Ajouter au panier</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>




    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>

</html>