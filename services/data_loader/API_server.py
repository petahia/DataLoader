from fastapi import FastAPI
from DAL_conenct import LoadDAL

app = FastAPI()
dal = LoadDAL()

@app.get("/")
def get_data():
    return {"Hello": "World"}



