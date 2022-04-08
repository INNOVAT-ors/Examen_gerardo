<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;

$conexion=msqli_connect("localhost","root","","loging");

$consulta="SELECT*FROM datos where datos='$usuario' and contraseña='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_num_rows($resultado);

if($filas){
    header("location:index.php");

}else{
    ?>
    <?php
    include("login.php");
    ?>
    <h1 class="malo">ERROR</h1>
    <?php

} 
mysqli_free_result($resultado);
mysqli_close($conexion);


























