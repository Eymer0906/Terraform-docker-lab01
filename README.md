# Terraform Docker Lab 01

Este laboratorio es un entorno de práctica para **provisionar infraestructura local con Terraform** usando **Docker** como proveedor, simulando conceptos básicos de **cloud**, **firewall** y **balanceo de cargas** dentro de una máquina virtual **Xubuntu**.

## 🎯 Objetivos del proyecto
- Practicar **Infrastructure as Code (IaC)** con Terraform.
- Desplegar contenedores Docker de manera automática.
- Simular un entorno con:
  - **Balanceador de cargas** (Nginx o HAProxy).
  - **Base de datos** (MySQL).
  - **Reglas de firewall**.
- Preparar una base para proyectos de portafolio en **cloud computing**.

## 🛠️ Tecnologías usadas
- **Terraform** → Provisionamiento de recursos.
- **Docker** → Contenedores para servicios.
- **Xubuntu VM** (VirtualBox) → Entorno de desarrollo.
- **MySQL** → Base de datos.
- **Nginx / HAProxy** → Balanceo de carga.
- **UFW** → Configuración de firewall.

## 📂 Estructura del proyecto

terraform-docker-lab01/
│── main.tf # Configuración principal de Terraform
│── variables.tf # Variables del despliegue
│── docker-compose.yml # Servicios Docker
│── README.md # Documentación
