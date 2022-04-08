<?php 

    $conectar = new mysqli("localhost","root","","automotriz");
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Norte</title>
	<link rel="stylesheet" href="bono.css" type="text/css">
</head>
<header>
    <nav>
	<section class="form-register">
	<!--<a href="index.php"> <input class="botons"  type="reset" value="↾ ↿ Inicio"></a>-->
	</section>
        

    </nav>
    <section class="textos-header">
        <h1>Empleado que recibira el bono</h1>
    </section>
    <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #000000;"></path></svg></div>
</header>
<body>
	

	<div id= "main-container">
		<table>
			<thead>
				<tr>
                    <th>Id</th>
					<th>Nombre(s)</th>
					<th>Apellidos</th>
                    <th>N_venta</th>
					<th>Bono</th>
					<!--<th colspan="2">Acción</th>-->	
					<!--<button value="Actualizar" name="Actualizar" class="btn btn-primary"></button>-->
					<!--<a href="index.php"> <input class="botons"  type="reset" value="Borrar"></a>-->
				</tr>
			</thead>
            <?php
                include("conectar.php");

                $query="SELECT * FROM bonos";
                $resultado = $conectar->query($query);
                while($row= $resultado -> fetch_assoc()){
            ?>
                <tr>
                    <td><?php echo $row ['idTrabajador'];?></td>
                    <td><?php echo $row ['Nombres'];?></td>
                    <td><?php echo $row ['Apellido'];?></td>
                    <td><?php echo $row ['N_venta'];?></td>
                    <td><?php echo $row ['bono'];?></td>
            <?php
                }
            ?>
		</table><br>
        <center><a href="norte.php"><input class="button"  type="reset" value="↾ ↿ regresar"></a></center>
	</div>
</body>
</html>