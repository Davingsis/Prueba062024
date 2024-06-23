# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos y el código fuente
COPY requirements.txt ./
#COPY src/ ./src/

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que corre el microservicio (ajusta según tu aplicación)
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "src/app.py"]
