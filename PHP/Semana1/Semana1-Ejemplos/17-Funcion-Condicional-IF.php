<?php
    function validarEdad()
    {
        $edad=17;
        
        if($edad == 23)
        { return true;}
        else
        { return false;}
    }

    if(validarEdad())
    { echo "si es apto para ver la pelicula";}
    else 
    { echo "no es recomendado ver esta pelicula";}
?>