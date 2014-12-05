<?php

    $titulo = 'Bienvenidos al About';

    $contenido = 'Hola!!';

    $variables = array('titulo'=>$titulo,
        'contenido'=>$contenido);

    view('about', $variables);