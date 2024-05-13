<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <div class="container mt-3 mb-5 pb-5">
        <h2 class="fs-2">User Details Form</h2>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="name" class="fs-5">Name:</label>
                </div>
                <div class="col-10">
                    <input type="name" class="form-control" id="name" placeholder="Enter name" name="name">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="email" class="fs-5">Email:</label>
                </div>
                <div class="col-10">
                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="phone" class="fs-5">Phone:</label>
                </div>
                <div class="col-10">
                    <input type="phone" class="form-control" id="phone" placeholder="Enter phone" name="phone">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="address" class="fs-5">Address:</label>
                </div>
                <div class="col-10">
                    <textarea class="form-control" rows="3" id="address" name="text" placeholder="Address"></textarea>
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="postcode" class="fs-5">Post code:</label>
                </div>
                <div class="col-10">
                    <input type="number" class="form-control" id="postcode" placeholder="Enter post code" name="postcode">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="country" class="fs-5">Country:</label>
                </div>
                <div class="col-10">
                    <input type="text" class="form-control" id="country" placeholder="Enter country" name="country">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="card" class="fs-5">Card type:</label>
                </div>
                <div class="col-10">
                    <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something"> Visa
                    <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something"> AmEx
                    <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something"> Mastercard
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="cardnumber" class="fs-5">Card Number:</label>
                </div>
                <div class="col-10">
                    <input type="number" class="form-control" id="cardnumber" placeholder="Enter card number" name="cardnumber">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="securitycode" class="fs-5">Security code:</label>
                </div>
                <div class="col-10">
                    <input type="number" class="form-control" id="securitycode" placeholder="Enter security code" name="securitycode">
                </div>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <div class="row">
                <div class="col-2">
                    <label for="cardname" class="fs-5">Name on card:</label>
                </div>
                <div class="col-10">
                    <input type="number" class="form-control" id="cardname" placeholder="Exact name as on the card" name="cardname">
                </div>
            </div>
        </div>
        <div class="text-center">
            <button type="button" class="btn btn-primary">submit</button>
        </div>

</body>

</html>