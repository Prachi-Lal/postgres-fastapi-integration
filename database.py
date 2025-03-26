import psycopg2
from psycopg2 import sql
from contextlib import contextmanager

@contextmanager
def get_db_connection():
    conn = psycopg2.connect(
        dbname="postgres",
        user="postgres",
        password="root",
        host="localhost",
        port="5432"
    )
    try:
        yield conn
    finally:
        conn.close()