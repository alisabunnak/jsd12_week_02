# GEMINI.md - Context for LongRun@bkk & Burger Joint System

## Project Overview
This workspace is a collection of materials and exercises for **JSD12 Week 02**. It contains two primary components:
1.  **LongRun@bkk (Shoe Rental Service):** A conceptual e-commerce project including business documentation, user stories, and basic JavaScript data structures.
2.  **Burger Joint Management System:** A complete PostgreSQL database implementation including schema, mock data, and various exercises.

## 1. LongRun@bkk (Shoe Rental Service)
- **Goal:** Provide a rental service for high-end running shoes so users can try before they buy.
- **Key Features:** User registration, shoe browsing, rental history, reviews, and admin management.
- **Documentation:**
    - `01_my-ecommerce.md`: Problem statement, solution, and core features.
    - `02_business-model-canvas.excalidraw`: Business model visualization.
    - `03_use-case-diagram.excalidraw`: System use case diagrams.
    - `04_er-diagram.excalidraw`: Entity-Relationship diagram for the shoe rental system.
    - `05_product-backlog.md`: Detailed user stories (PB1-PB12).
    - `06_bring-it-to-javascript.js`: Initial JS implementation of shoe data.

## 2. Burger Joint Management System
- **Goal:** Manage a burger restaurant's inventory, staff, menu, and orders.
- **Technologies:** PostgreSQL.
- **Core Tables:**
    - `Suppliers`: Ingredient vendors.
    - `Staff`: Employee management.
    - `Ingredients`: Inventory tracking with stock levels and units.
    - `MenuItems`: The restaurant's menu items.
    - `RecipeItems`: Links menu items to ingredients (many-to-many).
    - `Orders`: Customer transactions.
    - `OrderItems`: Specific items within an order (many-to-many).

### Implementation Files (`postgresql/`):
- `create-tables.sql`: Primary schema definition.
- `01_suppliers.sql` to `07_order_items.sql`: Data insertion and table-specific setup.
- `query.sql`: Scratchpad for testing queries.

### Exercises (`Excercise.sql/`):
- Contains a series of SQL query exercises (01-10) targeting the Burger Joint database.

## Development & Usage
### Database Setup
1.  Execute `postgresql/create-tables.sql` in your PostgreSQL environment.
2.  Run the numeric SQL files in order (`01_suppliers.sql` through `07_order_items.sql`) to populate the database with mock data.
3.  Use `postgresql/query.sql` for custom query development.

### Running Exercises
- Refer to `Excercise.sql/01_excercise.sql` through `10_excercise.sql` for specific SQL challenges.

### JavaScript Development
- `06_bring-it-to-javascript.js` is a standalone script for testing basic data access logic. Run it with:
  ```bash
  node 06_bring-it-to-javascript.js
  ```
