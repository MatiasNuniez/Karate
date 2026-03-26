# Automatización API con Karate Framework

Proyecto de automatización de pruebas para la API pública [automationexercise.com/api_list](https://automationexercise.com/api_list) usando [Karate DSL](https://github.com/karatelabs/karate).

---

## Requisitos previos

Antes de ejecutar el proyecto, asegurate de tener instalado:

| Herramienta | Versión mínima | Verificar con |
|---|---|---|
| Java JDK | 17 | `java -version` |
| Git | cualquiera | `git --version` |

> **El proyecto incluye el wrapper `gradlew` asi que no necesitas descargarlo ya que lo hace automáticamente.**

---

## Estructura del proyecto

```
src/test/java/
├── karate-config.js          # Configuración global (baseUrl, env)
└── users/
    ├── userRunner.java        # Runner principal (ejecuta todos los escenarios)
    ├── user_create.feature    # Escenario POST  - Crear usuario
    ├── user_get.feature       # Escenario GET   - Obtener usuario por email
    ├── user_update.feature    # Escenario PUT   - Actualizar usuario
    └── user_delete.feature    # Escenario DELETE - Eliminar usuario
```

---

## Escenarios implementados

| # | Feature | Método | Endpoint | Descripción |
|---|---|---|---|---|
| 1 | `user_create.feature` | POST | `/createAccount` | Crea un nuevo usuario con todos sus datos |
| 2 | `user_get.feature` | GET | `/getUserDetailByEmail` | Obtiene el detalle de un usuario por email |
| 3 | `user_update.feature` | PUT | `/updateAccount` | Actualiza los datos de un usuario existente |
| 4 | `user_delete.feature` | DELETE | `/deleteAccount` | Elimina una cuenta por email y contraseña |

---

## Pasos previo a la ejecución

## Clonar el proyecto
1. Pararte en el directorio local donde quieras alojar este repositorio

2. Abrir una terminal en ese directorio

3. Pegar el siguiente comando en la terminal `git clone https://github.com/MatiasNuniez/Karate.git`

4. Presionar enter y esperar que se clone

---

## Ejecución

### Los siguientes comandos se ejecutan en el directorio local que decidimos alojar el repositorio en `Pasos previo a la ejecución`

### Opción 1 — Solo correr los tests

```bash
./gradlew clean test
```

### Opción 2 — Correr los tests y abrir el reporte automáticamente

```bash
./gradlew clean test aggregate
```

> En Windows usar `gradlew.bat` en lugar de `./gradlew`

---

## Ver el reporte

Después de ejecutar, el reporte HTML de Karate se genera en:

```
build/karate-reports/karate-summary.html
```

Abrilo directamente en el navegador o usá el comando `aggregate` que lo abre automáticamente (Linux/Mac).
