<?php 

    $conectar = new mysqli("localhost","root","","automotriz");
 ?>


<!DOCTYPE html>
<html>
<head>
	<title>Centro</title>
	<link rel="stylesheet" href="centro.css" type="text/css">
</head>
<header>
    <nav>
	<section class="form-register">
	<!--<a href="index.php"> <input class="botons"  type="reset" value="↾ ↿ Inicio"></a>-->
	</section>
        

    </nav>
    <section class="textos-header">
        <h1>Sucursal Centro</h1>
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
                    <th>Apellido</th>
					<th>Bono</th>
					<th>Numero de ventas</th>
                    <th>Tipo de venta</th>
                    <th>Fecha de venta</th>
					<!--<th colspan="2">Acción</th>-->	
					<!--<button value="Actualizar" name="Actualizar" class="btn btn-primary"></button>-->
					<!--<a href="index.php"> <input class="botons"  type="reset" value="Borrar"></a>-->
				</tr>
			</thead>

            <?php
                include("conectar.php");

                $query="SELECT * FROM suc_c";
                $resultado = $conectar->query($query);
                while($row= $resultado -> fetch_assoc()){
            ?>
                <tr>
                    <td><?php echo $row ['idTrabajador'];?></td>
                    <td><?php echo $row ['Nombres'];?></td>
                    <td><?php echo $row ['Apellido'];?></td>
                    <td><?php echo $row ['bono'];?></td>
                    <td><?php echo $row ['N_venta'];?></td>
                    <td><?php echo $row ['T_Venta'];?></td>
                    <td><?php echo $row ['F_Venta'];?></td>
                 <!--   <td><a href="editar.php?id=<?php echo $row ['id'];?>" > Editar</a></td>
					<td><a href="borrar.php?id=<?php echo $row ['id'];?>" > Borrar</a></td>-->
                </tr>                
            <?php
                }
            ?>
		</table><br>	
        <center><a href="consulta.php"><input class="button"  type="reset" value="↾ ↿ regresar"></a></center>	
	</div>
	<!--<a href="index.php"><input class="botons"  type="return" value="Regresar"></a>-->
</body>
</html>