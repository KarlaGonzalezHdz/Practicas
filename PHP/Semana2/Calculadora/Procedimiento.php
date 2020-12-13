<?php
    
        $n1 = (int)$_POST['numero1'];
        $n2 = (int)$_POST['numero2']; 

        if(isset($_POST['sumar'])){
           $suma = $n1+$n2;
                echo "<div style='text-align: -webkit-center;'>";
                echo "<h1>RESULTADO</h1>";
                echo "El resultado de la suma " .$_POST['numero1']." + ".$_POST['numero2']." = ". $suma;
                echo "</div>";     
        }
        
        if(isset($_POST['restar'])){
                $resta = $n1-$n2;
                     echo "<div style='text-align: -webkit-center;'>";
                     echo "<h1>RESULTADO</h1>";
                     echo "El resultado de la resta " .$_POST['numero1']." - ".$_POST['numero2']." = ". $resta;
                     echo "</div>";     
        }

        if(isset($_POST['multiplicar'])){
                $multiplicación = $n1*$n2;
                     echo "<div style='text-align: -webkit-center;'>";
                     echo "<h1>RESULTADO</h1>";
                     echo "El resultado de la multiplicación " .$_POST['numero1']." * ".$_POST['numero2']." = ". $multiplicación;
                     echo "</div>";     
        }

        if(isset($_POST['dividir'])){
                if ($n2 != 0 ){
                   $division = $n1/$n2;  

                } else {
                        $division = 0;
                }
                
                echo "<div style='text-align: -webkit-center;'>";
                echo "<h1>RESULTADO</h1>";
                echo "El resultado de la division entre " .$_POST['numero1']." / ".$_POST['numero2']." = ". $division;
                echo "</div>";     
        }


        ob_start();
        header("refresh:5, url=Calculadora.php");
        ob_end_flush();
?>