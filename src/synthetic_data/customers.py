import pandas as pd 
from faker import Faker

fake = Faker()

def generate_customers(n=100):
    customers = []

    for i in range(1, n+1):
        customers.append({
            "CUSTOMER_ID": f"CUST_{i:05d}",
            "FIRST_NAME": fake.first_name(),
            "LAST_NAME": fake.last_name(),
            "EMAIL": fake.email(),
            "COUNTRY": fake.country(),
            "CREATED_AT": fake.date_time_this_decade(),
        })

    return pd.DataFrame(customers)
