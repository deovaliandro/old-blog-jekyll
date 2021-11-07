---
title: "GCD"
author: Deo Valiandro. M - deo@gnuweeb.org
date: '2021-07-24'
slug: gcd
layout: default
---

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>GCD</title>

    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../RSA.js"></script>
</head>

<body>
    <div class="col-lg-8 mx-auto p-3 py-md-5">
        <h1>GCD</h1>
        <form class="form-inline">
            <div class="form-group mb-4">
                <label class="sr-only">Email</label>
                <input type="number" class="form-control" id="number1">

                <label class="sr-only">Password</label>
                <input type="number" class="form-control" id="number2">
            </div>
            <button class="btn btn-primary mb-2" onclick="getGCD();return false;">Result</button>
            <h2 id="result"></h2>
        </form>
    </div>


    <script>
        function getGCD() {
            var x = document.getElementById("number1").value;
            var y = document.getElementById("number2").value;

            document.getElementById("result").innerHTML = "GCD (" + x + ", " + y + ") = " + gcd(x, y);
        }
    </script>

</body>

</html>