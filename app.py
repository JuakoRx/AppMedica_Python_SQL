from flask import Flask, render_template, request, redirect, url_for
import psycopg2
from psycopg2.extras import RealDictCursor

app = Flask(__name__)

def conectar_bd():
    return psycopg2.connect(
        host="localhost",
        port="5432",
        user="postgres",
        password="Joaquin8",
        database="App_Medica",
    )

@app.route('/')
def inicio():
    return render_template('index.html')


@app.route('/insertarDatos')
def insertarDatos():
    return render_template('insertarDatos.html')


@app.route('/modificarDatos')
def modificarDatos():
    return render_template('modificarDatos.html')

if __name__ == "__main__":
    app.run(debug=True)
