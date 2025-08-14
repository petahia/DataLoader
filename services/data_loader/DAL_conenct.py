import mysql.connector

class LoadDAL:
    def __init__(self,host,user,password,database):
        self.host = host
        self.user = user
        self.password = password
        self.database = database

    def connect(self):
        conn = mysql.connector.connect(self)
        return conn

    def execute(self):
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM your_table LIMIT 5")
        for row in cursor.fetchall():
            print(row)
        return

    def close(self):
        cursor.close()
        conn.close()
        



