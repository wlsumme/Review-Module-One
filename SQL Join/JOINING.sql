/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT products.Name, categories.Name FROM Products
INNER JOIN categories
ON categories.CategoryID = products.CategoryID
WHERE categories.Name = "Computers"; 

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT products.name, products.price, reviews.rating 
FROM Products
INNER JOIN reviews ON reviews.ReviewID = products.ProductID
WHERE reviews.rating = 5;



 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.firstname, e.lastname, SUM(sales.quantity) AS Total
FROM sales AS s
INNER JOIN employees AS e ON e.employeeID = s.employeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT  2;

SELECT * FROM sales
WHERE EmployeeID = 33809;



/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT d.Name AS 'Deparment Name', c.Name AS 'Category Name' FROM departments as d
INNER JOIN categories as c ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';




/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT products.Name, SUM(sales.Quantity) AS "Total Sales", SUM(sales.Quantity * sales.Priceperunit) AS "TOtoal Price" FROM sales
 INNER JOIN products
 ON sales.productID = products.productID
 WHere products.NAme Like "%hotel%"
 GROUP BY sales.ProductID;
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT products.Name, reviews.Reviewer, reviews.RAting, reviews.Comment FROM products
INNER JOIN reviews
ON products.ProductID = reviews.ProductID
WHERE products.NAme LIKE "%visio%" AND reviews.Rating =1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, sales.Quantity FROM employees
INNER JOIN sales
ON employees.EmployeeID = sales.EmployeeID
INNER JOIN products
ON sales.ProductID = products.ProductID
ORDER BY employees.EmployeeID, products.Name, sales.Quantity;





