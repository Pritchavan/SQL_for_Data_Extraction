import pandas as pd
from sqlalchemy import create_engine

# Load CSV
df = pd.read_csv("../data/cleaned_superstore.csv", encoding="latin1")

# Create SQLite database
engine = create_engine("sqlite:///../database/superstore.db")

# Save table
df.to_sql("superstore", engine, if_exists="replace", index=False)

print("Database Created Successfully!")