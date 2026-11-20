import os

from dotenv import load_dotenv
from snowflake.connector.pandas_tools import write_pandas

from synthetic_data.generator import generate_all_data
from synthetic_data.loader_connection import get_snowflake_connection

load_dotenv()


def load_data():

    data = generate_all_data()

    conn = get_snowflake_connection()

    try:

        for table_name, df in data.items():

            success, chunks, rows, output = write_pandas(
                conn=conn,
                df=df,
                table_name=table_name,
                database=os.getenv("SNOWFLAKE_DATA"),
                schema="RAW",
                auto_create_table=False,
                overwrite=False,
            )

            print(
                f"{table_name}: "
                f"{rows} rows loaded. Success: {success}"
            )

    finally:
        conn.close()


if __name__ == "__main__":
    load_data()