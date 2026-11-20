import pandas as pd
from faker import Faker

fake = Faker()


def generate_orders(customers, products, n=500):

    orders = []

    for i in range(1, n + 1):

        customer = customers.sample(1).iloc[0]
        product = products.sample(1).iloc[0]

        quantity = fake.random_int(min=1, max=5)

        orders.append({
            "ORDER_ID": f"ORD_{i:06d}",
            "CUSTOMER_ID": customer["CUSTOMER_ID"],
            "PRODUCT_ID": product["PRODUCT_ID"],
            "ORDER_DATE": fake.date_time_this_year(),
            "QUANTITY": quantity,
            "TOTAL_AMOUNT": round(
                quantity * product["PRICE"], 2
            ),
        })

    return pd.DataFrame(orders)