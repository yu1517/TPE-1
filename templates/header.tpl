<!DOCTYPE html>
<html lang="en">

<head>
    <base href="{BASE_URL}">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>LIBROS</title>
</head>

<body>
    <header>
        <img src="imgs/portada1.jpg" style="width: 100%; height: 18rem; object-fit:cover;">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" Style="margin-bottom: 2rem;">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarColor01">
                    <!--<img src="images/logo22.png" style="width: 3.5rem;">-->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="book">Libros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="author">Autores</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light" type="submit">Search</button>                        
                    </form>
                    {if !isset($smarty.session.USER_ID)}
                        <a href="login"><button class="btn btn-outline-light" type="button"
                                style="margin: 0 1rem;">Login</button></a>
                    {else}
                        <a href="logout"><button class="btn btn-outline-light" type="button"
                                style="margin: 0 1rem;">Logout</button></a>
                        <span>
                            <p style="color:#777777">User: {$smarty.session.USER_EMAIL}</p>
                        </span>
                    {/if}
                </div>
            </div>
        </nav>
</header>

    <!-- inicio main container -->
<main class="container">