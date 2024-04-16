# Application Sunset Paradise Hotel
## Description
Ce projet consiste en une application web développée en Java EE pour le "Sunset Paradise Hotel". L'application permet aux utilisateurs de rechercher des chambres d'hôtel disponibles, d'effectuer des réservations et de consulter leurs réservations précédentes. L'objectif est d'offrir une expérience conviviale, réactive et sécurisée aux clients de l'hôtel.

## Fonctionnalités
### Liste des Chambres d'Hôtel
Affiche une liste des chambres d'hôtel disponibles avec des détails tels que le type de chambre, le prix, les équipements, la disponibilité, etc.
### Gestion des Réservations
Permet à l'utilisateur de rechercher des chambres en fonction des dates d'arrivée/départ, du nombre de personnes, des préférences de type de chambre, etc.
Permet à l'utilisateur de faire des réservations en sélectionnant des chambres disponibles et en fournissant les détails nécessaires.
### Consultation des Réservations
Permet à l'utilisateur de consulter ses réservations précédentes, y compris les détails tels que les dates de séjour, le type de chambre, etc.

## Conception
### Diagramme de classes UML
Propose un diagramme de classes en représentant les deux classes principales de l'application : Room (Chambre) et Reservation (Réservation).

### Côté Technique
#### Classes Backend (Java EE)
Utilise des Servlets pour gérer la recherche de chambres d'hôtel, la création de réservations et la consultation des réservations précédentes de l'utilisateur.
#### JavaBeans
Utilise la classe Room pour représenter les informations sur une chambre d'hôtel (type, prix, équipements, disponibilité, etc.).
Utilise la classe Reservation pour représenter les réservations effectuées par les utilisateurs (identifiant, chambre réservée, dates, etc.).
#### DAO (Data Access Object)
Utilise l'interface RoomDAO pour définir les opérations de manipulation des données des chambres (recherche, réservation, etc.).
Utilise l'interface ReservationDAO pour définir les opérations de manipulation des données des réservations.
#### Base de Données
Utilise une base de données relationnelle (par exemple, MySQL, PostgreSQL) pour stocker les informations sur les chambres et les réservations.
Utilise JDBC (Java Database Connectivity) pour la communication entre l'application Java et la base de données.
### Frontend
Utilise HTML pour la structure de la page.
Utilise CSS pour le design et la mise en page.
Utilise JavaScript pour les fonctionnalités interactives et la validation des données côté client.

## Instructions d'exécution
Clonez ce dépôt avec la commande git clone https://github.com/YassineOularbi/BRIEF-SUNSET-PARADISE-HOTEL.git.
Accédez au répertoire du projet avec la commande cd BRIEF-SUNSET-PARADISE-HOTEL.
Compilez le code source Java EE avec les outils appropriés.
Déployez l'application sur un serveur compatible avec Java EE.
Accédez à l'application via un navigateur web en utilisant l'URL appropriée.
Utilisez l'interface conviviale pour rechercher des chambres, effectuer des réservations et consulter vos réservations précédentes.

## Auteurs
Ce projet a été développé par [Yassine OULARBI], sous la supervision de l'école ENAA Béni Mellal.

## Contact
Pour toute question ou commentaire, veuillez contacter [yassineoularbi4@gmail.com] ou [+212 6 10 44 60 80].
LinkedIn : "www.linkedin.com/in/yassine-oularbi-79730424b"
