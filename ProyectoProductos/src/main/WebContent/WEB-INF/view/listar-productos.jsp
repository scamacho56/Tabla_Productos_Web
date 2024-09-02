<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Productos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background-color: #fdf7f7;
            font-family: 'Arial', sans-serif;
            color: #333;
        }
        h1 {
            margin-bottom: 20px;
            text-align: center;
            color: #fff;
            background: linear-gradient(90deg, #f5a8a0, #f6c1c8);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            font-family: 'Arial', sans-serif;
            font-size: 2rem;
        }

        .search-container {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }
        .search-container input {
            width: 250px;
            margin-right: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px;
            font-family: 'Arial', sans-serif;
        }
        .search-container input:focus {
            border-color: #f5a8a0;
            box-shadow: 0 0 8px rgba(245, 168, 160, 0.6);
        }
        .table-container {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            overflow-x: auto;
        }
        .table-scroll {
            max-height: 400px;
            overflow-y: auto;
        }
        .table-striped tbody tr:hover {
            background-color: #f5e8e8 !important; /* Sombreado rosa pálido */
        }
        .btn-primary, .btn-success, .btn-danger {
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .btn-primary:hover, .btn-success:hover, .btn-danger:hover {
            transform: scale(1.05);
        }
        .btn-primary {
            background-color: #f5a8a0;
            border-color: #f5a8a0;
        }
        .btn-success {
            background-color: #f6c1c8;
            border-color: #f6c1c8;
        }
        .btn-danger {
            background-color: #f5b7b1;
            border-color: #f5b7b1;
        }
    </style>
</head>
<body>

<section class="px-5 py-5">
    <div class="container">
        <h1>Productos</h1>
        <div class="search-container">
            <input type="text" id="searchInput" class="form-control" placeholder="Buscar en la tabla...">
            <button class="btn btn-primary" onclick="window.location.href='/ProyectoWeb/productos/findOne?opcion=1'; return false;">
                <i class="fa-solid fa-plus"></i> Agregar
            </button>
        </div>
     
        <div class="table-container">
            <div class="table-scroll">
                <table id="tablaProductos" 
                       class="table table-striped table-sm"
                       data-pagination="true"
                       data-page-list="[5, 10, 20, 50]">
                    <thead>
                        <tr>
                            <th data-field="idProducto" data-sortable="true">Id Producto</th>
                            <th data-field="nombre" data-sortable="true">Nombre</th>
                            <th data-field="descripcion" data-sortable="true">Descripción</th>
                            <th data-field="precio" data-sortable="true">Precio</th>
                            <th data-field="stock" data-sortable="true">Stock</th>
                            <th data-field="acciones">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${productos}">
                            <tr>
                                <td>${item.idProducto}</td>
                                <td>${item.nombre}</td>
                                <td>${item.descripcion}</td>
                                <td>${item.precio}</td>
                                <td>${item.stock}</td>
                                <td>
                                    <button class="btn btn-success" onclick="window.location.href='/ProyectoWeb/productos/findOne?idProducto=${item.idProducto}&opcion=1'; return false;">
                                        <i class="fa-solid fa-pen-to-square"></i> Actualizar
                                    </button>
                                    <button class="btn btn-danger" onclick="window.location.href='/ProyectoWeb/productos/findOne?idProducto=${item.idProducto}&opcion=2'; return false;">
                                        <i class="fa-solid fa-trash"></i> Eliminar
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('#tablaProductos').bootstrapTable({ sortReset: true });
    });

    $('#searchInput').on('keyup', function() {
        var value = $(this).val().toLowerCase();
        $('#tablaProductos').bootstrapTable('resetSearch', value);
    });
</script>

</body>
</html>
