# 🚀 Unmanaged RAP Sales Order Application

A **Sales Order Management Application** developed using the **SAP ABAP RESTful Application Programming Model (RAP)** with an **Unmanaged Implementation**, **Draft Handling**, **Header-Item Composition**, **OData V4**, and **SAP Fiori Elements**.

## 📌 Project Overview

This project demonstrates how to build an end-to-end SAP application using the **Unmanaged RAP Model**.

The application manages:

- Sales Order Header
- Sales Order Items
- Create operations
- Read operations
- Update operations
- Delete operations
- Draft handling
- Header-Item relationships
- SAP Fiori Elements UI

In the unmanaged RAP scenario, the developer manually implements the business logic and database persistence operations.

---

## 🛠 Technologies Used

- SAP ABAP Cloud
- ABAP RESTful Application Programming Model (RAP)
- Core Data Services (CDS)
- Behavior Definition
- Behavior Implementation
- Draft Handling
- OData V4
- SAP Fiori Elements
- Eclipse ADT
- GitHub

---

## 🏗 Application Architecture

The project follows the RAP architecture:


Database Tables
      ↓
CDS Interface Views
      ↓
Behavior Definition
      ↓
Behavior Implementation
      ↓
CDS Projection Views
      ↓
Behavior Projection
      ↓
Metadata Extensions
      ↓
Service Definition
      ↓
OData V4 Service Binding
      ↓
SAP Fiori Elements Application
