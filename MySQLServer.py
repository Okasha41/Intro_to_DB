import mysql.connector

try:
    db = mysql.connector.connect(
        host='localhost',
        user='root',
        password='Mmn#2326681',
    )
except mysql.connector.Error:
    print("Couldn't connect to the database")
else:
    mycursor = db.cursor()
    mycursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store')
finally:
    mycursor.close()
    db.close()
