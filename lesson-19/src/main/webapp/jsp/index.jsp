<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/styles.css">
</head>

<body>
	<div class="container-fluid vh-100" style="margin-top: 80px">
		<div class="" style="margin-top: 50px">
			<div class="rounded d-flex justify-content-center">
				<div class="col-md-4 col-sm-12 shadow-lg p-5 bg-light">
					<div class="text-center">
						<h3 class="text-primary">Student registration form</h3>
					</div>
					<div class="photo_wrapper">
						<h3>Upload Photo</h3>
						<div>
							<div id="singleFileUploadError"></div>
							<div id="singleFileUploadSuccess"></div>
						</div>
						<img class="photo" src="images/default_photo.ico">
						<form id="singleUploadForm" name="singleUploadForm"
							class="uploadForm">
							<input id="singleFileUploadInput" type="file" name="file"
								required />
						</form>
					</div>
					<form action="save" method="POST">
						<div class="p-4 inputs_wrapper">

							<div class="input-group mb-3">
								<i class="bi bi-person-plus-fill text-white"></i> <input
									id="file" name="file" type="hidden" class="form-control">
							</div>

							<div class="input-group mb-3">
								<input id="firstName" name="firstName" type="text" class="form-control" placeholder="First name">
							</div>

							<div class="input-group mb-3">
								<input id="lastName" name="lastName" type="text" class="form-control" placeholder="Last name">
							</div>

							<div class="input-group mb-3">
								<input id="age" name="age" type="number" class="form-control" placeholder="Age">
							</div>

							<div class="d-grid col-12 mx-auto">
								<button class="btn btn-primary register" type="submit">
									<span></span> Create
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="js/file.js"></script>
</body>
</html>