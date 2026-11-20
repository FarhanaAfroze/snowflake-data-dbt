import pandas as pd
from faker import Faker

fake = Faker()

CATEGORIES = [
    "Electronics",
    "Clothing",
    "Home",
    "Sports",
    "Books",
]


def generate_products(n=30):

    products = []

    for i in range(1, n + 1):

        products.append({
            "PRODUCT_ID": f"PROD_{i:05d}",
            "PRODUCT_NAME": fake.word().title(),
            "CATEGORY": fake.random_element(CATEGORIES),
            "PRICE": round(fake.pyfloat(
                min_value=10,
                max_value=1000,
                right_digits=2
            ), 2),
        })

    return pd.DataFrame(products)