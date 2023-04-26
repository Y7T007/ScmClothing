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
                                                <h1><%= request.getAttribute("coupon_value") %></h1><span>OFF</span></div>
                                            <div class="d-flex flex-row justify-content-between off px-3 p-2"><span>Promo code:</span><span class="border border-success px-3 rounded code"><%= request.getAttribute("coupon_code") %></span></div>
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

    






   
</body>

</html>