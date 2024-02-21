from flask import Flask, render_template, request, redirect, url_for
import psycopg2

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/livres')
def livres():
    # Connexion à la base de données
    conn = psycopg2.connect(database="postgres",
                            user="postgres",
                            password="postgres",
                            host="db_postgres", port="5432")
    
    # Création d'un curseur
    cur = conn.cursor()
    
    # On sélectionne tous les livres
    cur.execute('''SELECT * FROM Livre;''')
    
    # On récupère les données et les stocke dans la variable data
    data = cur.fetchall()
    
    # On ferme le curseur et la connexion
    cur.close()
    conn.close()
    
    # On renvoie les données à la page livres.html tout en l'affichant
    return render_template('livres.html', data=data)