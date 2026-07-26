import sqlite3

def get_connection():
    conn = sqlite3.connect("database/superstore.db")
    return conn

if __name__ == "__main__":
    conn = get_connection()
    print("Database connected successfully!")
    conn.close()