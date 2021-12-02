<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="../resources/css/style.css">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<div class="container">
   <div class="row">
      <div class="col-md-6 mx-auto mt-5">
         <div class="payment">
            <div class="payment_header">
               <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
            </div>
            <div class="content">
             
               <table style="width:100%">

								<tr>

									<th>Name</th>
									<th>Company</th>
									<th>Qty</th>
									<th>Price</th>


								</tr>

								<c:forEach var="userProducts" items="${userProducts}">
								
									<tr>

										<td>${userProducts.name}</td>
										<td>${userProducts.company}</td>
										<td>${userProducts.size} Units</td>
										<td>Rs ${userProducts.price}</td>
										
													
									</tr>


								</c:forEach>

								<tr>
									<td  colspan="4">Total Price = <strong style = "color : black">Rs ${total_price}</strong></td>
								</tr>

							</table>
							  <h1>Payment Success !</h1>
               <p>Thank you for purchasing. Your medicines will be delivered soon! </p>
               <a href="/Sporty-Shoes-Store/homepage/products">Go to Home</a>
            </div>
            
         </div>
      </div>
   </div>
</div>
</body>
</html>