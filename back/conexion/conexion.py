import mysql.connector

try:
    # Establecer la conexión a la base de datos
    conexion = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="bd_financiero"
    )

    if conexion.is_connected():
        print("Conexión exitosa a la base de datos")
        # Aquí puedes realizar las operaciones que necesites

except mysql.connector.Error as error:
    print("Error al conectar a la base de datos:", error)

finally:
    # Cerrar la conexión
    if conexion.is_connected():
        conexion.close()
        print("Conexión cerrada")
