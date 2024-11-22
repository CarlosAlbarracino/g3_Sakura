<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            width: 100%;
            height: 100%;
        }

        .elemento{
            width: 150px;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            border: 2px solid silver;
            border.radius:10px;
        }

        .cabecera{
            width: 150px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid silver;
        }
        
    </style>
</head>
<body>
    <?php
    // Configuración de la conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "manga_cafe";
    
    // Crear conexión
    $conn = new mysqli($servername, $username, $password, $database);
    
    // Verificar la conexión
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error . "\n");
    }
    ?>
    
</body> 
    <div class="elemento">
        <div class="cabecera">
            <div class="cabecera_id">
                <?php echo $_SESSION ?>
            </div>           
            <div class="cabecera-nombre">
                libro1
             </div>

        </div>
        <div class="cuerpo">
            descripcion del cuerpo
        </div>
        <div class="pie">
            $1000
        </div>
    </div>
</html>
