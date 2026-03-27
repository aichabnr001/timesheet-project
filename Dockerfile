# Utilise une image Java légère comme base
FROM eclipse-temurin:17-jre

# Définit le dossier de travail dans le conteneur
WORKDIR /app

# Copie le fichier jar généré depuis le dossier target vers le conteneur
COPY target/timesheet-devops-1.0.jar app.jar

# Expose le port configuré dans ton application.properties (8082)
EXPOSE 8082

# Définit la commande pour lancer l'application au démarrage du conteneur
ENTRYPOINT ["java", "-jar", "app.jar"]
