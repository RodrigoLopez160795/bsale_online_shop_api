# Bsale test online shop API

La Base Uri para acceder a cualquier petición es: [https://bsale-test-api-rodrigo.herokuapp.com]

Esta aplicación cuenta con 2 controladores:

## **Categories Controller**

El endpoint para el controlador de categorias es **/categories**.

Un ejemplo de esta petición es: **https://bsale-test-api-rodrigo.herokuapp.com/categories**

Al realizar una petición HTTP de tipo GET a este endpoint retornara un JSON con la siguiente estructura:

`[ { "id": 1, "name": "bebida energetica" }, { "id": 2, "name": "pisco" }, { "id": 3, "name": "ron" }, { "id": 4, "name": "bebida" }, { "id": 5, "name": "snack" }, { "id": 6, "name": "cerveza" }, { "id": 7, "name": "vodka" } ] `

## **Products Controller**

Este controlador cuenta con:

1. Una petición HTTP de tipo get que retorna un index de los productos. El endpoint para esta acción es **/products**.
   Un ejemplo para esta petición es: **https://bsale-test-api-rodrigo.herokuapp.com/products**
   Esta petición retornara un JSON con la siguiente estructura:
   `[ { "id": 5, "name": "ENERGETICA MR BIG", "url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/misterbig3308256.jpg", "price": 1490.0, "discount": 20, "category": 1 }, { "id": 6, "name": "ENERGETICA RED BULL", "url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/redbull8381.jpg", "price": 1490.0, "discount": 0, "category": 1 }, ]`

2. Una petición HTTP de tipo GET que retorna un producto que se desea buscar. El endpoint para esta petición es
   **/searchProduct/:query** en donde **:query** se refiere al producto que se desea buscar. Basta con que la palabra ingresada se encuentre dentro del nombre completo del producto.

Un ejemplo para contruir la URL para esta petición es: **https://bsale-test-api-rodrigo.herokuapp.com/searchProduct/salado** devolviendo un JSON con la siguiente estructura:

`[ { "id": 47, "name": "Maní salado", "url_image": "https://dojiw2m9tvv09.cloudfront.net/11132/product/manisaladomp4415.jpg", "price": 600.0, "discount": 0, "category": 5 } ]`
