SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

Explanation:
SUM(amount) calculates the total payment for each date
GROUP BY paymentDate aggregates payments by date
ORDER BY paymentDate DESC sorts from newest to oldest
LIMIT 5 restricts the output to the top 5 latest dates

  
Question 2: Average Credit Limit by Customer
SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

Explanation:
AVG(creditLimit) computes the average credit limit
GROUP BY customerName, country groups results by both customer name and country as required

  Question 3: Total Price of Products Ordered
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

Explanation:
quantityOrdered * priceEach calculates the price for each line item
SUM(...) aggregates the total price per product/quantity combination
GROUP BY productCode, quantityOrdered groups results by both columns as specified

Question 4: Highest Payment Amount by Check Number

SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
Explanation:
MAX(amount) finds the highest payment amount for each check
GROUP BY checkNumber groups the results by check number
