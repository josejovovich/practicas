<?php

    require'helpers.php';
    require'header.php';
    require'footer.php';

    if(isset($_GET['url'])){

        controller($_GET['url']);
    }
    else{
        $_GET['url']='home';

        controller($_GET['url']);
    }