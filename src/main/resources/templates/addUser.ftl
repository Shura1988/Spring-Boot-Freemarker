<html lang="en">
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <style>
        .container {
            margin-top: 80px;
        }
        .bg-dark {
            background-color: #3b8dbd !important;
        }
    </style>
</head>
<body>

<div align="center" class="container">
    <h1> Registration form </h1>
    <div>
        <form action="/addUser" method="post">

            Login :<br> <input required type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                               name="login" placeholder="login"/>
            <br>
            <br>
            Password :<br><input required type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                                 name="password" placeholder="Введите password"/><br>
            <br>
            Age: <br> <input required type="number" size="3" class="form-control mb-2 mr-sm-2 mb-sm-0"
                             name="age" min="1" max="120" value="1"
                             placeholder="Введите age"/><br>
            <br>
            Name :<br><input required type="text" name="name" class="form-control mb-2 mr-sm-2 mb-sm-0"
                             placeholder="Введите name"/><br>
            <br>
            Description :<br><input required type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                                    name="description" placeholder="Введите description"/><br>
            <br>
            Town :<br><input required type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                             name="town" placeholder="Введите town"/><br>
            <br>
            Street :<br><input required type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                               name="street" placeholder="Введите street"/><br>
            <br>
            House :<br><input required type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                              name="house" placeholder="Введите house"/><br>
            <br>
            <input type="submit" value="Сохранить"/>
            <br><br>

        </form>
        <form action="/enter" method="get">
            <input type="submit" class="form-control mb-2 mr-sm-2 mb-sm-0"
                   value="Exit">
        </form>
    </div>

</div>
</body>
</html>
