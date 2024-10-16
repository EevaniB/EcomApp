<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="ecom.app.entities.Products" %>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New Arrivals - ElectroMart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .products-row {
            display: flex;
            justify-content: center;
            flex-wrap: wrap; /* Allow wrapping for responsive layout */
        }
        .product {
            margin: 20px;
            background: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            max-width: 250px;
        }
        img {
            width: 100%;
            height: auto;
            object-fit: cover;
            border-radius: 5px;
        }
    </style>
</head>
<body>
 
    <h1>New Arrivals</h1>
 
    <div class="products-row">
        <%
            List<Products> newArrivals = (List<Products>) request.getAttribute("newArrivals");
            for (Products product : newArrivals) {
        %>
            <div class="product">
               <a href="${pageContext.request.contextPath}/products/<%= product.getProduct_id() %>">
                    <img src="data:image/jpeg;base64,<%= product.getBase64ProductImage() %>" alt="<%= product.getProduct_name() %>">
                </a><h3><%= product.getProduct_name() %></h3>
                <p>&#8377;<%= product.getFinal_price() %></p>
            </div>
        <%
            }
        %>
    </div>
 
</body>
</html>
 
 