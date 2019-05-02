# WordPressDBCRUDRESTClientServer
Cross Platform CRUD REST Client and Server For WordPress 5.1.1 Database.

# Product Overview
The WordPress DB REST API Client Server was generated using AutoTables for RAD Server using the WordPress 5.1.1 database schema from https://wordpress.org/download/ WordPress is an "open source software you can use to create a beautiful website, blog, or app." The Auto Tables for RAD Server project is not affiliated with the WordPress project. The WordPress DB REST client compiles for Android, IOS, macOS, Windows, and Linux (using FMXLinux). The WordPress DB REST Server compiles for RAD Server. This project provides basic CRUD operations for the WordPress database. It includes listing data in a table, adding a new record in a table, editing a record in a table, and deleting a record in a table. Supports users and groups through RAD Server. The API is fully documented in the Swagger 2.0 format.

# Compilation

The REST API client and server compile using Embarcadero Delphi 10.3.1.

The REST API client may compile using the free Embarcadero Delphi 10.3.1 Community Edition.
https://www.embarcadero.com/products/delphi/starter

The REST API server will compile using Embarcadero Delphi 10.3.1 Enterprise or Architect. It supports IIS and Apache on Windows, Apache on Linux, and a stand alone server on Windows and Linux.

# Configuration
You will need to edit the FDConnection component in the RAD Server project to enter your MySQL/MariaDB username, password, and hostname. Additionally, your database should be named wordpress. Otherwise you will need to re-generate the project with Auto Tables for RAD Server using your specific database name.

# WordPress DB REST Client Login
![Alt text](Screenshots/login.jpg?raw=true "List View")

# WordPress REST Client List View
![Alt text](Screenshots/list.jpg?raw=true "List View")

# WordPress REST Client Details View
![Alt text](Screenshots/detail.jpg?raw=true "Detail View")

