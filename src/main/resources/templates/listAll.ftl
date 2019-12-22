<html>
<head>
    <title>List Users</title>
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
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
</nav>
<h1>User Admin</h1>
<div align="center" class="container">
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>Login</th>
            <th>Password</th>
            <th>Age</th>
            <th>Name</th>
            <th>Description</th>
            <th>Town</th>
            <th>Street</th>
            <th>House</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list model["user"] as user>
        <tr>
            <th scope="row">${user.id}</th>
            <th>${user.login}</th>
            <th>${user.password}</th>
            <th>${user.age}</th>
            <th>${user.name}</th>
            <th>${user.description}</th>
            <th> ${user.adress.getTown()} </th>
            <th> ${user.adress.getStreet()}</th>
            <th> ${user.adress.getHouse()} </th>
            <th>
                <form action="delete" method="post">
                    <input type="hidden" name="id" value="${user.getId()}">
                    <input type="submit" value="delete" class="btn btn-sm btn-warning" style="float:left">
                </form>
                <form action="/updateUser" method="get">
                    <input type="hidden" name="id" value="${user.getId()}">
                    <input type="hidden" name="login" value="${user.getLogin()}">
                    <input type="hidden" name="password" value="${user.getPassword()}">
                    <input type="hidden" name="age" value="${user.getAge()}">
                    <input type="hidden" name="name" value="${user.getName()}">
                    <input type="hidden" name="description" value="${user.getDescription()}">
                    <input type="hidden" name="town" value="${user.adress.getTown()}">
                    <input type="hidden" name="street" value="${user.adress.getStreet()}">
                    <input type="hidden" name="house" value="${user.adress.getStreet()}">
                    <input type="submit" value="update" class="btn btn-sm btn-warning" style="float:left">
                </form>
            </th>
        </tr>
        </tbody>
        </#list>
    </table>
    <br>
    <form action="/createUser" method="get">
        <input type="submit" class="form-control mb-2 mr-sm-2 mb-sm-0"
               value="Add new User">
    </form>
</div>
</body>
</html>