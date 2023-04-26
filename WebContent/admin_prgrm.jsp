<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/login.css">
    <link rel="stylesheet" href="resssources/css/admin_prgrm.css">



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
                    <a href="product.html"> Produits</a></li>
                <li class="nav-link active">
                    <a href="login.html"> Se Connecter</a></li>
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
                    <a href="#">
                        <ion-icon name="search-outline"></ion-icon>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="banner1 h-100" height="1100px">
        <div class="box" height="1100px">
            <div class="header_box">
                <div class="titler"> <strong> Veuillez configurez les methodes pour generer les points par les utilisateurs : </strong> <br>
                    <p style="margin-top: -50px;"><i>Valeurs de conversion (Selectionner la valeur pour 100 points) </i></p>
                </div>

            </div>
            <div class="cnvrt">
                <form action="admin_prgrm" method="post">
                    <ul>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>1- Coupon pour une commande en ligne: </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh1" value="10" min="0" max="100" step="5" id="customRange3" name="percent">
                                        <div id="output1">-10%</div>

                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-percent" viewBox="0 0 16 16">
                            <path d="M13.442 2.558a.625.625 0 0 1 0 .884l-10 10a.625.625 0 1 1-.884-.884l10-10a.625.625 0 0 1 .884 0zM4.5 6a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm0 1a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5zm7 6a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm0 1a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                          </svg></div>
                        </li>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>2- Coupon De reduction : </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh2" min="0" max="1000" step="50" id="customRange3" name="reduction">
                                        <div id="output2">-500 Dhs</div>


                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="lightgreen" class="bi bi-currency-dollar" viewBox="0 0 16 16">
                            <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z"/>
                          </svg></div>
                        </li>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>3- Produit gratuit : </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh6" min="0" max="1000" step="50" id="customRange3" name="free_item">
                                        <div id="output6">-500 Dhs</div>


                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="rgb(209, 111, 255)" class="bi bi-shop" viewBox="0 0 16 16">
                            <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
                          </svg></div>
                        </li>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>4- Livraison gratuite : </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh9" value="150" min="0" max="1000" step="50" id="customRange3" onchange="document.getElementById('values').innerHTML=range.valueAsNumber;" name="shipping">
                                        <div id="output9">150 Pts</div>
                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="purple" class="bi bi-truck" viewBox="0 0 16 16">
								  <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
								</svg></div>
                        </li>
                        <div class="titler">
                            <p style="margin-top: -40px;margin-bottom: -40px"><i>Generation des points  </i></p>
                        </div>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>5- Pour anniversaire : </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh3" value="300" min="0" max="1000" step="50" id="customRange3" name="birthday">
                                        <div id="output3">300 Pts</div>


                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="lightcoral" class="bi bi-balloon" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 9.984C10.403 9.506 12 7.48 12 5a4 4 0 0 0-8 0c0 2.48 1.597 4.506 4 4.984ZM13 5c0 2.837-1.789 5.227-4.52 5.901l.244.487a.25.25 0 1 1-.448.224l-.008-.017c.008.11.02.202.037.29.054.27.161.488.419 1.003.288.578.235 1.15.076 1.629-.157.469-.422.867-.588 1.115l-.004.007a.25.25 0 1 1-.416-.278c.168-.252.4-.6.533-1.003.133-.396.163-.824-.049-1.246l-.013-.028c-.24-.48-.38-.758-.448-1.102a3.177 3.177 0 0 1-.052-.45l-.04.08a.25.25 0 1 1-.447-.224l.244-.487C4.789 10.227 3 7.837 3 5a5 5 0 0 1 10 0Zm-6.938-.495a2.003 2.003 0 0 1 1.443-1.443C7.773 2.994 8 2.776 8 2.5c0-.276-.226-.504-.498-.459a3.003 3.003 0 0 0-2.46 2.461c-.046.272.182.498.458.498s.494-.227.562-.495Z"/>
                          </svg></div>
                        </li>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>6- S'inscrire: </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh4" value="200" min="0" max="1000" step="50" id="customRange3" name="register">
                                        <div id="output4">200 Pts</div>


                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="lightblue" class="bi bi-person-check" viewBox="0 0 16 16">
                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm1.679-4.493-1.335 2.226a.75.75 0 0 1-1.174.144l-.774-.773a.5.5 0 0 1 .708-.708l.547.548 1.17-1.951a.5.5 0 1 1 .858.514ZM11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z"/>
                            <path d="M8.256 14a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Z"/>
                          </svg></div>
                        </li>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>7- Interaction reseaux sociaux: </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh5" value="50" min="0" max="1000" step="50" id="customRange3" onchange="document.getElementById('values').innerHTML=range.valueAsNumber;" name="smedia">
                                        <div id="output5">50 Pts</div>
                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="violet" class="bi bi-share" viewBox="0 0 16 16">
                            <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
                          </svg></div>
                        </li>
                        <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>8- Inviter un ami : </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh7" value="150" min="0" max="1000" step="50" id="customRange3" onchange="document.getElementById('values').innerHTML=range.valueAsNumber;" name="friend">
                                        <div id="output7">150 Pts</div>
                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="blue" class="bi bi-people" viewBox="0 0 16 16">
  <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z"/>
</svg></div>
                        </li>
                         <li>
                            <div class="ed">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                </div>
                            </div>
                            <div class="choice">
                                <strong>9- Bonus points (pour chaque 10 dhs depense) : </strong>
                            </div>
                            <div class="slider">
                                <div oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="range">
                                        <input type="range" class="form-range hhhh8" value="10" min="0" max="50" step="5" id="customRange3" onchange="document.getElementById('values').innerHTML=range.valueAsNumber;" name="shop_bonus">
                                        <div id="output8">10 Pts</div>
                                    </div>
                                </div>
                            </div>
                            <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="lightgreen" class="bi bi-cart-plus" viewBox="0 0 16 16">
  <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
  <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
</svg></div>
                        </li>
                        

                    </ul>
					<input class="w-25 .text-center btn btn-primary .float-right align-self-md-center" type="submit" value="Enregistrer les modifications">
                    
                </form>
            </div>
        </div>

    </div>




    <!-- Scripts -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script>
        let range = document.querySelector('.hhhh1');
        let values = document.querySelector('#output1');

        range.addEventListener('input', () => {
            values.textContent = '-' + range.value + '%';
        });
        let range2 = document.querySelector('.hhhh2');
        let values2 = document.querySelector('#output2');

        range2.addEventListener('input', () => {
            values2.textContent = '-' +
                range2.value + ' Dhs';
        });
        let range3 = document.querySelector('.hhhh3');
        let values3 = document.querySelector('#output3');

        range3.addEventListener('input', () => {
            values3.textContent = range3.value + ' Pts';
            console.log(range3.valueAsNumber);
        });
        let range4 = document.querySelector('.hhhh4');
        let values4 = document.querySelector('#output4');

        range4.addEventListener('input', () => {
            values4.textContent = range4.value + ' Pts';
            console.log(range4.valueAsNumber);
        });

        let range5 = document.querySelector('.hhhh5');
        let values5 = document.querySelector('#output5');

        range5.addEventListener('input', () => {
            values5.textContent = range5.value + ' Pts';
            console.log(range5.valueAsNumber);
        });
        let range6 = document.querySelector('.hhhh6');
        let values6 = document.querySelector('#output6');

        range6.addEventListener('input', () => {
            values6.textContent = range6.value + ' Dhs';
            console.log(range6.valueAsNumber);
        });
        let range7 = document.querySelector('.hhhh7');
        let values7 = document.querySelector('#output7');

        range7.addEventListener('input', () => {
            values7.textContent = range7.value + ' Pts';
            console.log(range7.valueAsNumber);
        });
        let range8 = document.querySelector('.hhhh8');
        let values8 = document.querySelector('#output8');

        range8.addEventListener('input', () => {
            values8.textContent = range8.value + ' Pts';
            console.log(range8.valueAsNumber);
        });
        
        let range9 = document.querySelector('.hhhh9');
        let values9 = document.querySelector('#output9');

        range9.addEventListener('input', () => {
            values9.textContent = range9.value + ' Pts';
            console.log(range9.valueAsNumber);
        });
        

        function submitForm() {
            // get reference to the form element
            const form = document.getElementById("my-form");

            // submit the form
            form.submit();
        }
    </script>

</body>

</html>