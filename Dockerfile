# ─────────────────────────────────────────────
# Imagen base: Python 3.10 slim (ligera)
# ─────────────────────────────────────────────
FROM python:3.10-slim

# Evitar que Python genere archivos .pyc y
# que el output quede en buffer
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de dependencias primero
# (aprovecha el caché de Docker)
COPY requirements.txt /app/

# Instalar dependencias
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copiar todo el código fuente al contenedor
COPY . /app/

# Exponer el puerto 8000 (Django por defecto)
EXPOSE 8000

# Comando para aplicar migraciones y levantar el servidor
CMD ["sh", "-c", "python myproject/manage.py migrate && python myproject/manage.py runserver 0.0.0.0:8000"]
