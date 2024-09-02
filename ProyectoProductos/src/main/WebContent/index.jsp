<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Página de Inicio</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Quicksand:wght@300;500&display=swap">
    <style>
        body {
            background-color: #f9f3f6; /* Color de fondo rosa muy claro */
                font-family: 'Merriweather', serif;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
            animation: fadeIn 1.5s ease-out; /* Efecto de desvanecimiento en el cuerpo */
        }

        h1 {
            color: #d81b60; /* Rosa intenso */
            font-size: 4.5em; /* Tamaño de fuente grande */
            text-shadow: 3px 3px 12px rgba(0, 0, 0, 0.2); /* Sombra suave */
            margin: 20px;
            font-weight: 700; /* Fuente en negrita */
            animation: bounce 2s infinite; /* Animación de rebote */
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-20px);
            }
            60% {
                transform: translateY(-10px);
            }
        }

        .button-container {
            display: flex;
            gap: 20px;
            margin-top: 30px;
        }

        .button {
            background-color: #d81b60; /* Rosa intenso */
            color: white;
            font-size: 1.3em;
            padding: 15px 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .button:hover {
            background-color: #c2185b; /* Rosa más oscuro al hacer hover */
            transform: translateY(-4px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.3);
        }

        .button:active {
            transform: translateY(2px);
        }

        .image-container {
            margin-top: 40px;
        }

        .capybara-image {
            width: 300px; /* Ajusta el tamaño de la imagen */
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1.5s ease-out; /* Efecto de desvanecimiento en la imagen */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <h1>Bienvenidos al Camaleón Sabroso</h1>
    <div class="button-container">
        <a href="http://localhost:8080/ProyectoWeb/productos/findAll" class="button">Productos</a>
    </div>
</body>
</html>
