# Mini projet Docker - Python et PostgreSQL

## Présentation

Suite aux divers TP sur Docker, nous avons réalisé un mini projet pour mettre en pratique les connaissances acquises. Ce projet consiste à créer un environnement de développement pour une application web en Python avec une base de données PostgreSQL. Voici le sujet exact :

```plaintext
Vous êtes chargé de déployer une application web Python avec une base de
données PostgreSQL à l'aide de Docker. Utilisez Dockerfile pour construire les images des
conteneurs Python et PostgreSQL, et Docker Compose pour orchestrer le déploiement.
```

## Fonctionnalités supplémentaires

- Ajout d'un conteneur pgAdmin pour gérer la base de données plus facilement si nécessaire.

## Organisation du projet

Le projet est organisé de la manière suivante :

```plaintext
MiniProjetDocker/
    ├── db/
    │   ├── init.sql (fichier pour initialiser la base de données)
    ├── flask/
    │   ├── templates/ (contient les fichiers HTML pour l'application web)
    │   ├── static/ (contient les fichiers CSS et JS potentiels pour l'application web)
    │   ├── app.py (fichier principal de l'application web)
    │   ├── Dockerfile (fichier pour construire l'image du conteneur Python)
    ├── docker-compose.yml (fichier pour orchestrer le déploiement)
    ├── .env (fichier pour les variables d'environnement)
    ├── README.md (fichier de présentation)
```

## Installation

### Avant toute chose

Afin d'installer ce projet, vous devez avoir installé Docker Desktop sur votre machine. Voici les liens pour l'installer sur les différents systèmes d'exploitation:

- [Windows](https://docs.docker.com/docker-for-windows/install/)
- [Mac](https://docs.docker.com/docker-for-mac/install/)
- [Linux](https://docs.docker.com/engine/install/)

### Processus d'installation

1. Clôner le dépot, dans un dossier vierge, soit depuis une invite de commande (`git clone https://github.com/Alakamar/MiniProjetDocker`), soit en téléchargant le dossier ZIP.
2. Extraire l'archive (si c'est le dossier ZIP), puis positionner vous dans le dossier avec une invite de commande.
3. A travers l'invite de commande, exécuter la commande `docker compose up --wait` pour lancer les conteneurs. Cette commande va construire les images et lancer les conteneurs, et l'application sera alors fonctionnelle une fois que les conteneurs sont lancés.

## Utilisation

> [!IMPORTANT]
> On considère dans cette partie que les valeurs par défaut sont utilisées pour les variables d'environnement. Si vous avez modifié ces valeurs, vous devrez les adapter dans les commandes suivantes.

### Accès à l'application web

Une fois les conteneurs lancés, vous pouvez accéder à l'application web en utilisant l'adresse `http://localhost:5000/` dans votre navigateur.

### Accès à pgAdmin

Pour accéder à pgAdmin, vous pouvez utiliser l'adresse `http://localhost:8080/` dans votre navigateur. Vous pouvez vous connecter avec les identifiants suivants :

- **Email :** `admin@admin.com`
- **Mot de passe :** `admin`

Puis vous pouvez ajouter un nouveau serveur avec les informations suivantes :

- **Serveur :** `db_postgres`
- **Utilisateur :** `postgres`
- **Mot de passe :** `postgres`
- **Base de données :** `postgres`
- **Port :** `5432`

### Arrêt des conteneurs

Pour arrêter les conteneurs, utilisez la commande `docker compose down` dans l'invite de commande.

Cela va arrêter les conteneurs, mais ne va pas supprimer les images ni les volumes. Voici un moyen de les supprimer :

- Si vous souhaitez supprimer les images, vous pouvez utiliser la commande `docker compose down --rmi all`.
- Si vous souhaitez supprimer les volumes, vous pouvez utiliser la commande `docker compose down -v`.
- Vous pouvez aussi utiliser la commande `docker compose down --rmi all -v` pour supprimer les images et les volumes en même temps.

> [!WARNING]
> Attention, si vous supprimez les volumes, vous perdrez toutes les données de la base de données.

## Modification du projet

> [!CAUTION]
> Cette section est destinée à des utilisateurs avancés, et n'est pas nécessaire pour une utilisation basique du projet. Effectuer des modifications dans les fichiers suivants peut rendre le projet instable ou non fonctionnel si vous ne savez pas ce que vous faites.

Vous pouvez si vous le souhaitez, éditer le fichier `.env` pour modifier les variables d'environnement à votre guise (adresses des conteneurs, utilisateur et mot de passe de la base de données, etc).

Vous pouvez aussi éditer les fichiers présents dans le dossier `flask/` pour modifier l'application web à votre guise.

Enfin, vous pouvez éditer le fichier `db/init.sql` pour modifier les tables et les données de la base de données.

## Plus d'informations

J'ai décidé de ne pas utiliser de Dockerfile pour le conteneur PostgreSQL car l'image proposée par défaut sur Docker Hub convenait, et le `docker-compose.yml` permet déjà de configurer le nécessaire pour la base de données.

Au niveau du serveur web utilisant Python, j'ai simplement utilisé une image de base `python:latest` puis j'y ai ajouté les dépendances nécessaires pour l'application web avec pip3 : `flask` et `psycopg2`.

Brièvement, `flask` permet de créer une application web en Python, et `psycopg2` permet de se connecter à une base de données PostgreSQL à travers Python.

Pour le conteneur pgAdmin, j'ai utilisé une image proposée par `dpage/pgadmin4` sur Docker Hub.

## Liens

- Lien vers le dépôt GitHub : [MiniProjetDocker](https://github.com/Alakamar/MiniProjetDocker)
- Lien vers la documentation de Docker : [Docker Documentation](https://docs.docker.com/) // [Docker Hub](https://hub.docker.com/)
- Lien vers la documentation de Flask : [Flask Documentation](https://flask.palletsprojects.com/en/3.0.x/)
- Lien vers la documentation de PostgreSQL : [PostgreSQL Documentation](https://www.postgresql.org/docs/)
- Lien vers la documentation de pgAdmin : [pgAdmin Documentation](https://www.pgadmin.org/docs/)

## Auteur

Ce projet a été réalisé par [Alakamar](https://github.com/Alakamar) - HIRIBARREN TOUYA Adrien
