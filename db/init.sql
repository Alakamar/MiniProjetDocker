-- Table Livre
CREATE TABLE IF NOT EXISTS Livre (
    id_livre INT PRIMARY KEY,
    titre_livre VARCHAR(255),
    annee_publication INT,
    auteur VARCHAR(255)
);

-- Insertion de livres
INSERT INTO Livre (id_livre, titre_livre, annee_publication, auteur) VALUES
(101, 'Le mystérieux Manuscrit', 2005, 'Jean Dupont'),
(102, 'Les Secrets de la Nuit Étoilée', 2010, 'Marc Dupont'),
(103, 'Le Château des Illusions', 2008, 'Marc Dupont'),
(104, 'Ombres sur la Cité Perdue', 2015, 'Jean Dupont'),
(105, 'Éclats de Lumière', 2012, 'Anne Dupont'),
(106, 'Les Fleurs de la mort', 2017, 'Anne Dupont'),
(107, 'La Porte des Mondes', 2014, 'Marie Dupont'),
(108, 'Au-delà du Temps', 2019, 'Paul Dupont'),
(109, 'La Quête du Diamant Bleu', 2011, 'Marie Dupont'),
(110, 'Rêves du paradis', 2016, 'Jean Dupont');