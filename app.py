from flask import Flask, render_template, request, redirect, url_for
import psycopg2

app = Flask(__name__)

def connectar_bd():
    return psycopg2.connect(
        host = "localhost",
        port = "5432",
        user = "postgres",
        password = "Joaquin8",
        database = "App_Medica",
    )


@app.route("/")
def inicio():
    conexion = connectar_bd()
    cursor = conexion.cursor()

    cursor.execute("Select * FROM medico")

    medicos = cursor.fetchall()
    for medico in medicos:
        print (medico)
    return render_template("index.html",medico = medicos)

if __name__ == "__main__":
    app.run(debug=True)