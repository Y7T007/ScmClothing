<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/index.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resssources/css/dashboard.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
</head>

<body>

    <div class="header">
        <div class="logo">
            <img src="assets/img/logo.png" alt="logoooo">
        </div>
        <nav class="navbari">
            <ul class="nav nav-underline">
                <li class="nav-link active">
                    <a href="index.jsp"> Accueil</a>
                </li>

                <li class="nav-link">
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
                    <a href="profil.html">
                        <ion-icon name="person-outline"></ion-icon>
                    </a>
                </li>
                <li class="nav-link icons">
                    <a href="#">
                        <ion-icon name="search-outline"></ion-icon>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="banner2"><br><br><br><br>
        <div class="grey-bg container-fluid">
            <section id="minimal-statistics">
                <div class="row">
                    <div class="col-xl-3 col-sm-6 col-12" onclick="window.location.href='index.html';">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="media d-flex">
                                        <div class="align-self-center">
                                            <i class="icon-home primary font-large-2 float-left"></i>
                                        </div>
                                        <div class="media-body text-right">
                                            <h3>1</h3>
                                            <span>Home</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12" onclick="window.location.href='pointsgen.html';">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="media d-flex">
                                        <div class="align-self-center">
                                            <i class="icon-list warning font-large-2 float-left"></i>
                                        </div>
                                        <div class="media-body text-right">
                                            <h3>2</h3>
                                            <span>Gagner des Points</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12" onclick="window.location.href='cvrt_points.html';">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="media d-flex">
                                        <div class="align-self-center">
                                            <i class="icon-graph success font-large-2 float-left"></i>
                                        </div>
                                        <div class="media-body text-right">
                                            <h3>3</h3>
                                            <span>Benificier des Points</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12" >
                        <div class="card">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" style="background-color: transparent;border: none;">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="media d-flex">
                                        
                                        <div class="align-self-center">
                                            <i class="icon-share warning font-large-2 float-right"></i>
                                        </div>
                                        <div class="media-body text-right">
                                            <h3 class="warning">7</h3>
                                            <span>Partager</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </button>
                        </div>
                </div>

                <div class="row">
                    <div class="col-xl-3 col-sm-6 col-12" onclick="window.location.href='index.html';">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="media d-flex">
                                        <div class="media-body text-left">
                                            <h3 class="danger">5</h3>
                                            <span>Votre solde</span>
                                        </div>
                                        <div class="align-self-center">
                                            <i class="icon-wallet danger font-large-2 float-right"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-sm-6 col-12" onclick="window.location.href='profil';">
                        <div class="card">
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="media d-flex">
                                        <div class="media-body text-left">
                                            <h3 class="success">6</h3>
                                            <span>Votre profil</span>
                                        </div>
                                        <div class="align-self-center">
                                            <i class="icon-user success font-large-2 float-right"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-3 col-sm-6 col-12">
                        
                    </div>

                </div>
        </div>

        </section>


    </div>
    </div>





    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content col-12">
                <div class="modal-header">
                    <h5 class="modal-title">Share</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
                <div class="modal-body">
                    <div class="icon-container1 d-flex">
                        <div class="smd">
                            <i class=" img-thumbnail fab fa-twitter fa-2x" style="color:#4c6ef5;background-color: aliceblue"></i>
                            <p>Twitter</p>
                        </div>
                        <div class="smd">
                            <i class="img-thumbnail fab fa-facebook fa-2x" style="color: #3b5998;background-color: #eceff5;"></i>
                            <p>Facebook</p>
                        </div>
                        <div class="smd">
                            <i class="img-thumbnail fab fa-reddit-alien fa-2x" style="color: #FF5700;background-color: #fdd9ce;"></i>
                            <p>Reddit</p>
                        </div>
                        <div class="smd">
                            <i class="img-thumbnail fab fa-discord fa-2x " style="color: #738ADB;background-color: #d8d8d8;"></i>
                            <p>Discord</p>
                        </div>
                    </div>
                    <div class="icon-container2 d-flex">
                        <div class="smd">
                            <i class="img-thumbnail fab fa-whatsapp fa-2x" style="color:  #25D366;background-color: #cef5dc;"></i>
                            <p>Whatsapp</p>
                        </div>
                        <div class="smd">
                            <i class="img-thumbnail fab fa-facebook-messenger fa-2x" style="color: #3b5998;background-color: #eceff5;"></i>
                            <p>Messenger</p>
                        </div>
                        <div class="smd">
                            <i class="img-thumbnail fab fa-telegram fa-2x" style="color:  #4c6ef5;background-color: aliceblue"></i>
                            <p>Telegram</p>
                        </div>
                        <div class="smd">
                            <i class="img-thumbnail fab fa-weixin fa-2x" style="color: #7bb32e;background-color: #daf1bc;"></i>
                            <p>WeChat</p>
                        </div>
                    </div>
                </div>
                <div class="modal-footer w-100">
                    <label style="font-weight: 600">Page Link <span class="message"></span></label><br />
                    <div class="row w-75">
                        <input class="col-10 ur" type="url" placeholder="https://www.Scm-Clothing.net/id?user" id="myInput" aria-describedby="inputGroup-sizing-default" style="height: 40px;">
                        <button class="cpy" onclick="myFunction()"></button>
                    </div>
                </div>
            </div>
        </div>
    </div>





    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script>
        function myFunction() {
            $(".message").text("link copied");
        }
    </script>

</body>

</html>