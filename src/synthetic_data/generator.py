from synthetic_data.customers import generate_customers
from synthetic_data.products import generate_products
from synthetic_data.orders import generate_orders


def generate_all_data():

    customers = generate_customers(100)
    products = generate_products(30)

    orders = generate_orders(
        customers,
        products,
        500
    )

    return {
        "CUSTOMERS": customers,
        "PRODUCTS": products,
        "ORDERS": orders,
    }


if __name__ == "__main__":

    data = generate_all_data()

    for name, df in data.items():

        print(f"\n{name}")
        print(df.head())
        print(f"Rows: {len(df)}")
        

