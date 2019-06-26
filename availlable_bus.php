<!DOCTYPE html>
<html>
<head>
	<title>Availlable Buses</title>
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<style type="text/css">
		#t1 {
			margin-top: 2%;
			margin-bottom: 10%;
		}
		img {
			margin-top: 2%;
		}
	</style>
</head>
<body>
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="#">
				<i class="fas fa-bus"></i>
			</a>
		  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  	</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			    <div class="navbar-nav">
			      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
			      <a class="nav-item nav-link" href="#">Verify Payment</a>
			      <a class="nav-item nav-link" href="#">Cancel Ticket</a>
                  <a class="nav-item nav-link" href="#">Contact Us</a>
                  <a class="nav-item nav-link" href="logout.php">Log Out</a>
			    </div>
  			</div>
		</div>
	</nav>
	<img src="bus.jpg" class="rounded mx-auto d-block" alt="bus">
	<div class="container">
		<table id="t1">
			<thead class="border-bottom border-primary">
				<tr class="row mx-md-n5">
					<td class="col px-md-5">Coach No</td>
					<td class="col px-md-5">Class</td>
					<td class="col px-md-5">Departing Time</td>
				</tr>
			</thead>
		</table>
	</div>
</body>
</html>