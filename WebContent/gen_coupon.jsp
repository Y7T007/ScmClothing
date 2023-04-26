
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="resssources/css/login.css">
    <link rel="stylesheet" href="resssources/css/cvrt_points.css">
    <link rel="stylesheet" href="resssources/css/gen_coupon.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    
	<style>
	body {
    background-color: #FFEDDD;
}
	
	/* Increase the modal width */
.modal-dialog {
  margin: 30px auto;

 /* adjust the margin as needed */
}

  
  /* Increase the modal height */
  .modal-content {
    
  margin: 30px -250px 0 0;
  width:fit-content;

  }
		.slider{
	width:80%;
	display:flex;
	margin-left:80px;
	jusdtify-content:center;
	align-items:center;
	align-self:center;
	gap:20px;
}
#output1,
#output2,
#output3,
#output4,
#output5,
#output6,
#output7,
#output8,
#output9 {
    background-color: #ffd096;
    display: block;
    padding: 15px;
    font-weight: bold;
    color: black;
    border-radius: 15px;
    width: 350px;
    text-align: center;
}
input[type=range]::-webkit-slider-runnable-track {
    background: #945e1d;
}

input[type=range]::-webkit-slider-thumb {
    background-color: #ffd096;
    transform: scale(150%);
    border: black solid 2px;
    /* Change to desired color */
}

input[type=range]::-moz-range-thumb {
    background-color: #ffd096;
    /* Change to desired color */
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
    <div class="banner1">
        <div class="box">
            <div class="header_box">
                <div class="titler">Confimer vous la conversion de ces point en un coupon ?</div>
                <div class="solde">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-wallet2" viewBox="0 0 16 16">
                        <path d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499L12.136.326zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484L5.562 3zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
                      </svg> Votre solde actuel : <%= request.getAttribute("points") %>
                </div>
            </div>
           


            <form method="post" action="gen_coupon" >

            <div class="slider">
                                <div class="slider" oninput="output.value = Math.round(range.valueAsNumber / 1000)">
                                    <div class="slider">
                                        <input type="range" class="form-range hhhh2" min="0" max="1000" step="50" value="100" id="customRange3" name="reduction">
                                  
                                        <div id="output2">100 Pts</div>
                                        <div id="output3"><%= request.getAttribute("conv") %> <%= request.getAttribute("op") %></div>
                                        <div width="300px" padding="auto"> Unite: </div>
                                        <div id="output4"> <%= request.getAttribute("conv") %> <%= request.getAttribute("op") %>/pts </div>
                                        

					
                                    </div>
                               			<input id="sub" type="submit" value="Generer un coupon">
                                </div>
                            </div>
                            
                            
            <div class="cnvrt">
           
                <ul>
                    <li id="accept"  data-toggle="modal" data-target="#exampleModal">
                        <div class="choice"><strong>Accepter </strong></div>
                        <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="lightgreen" class="bi bi-check-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
                          </svg></div>
                    </li>
                    <li id="decline">
                        <div class="choice"><strong>Refuser</strong></div>
                        <div class="icn"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="rgb(255, 89, 89)" class="bi bi-x-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                          </svg></div>
                    </li>



                </ul>
                  </form>
<div class="cnvrt" id="couponn">
                <div class="titler">Votre coupons est :</div>
                <div class="container mt-5">
                    <div class="d-flex justify-content-center row">
                        <div class="col-md-6">
                            <div class="coupon p-3 bg-white">
                                <div class="row no-gutters">
                                    <div class="col-md-4 border-right">
                                        <div class="d-flex flex-column align-items-center"><img src="resssources/img/logo.png" style="width:60%;"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <div>
                                            <div class="d-flex flex-row justify-content-end off">
                                                <p style="font-size: 30px;text-transform: uppercase;align-items: center;text-align: left;
                                        margin-left: 50px;">Coupons &emsp;</p>
                                                <h1><%= request.getAttribute("value") %></h1><span>OFF</span></div>
                                            <div class="d-flex flex-row justify-content-between off px-3 p-2"><span>Promo code:</span><span class="border border-success px-3 rounded code"><%= request.getAttribute("coupon") %></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>

    
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Votre coupon :</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container mt-5">
                    <div class="d-flex justify-content-center row">
                        <div class="col-md-6">
                            <div class="coupon p-3 bg-white">
                                <div class="row no-gutters">
                                    <div class="col-md-4 border-right">
                                        <div class="d-flex flex-column align-items-center"><img src="resssources/img/logo.png" style="width:60%;"></div>
                                    </div>
                                    <div class="col-md-8">
                                        <div>
                                            <div class="d-flex flex-row justify-content-end off">
                                                <p style="font-size: 30px;text-transform: uppercase;align-items: center;text-align: left;
                                        margin-left: 50px;">Coupons &emsp;</p>
                                                <h1><%= request.getAttribute("value") %></h1><span>OFF</span></div>
                                            <div class="d-flex flex-row justify-content-between off px-3 p-2"><span>Promo code:</span><span class="border border-success px-3 rounded code"><%= request.getAttribute("coupon") %></span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>





    <!-- Scripts -->
    <!-- Latest compiled and minified CSS -->

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script>
	const acceptButton = document.getElementById("sub");
	const couponDiv = document.getElementById("couponn");
	var conv=<%= request.getAttribute("conv") %>;

	couponDiv.style.display = "none"; // hide the coupon div by default

	acceptButton.addEventListener("click", function() {
	  couponDiv.style.display = "flex"; // show the coupon div when accept button is clicked
	});
	let range2 = document.querySelector('.hhhh2');
    let values2 = document.querySelector('#output2');
    let values3 = document.querySelector('#output3');

    range2.addEventListener('input', () => {
        values2.textContent = range2.value + ' Pts';
        values3.textContent = range2.value*conv + '<%= request.getAttribute("op") %>';
    });
    
    




	
	</script>
</body>

</html>