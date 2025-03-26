from pydantic import BaseModel

class User(BaseModel):
    username: str
    password: str
    email: str
    role: str

class Flower(BaseModel):
    name: str
    description: str
    price: float
    category: str
    stock_quantity: int

class Order(BaseModel):
    user_id: int
    flower_id: int
    quantity: int