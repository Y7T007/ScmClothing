<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/register.css">
</head>

<body>

    <div class="header">
        <div class="logo">
            <img src="assets/img/logo.png" alt="">
        </div>
        <nav class="navbar">
            <ul class="nav nav-underline">
                <li class="nav-link">
                    <a href="index.html"> Accueil</a></li>
                <li class="nav-link">
                    <a href="store.html"> Produits</a></li>
                <li class="nav-link active">
                    <a href="login.html"> S'inscrire</a></li>
                <li class="nav-link">
                    <a href="about.html"> A Propos</a></li>
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
                    <a href="#">
                        <ion-icon name="search-outline"></ion-icon>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="banner1">
        <div class="box">
            <div class="box_img">
            </div>
            <div class="login_card">
                <img src="assets/img/logo.png" alt="Scm_Clothing"><br><br>
                <h4>Juste quelques clicks 
                    <br>avant de commencer!! </h4>
                    <form class="inputs_001 needs-validation " method="post" action="register"  >
                        <div class="div1">
                          <label for="validationCustom01" class="form-label">Prenom</label>
                          <input type="text" class="form-control" id="validationCustom01" name="nom" required>
                          <div class="valid-feedback">
                            Parfait!
                          </div>
                        </div>
                        <div class="div2">
                          <label for="validationCustom02" class="form-label">Nom</label>
                          <input type="text" class="form-control" id="validationCustom02" name="prenom" required>
                          <div class="valid-feedback">
                            Parfait!
                          </div>
                        </div>
                        <div class="div3">
                          <label for="validationCustomUsername" class="form-label">email</label>
                          <div class="input-group has-validation">
                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                            <input type="email" class="form-control" id="validationCustomEmail" name="email" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                              Veuillez saisr une adresse mail valide.
                            </div>
                          </div>
                        </div>
                        <div class="div4">
                            <label for="validationCustom01" class="form-label">Mot de passe</label>
                            <input type="password" class="form-control" id="validationCustom01" name="pass" required>
                            <div class="valid-feedback">
                              Parfait!
                            </div>
                          </div>
                          <div class="div5">
                            <label for="validationCustom02" class="form-label">Confirmation du Mot de passe</label>
                            <input type="password" class="form-control" id="validationCustom02" value="" required>
                            <div class="valid-feedback">
                                Parfait!
                            </div>
                          </div>
                        <div class="div6">
                          <label for="validationCustom03" class="form-label">Gsm</label>
                          <input type="number" class="form-control" id="validationCustom03" name="gsm" required>
                          <div class="invalid-feedback">
                            Veuillez saisr un Numero de Telephone valide.
                          </div>
                        </div>
                        
						<div class="div7">
                          <div class="form-check">
                            <label class="form-label" for="invalidCheck">
                                Date naissance
                            </label>
                            <input class="form-control" type="date" name="dateNaissance" id="invalidCheck" value="01/01/2000" required>
                            <div class="invalid-feedback">
                              You must agree before submitting.
                            </div>
                          </div>
                        </div>
                        
                        <div class="div9">
                          <button class="btn btn-primary" type="submit">S'inscrire</button>
                        </div>
                      </form>

                    
            </div>
        </div>

    </div>




    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script>
                (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
            if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
            }
            form.classList.add('was-validated')
            window.alert("Votre compte a ete cree avec succes, veuillez vous connectez pour acceder a votre espace personnel");
            }, false)
        })
        })()
    </script>
</body>

</html>