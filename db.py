import pyodbc
def singleton(class_):
    instances = {}

    def getinstance(*args, **kwargs):
        if class_ not in instances:
            instances[class_] = class_(*args, **kwargs)
        return instances[class_]

    return getinstance



@singleton
class DataBase:

    def __init__(self):
        self.connection_string = ("Driver={ODBC Driver 17 for SQL Server};"
                    "Server= localhost;"
                    "Database=Paczkomat;"
                    "Trusted_Connection=yes;")
        self.connection = pyodbc.connect(self.connection_string)
        self.cursor = self.connection.cursor()


    def select_all_items(self):
        self.cursor.execute(f"SELECT Value from [dbo].[Item]")
        data = self.cursor.fetchall()
        return data

    def insert(self, value):
        self.cursor.execute(f"INSERT INTO [dbo].[Item]([Value]) VALUES('{value}')")
        self.connection.commit()
        return self.cursor.rowcount
    
    def return_status(self, tracking_code):
        self.cursor.execute(f"SELECT [StatusStage1], [StatusStage2], [StatusStage3], [StatusStage4], [StatusStage5] FROM [dbo].[Packages] WHERE [TrackingCode] = '{tracking_code}'")
        data = self.cursor.fetchone()
        return data if data else None
    
    def insert_user_credentials(self, username, password):
        self.cursor.execute(f"INSERT INTO [dbo].[UsersCredentials]([Username], [Password]) VALUES('{username}', '{password}')")
        self.connection.commit()
        return self.cursor.rowcount
    
    def check_user_credentials(self, username, password):
        self.cursor.execute(f"SELECT * FROM [dbo].[UsersCredentials] WHERE [Username] = '{username}' AND [Password] = '{password}'")
        data = self.cursor.fetchone()
        return data if data else None
    
    def calculate_cost(self, from_city, to_city):
        self.cursor.execute("SELECT Cost FROM CityCosts WHERE FromCity = ? AND ToCity = ?", (from_city, to_city))
        result = self.cursor.fetchone()
        return result[0] if result else None
    
    def get_all_cities(self):
        self.cursor.execute("SELECT DISTINCT FromCity FROM CityCosts")
        from_cities = self.cursor.fetchall()
        self.cursor.execute("SELECT DISTINCT ToCity FROM CityCosts")
        to_cities = self.cursor.fetchall()
        cities = [city[0] for city in from_cities + to_cities]  
        return cities
