<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Cabinet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    
    <style type="text/css">
        .card {
            height: auto;
            width: 430px;
        }
        .info {
            margin-left: 35px;
        }
    </style>
</head>

<body>
    <div class="container mt-5 d-flex justify-content-center">
        <div class="card p-3">
            <div class="d-flex align-items-center">
                <div class="image">
                    <img src="/downloadFile/${student.file}" class="rounded" id="cabinetPhoto" width="155">
                </div>
                <div class="ml-3 w-100 info">
                    <h4 class="mb-0 mt-0">${student.firstName} ${student.lastName}</h4>
                    <div class="p-2 mt-2 bg-primary d-flex justify-content-between rounded text-white stats">
                        <div class="d-flex flex-column">
                            <span class="articles">Age</span> <span class="number1">${student.age}</span>
                        </div>
                    </div>
                    <div class="button mt-2 d-flex flex-row align-items-center">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/cabinet.js"></script>
</body>
</html>