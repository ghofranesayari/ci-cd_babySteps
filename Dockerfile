# Image Python légère
FROM python:3.12-slim

# Empêcher Python d'écrire des .pyc et bufferiser la sortie
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Dossier de travail
WORKDIR /app

# Installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du projet
COPY . .

# Exposer le port sur lequel Flask tourne
EXPOSE 5000

# Commander pour lancer l'application
# -> on lance directement app/main.py qui contient app.run(host="0.0.0.0", port=5000)
CMD ["python", "-m", "app.main"]

