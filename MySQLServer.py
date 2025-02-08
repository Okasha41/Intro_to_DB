import mysql.connector

db = mysql.connector.connect(
    host='localhost',
    user='root',
    password='Mmn#2326681',
)

mycursor = db.cursor()

mycursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store')

mycursor.close()
db.close()
