import pyodbc
#WZORZEC PROJEKTOWY SINGLETONA GWARANTUJACY NAM ZE TYLKO
#JEDNA INSTANCJA BAZY BEDZIE
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


    #SELECT ALL
    def select_all_items(self):
        self.cursor.execute(f"SELECT Value from [dbo].[Item]")
        data = self.cursor.fetchall()
        return data

    #INSERT
    def insert(self, value):
        self.cursor.execute(f"INSERT INTO [dbo].[Item]([Value]) VALUES('{value}')")
        self.connection.commit()
        return self.cursor.rowcount
    
    def return_status(self, tracking_code):
        self.cursor.execute(f"SELECT [StatusStage1], [StatusStage2], [StatusStage3], [StatusStage4], [StatusStage5] FROM [dbo].[Packages] WHERE [TrackingCode] = '{tracking_code}'")
        data = self.cursor.fetchone()
        return data if data else None
    







    

