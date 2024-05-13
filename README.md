# Inventory Management System (InvenTrack)

## Introduction:
Welcome to InvenTrack - an automated Inventory Management System designed to help businesses efficiently track, manage, and control their inventory. InvenTrack provides real-time monitoring of products, manages purchase and sales orders, optimizes stock levels, and enhances overall operational efficiency.

## Scope:
This project encompasses various features including Product Management, Inventory Tracking, Purchase Orders and Supplier Management, Sales Order Management, Point of Sales, Return and Refunds, Reports and Analytics, Access Control, Employee Management, and Customer Management.

## Objectives:
1. Optimize inventory levels to meet customer demands.
2. Minimize costs associated with warehouses and product records.
3. Enhance the quality of the supply chain through improved coordination with suppliers and distributors.
4. Prevent loss by keeping track of remaining product stock.
5. Provide real-time access to data to reduce the chances of wrong decisions regarding stock.
6. Prevent mismanagement and theft in the inventory through detailed record-keeping.
7. Reduce human resources and associated costs.
8. Enhance customer service and satisfaction by reducing delays in orders due to inaccurate inventory records.

## Problem Statement:
InvenTrack faces issues regarding stock and operational costs due to its manual management system. To address these challenges and improve efficiency, an automated inventory management system is required.

## Description:
Manual management has led to increasing issues with stocks and costs at InvenTrack. Lack of real-time visibility of products and stocks has resulted in a significant increase in operational costs. An automated inventory management system is needed to provide real-time inventory views, enhance data accuracy, and securely manage and track products and orders.

## Business Process:
The business process of InvenTrack includes the following:

- **Product Management:** Adding, updating, and deleting products in the inventory. Tracking product details such as name, description, price, and stock levels.
- **Inventory Tracking:** Managing stock replenishment and reordering based on predefined thresholds.
- **Purchase Orders:** Creating and managing purchase orders for restocking products.
- **Supplier Management:** Tracking supplier information and purchase history.
- **Sales Order Management:** Processing customer sales orders and managing order fulfillment.
- **Point of Sale (POS):** Handling transactions and generating sales receipts and customer receipts.
- **Order Returns:** Handling product returns and updating them back to inventory.
- **Employee Management:** Managing employee information and shifts.
- **Reporting and Analytics:** Generating reports on sales and inventory.
- **Security and Access Control:** Implementing role-based access control to restrict user access to sensitive data.
- **Customer Management:** Tracking customer purchase history.

## How to Run the Project:
To run InvenTrack, follow these steps:

1. **Database Setup:**
   - Open SQL Server Management Studio and execute the provided SQL script (`InvenTrack_Database.sql`) to create the database schema and populate initial data.
   
2. **Visual Studio Setup:**
   - Open the solution file (`WebApplicationProj.sln`) in Visual Studio.
   
3. **Configure Connection String:**
   - Open the `web.config` file and update the connection string to point to the SQL Server database created in step 1.
   
4. **Build and Run:**
   - Build the solution to ensure all dependencies are resolved.
   - Press F5 or select "Start Debugging" to run the project. The application will launch in your default web browser.
   
5. **Login:**
   - Use the provided login credentials to access the system. (e.g., Admin username: admin, password: admin)
   
6. **Explore Features:**
   - Once logged in, you can explore and utilize the various features of InvenTrack according to your role and permissions.

**Documentation:**
I have added the detailed report titled `Report.pdf` to this repository. This report provides comprehensive information on our system which was created for our database semester project.

