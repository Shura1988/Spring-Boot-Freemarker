<html>
<head>
    <meta charset="utf-8">
    <title>Update</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="https://www.viralpatel.net">Data Base
        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
</nav>
<div align="center" class="container">
    <form action="update" method="post">
                id :<br> <input  type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                                   name="id" value=""/>
        <br>
        Login :<br> <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                           name="login" placeholder="login"/>
        <br>
        <br>
        Password :<br><input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                             name="password" placeholder="Введите password"/><br>
        <br>
        Age: <br> <input type="number" size="3" class="form-control mb-2 mr-sm-2 mb-sm-0"
                         name="age" min="1" max="120" value="1"
                         placeholder="Введите age"/><br>
        <br>
        Name :<br><input type="text" name="name" class="form-control mb-2 mr-sm-2 mb-sm-0"
                         placeholder="Введите name"/><br>
        <br>
        Description :<br><input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                                name="description" placeholder="Введите description"/><br>
        <br>
        Town :<br><input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                         name="town" placeholder="Введите town"/><br>
        <br>
        Street :<br><input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                           name="street" placeholder="Введите street"/><br>
        <br>
        House :<br><input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0"
                          name="house" placeholder="Введите house"/><br>
        <br>
        <input type="submit" class="btn btn-primary" value="Обновить"/>
        <br><br>

    </form>
    <form action="/enter" method="get">
        <input type="submit" class="form-control mb-2 mr-sm-2 mb-sm-0"
               value="Exit">
    </form>
</div>

</body>
</html>
