# README - Reto IaC CI/CD

Este repositorio contiene la implementación del pipeline de CI/CD en Azure DevOps para desplegar la infraestructura como código (IaC) escrita en Terraform. La infraestructura se despliega en la nube de AWS y cumple con los requerimientos del cliente. A continuación, se detallan los aspectos clave del proyecto.

## Estructura del Repositorio

- **IaC - CI/CD:** Contiene el código Terraform inicial. Cualquier error en el código ha sido corregido para garantizar su ejecución sin problemas.

- **Pipeline-Templates:** Repositorio separado que alberga las plantillas del pipeline. La lógica del pipeline está totalmente encapsulada en estas plantillas.

## Pipeline en Azure DevOps

### Stages

1. **Security Checks:**
   - Utiliza Checkov para realizar análisis estático del código Terraform.
   - El resultado se visualiza en Azure Pipelines.
   - En caso de errores, el pipeline falla.

2. **Generación de Plan:**
   - Genera el plan de Terraform.

3. **Aprobación Manual:**
   - Espera la aprobación manual antes de continuar.

4. **Despliegue del Plan:**
   - Despliega la infraestructura en AWS.

### Opciones Adicionales

- **Ejecución del Análisis Estático:**
  - Se brinda la opción de ejecutar solo el análisis estático sin despliegue.
  - El reporte se visualiza en Azure Pipelines.
  - En caso de errores, el pipeline falla.

- **Almacenamiento de Backups:**
  - Reporte del análisis estático se guarda en un bucket de S3 destinado para backups.
  - Archivo JSON con outputs de Terraform se guarda en otro bucket de S3.

- **Backend Remoto Terraform:**
  - Se ha agregado un backend remoto (bucket S3) al código Terraform.

## Extensiones y Service Connections

- No hay restricciones en la utilización de extensiones o Service Connections de Azure DevOps o del Marketplace. Se utilizan según sea necesario.

## Ejecución del Pipeline

1. Clonar este repositorio.
2. Configurar las Service Connections y extensiones según sea necesario.
3. Ejecutar el pipeline en Azure DevOps.
