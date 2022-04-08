<?php
$User=$_POST['usuario'];
$Password=$_POST['contraseña'];

//conectar a la base de datos
$conexion=mysqli_connect("localhost", "root", "", "automotriz");
$consulta="SELECT * FROM login_gn where usuario='$User' and contraseña='$Password'";
$resultado=mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);

if ($filas>0) {
   header ("location:consulta.php");
}
else {
   echo "";
}
mysqli_free_result($resultado);
mysqli_close($conexion);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link rel="stylesheet" href="validar.css" type="text/css">
</head>
<header>
<a href="login.php"> <input class="botons"  type="reset" value="Intentar otra vez🐺 "></a>
    <section class="textos-header">
        
        <img src="alfa1.jpg" alt="" width="150px" height="150" > 
        <h1>𝘼𝙘𝙘𝙚𝙨𝙤 𝙙𝙚𝙣𝙚𝙜𝙖𝙙𝙤</h1>
    </section>
    <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #000000;"></path></svg></div>
    <nav>
</header>
<body>
<section class="Usuario">
        <div class="carros">
            <div class="carro">
                <img src="error.jpg" alt=""  >
                </div>
        </div>
</body>
</html>



