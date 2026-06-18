# 📚 DjangoCRUD – Sistema de Gestión de Estudiantes

Proyecto web desarrollado con **Python 3.10** y **Django 4.1.2** que implementa un sistema CRUD (Crear, Leer, Actualizar, Eliminar) para la gestión de registros de estudiantes y sus materias.

---

## 🗂️ Estructura del Proyecto

```
djangoCRUD/
├── myproject/                  # Directorio raíz del proyecto Django
│   ├── manage.py               # Utilidad de línea de comandos de Django
│   ├── myproject/              # Configuración principal del proyecto
│   │   ├── settings.py         # Configuraciones globales (BD, apps, middleware)
│   │   ├── urls.py             # Enrutamiento principal
│   │   ├── wsgi.py             # Punto de entrada WSGI
│   │   └── asgi.py             # Punto de entrada ASGI
│   └── djangoCRUD/             # Aplicación principal
│       ├── models.py           # Modelo de datos (Registros)
│       ├── views.py            # Lógica de negocio (CRUD)
│       ├── urls.py             # Rutas de la app
│       ├── admin.py            # Registro en panel admin
│       ├── templates/          # Plantillas HTML
│       │   ├── plantilla.html  # Plantilla base
│       │   ├── index.html      # Página principal – lista de registros
│       │   ├── editar.html     # Formulario de edición
│       │   ├── estudiantes.html
│       │   └── materias.html
│       └── migrations/         # Migraciones de base de datos
├── Dockerfile                  # Imagen Docker del proyecto
├── docker-compose.yml          # Orquestación de contenedores
├── requirements.txt            # Dependencias Python
├── .gitignore                  # Archivos ignorados por Git
└── README.md                   # Este archivo
```

---

## ⚙️ Requisitos para ejecutar el proyecto

### Opción A – Ejecución local

- Python 3.10+
- pip
- Virtualenv (recomendado)

```bash
# 1. Clonar el repositorio
git clone https://github.com/TU_USUARIO/djangoCRUD.git
cd djangoCRUD

# 2. Crear entorno virtual
python -m venv venv
source venv/bin/activate        # Linux/Mac
venv\Scripts\activate           # Windows

# 3. Instalar dependencias
pip install -r requirements.txt

# 4. Aplicar migraciones
cd myproject
python manage.py migrate

# 5. Ejecutar servidor
python manage.py runserver
```

Acceder en: http://127.0.0.1:8000

### Opción B – Ejecución con Docker

```bash
docker-compose up --build
```

Acceder en: http://localhost:8000

---

## 🚀 Funcionalidades

| Operación | Descripción |
|-----------|-------------|
| **Crear** | Registrar un nuevo estudiante con nombre, apellidos, correo y materia |
| **Leer**  | Listar todos los estudiantes registrados |
| **Editar**| Modificar los datos de un estudiante existente |
| **Eliminar** | Borrar un registro del sistema |

---

## 🛠️ Tecnologías utilizadas

- **Lenguaje:** Python 3.10
- **Framework:** Django 4.1.2
- **Base de datos:** SQLite3 (por defecto)
- **Contenedores:** Docker + Docker Compose
- **CI/CD:** GitHub Actions
- **Control de versiones:** Git + GitHub

---

## 🌿 Ramas del repositorio

| Rama | Descripción |
|------|-------------|
| `master` | Rama principal estable |
| `feature/interfaz` | Configuración de interfaz |
| `feature/validaciones` | Configuración de Validaciones |
| `feature/documentacion` | Documentación y archivos de configuración |

---

## 👥 Autores

Proyecto seleccionado de GitHub como base para la práctica de CI/CD  
**Asignatura:** Gestión de la Configuración de Software – UNEMI  
**Período:** 2026
