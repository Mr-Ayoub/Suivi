# Utilise l'image officielle de Python
FROM python:3.10-slim

# Définit le dossier de travail
WORKDIR /app

# Copie les fichiers nécessaires
COPY . /app

# Installe les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Expose le port utilisé par Flask
EXPOSE 5000

# Commande pour démarrer l'application Flask
CMD ["python", "app.py"]
