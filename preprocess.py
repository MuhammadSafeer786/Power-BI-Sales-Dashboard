import pandas as pd

for i in range(1,4):
    df = pd.read_excel(
        r'C:\Users\Muhammad Safeer\Downloads\archive\Sales Analysis Report.xlsx', i)

    df.to_csv(f"saved_{i}.csv", index=False)

# product_mapping = {

#     'Product 1': 'Smart Watch',
#     'Product 2': 'iphone 11 Pro Max',
#     'Product 3': 'Samsung Ultra S',
#     'Product 4': 'Air Pods',
#     'Product 5': 'Screen Protector',
#     'Product 6': 'Samsung LCD TV',
#     'Product 7': 'iphone Battery',
#     'Product 8': 'macbook pro',
#     'Product 9': 'laptop battery',
#     'Product 10': 'Charger',
#     'Product 11': 'DSLR Camera',
#     'Product 12': 'DSLR Battery',
#     'Product 13': 'DSLR SD Card',
#     'Product 14': 'DSLR Charger',
#     'Product 20': 'Smart Watch Charger'
# }


# df['Product Name'] = df['Product Name'].map(product_mapping)
# df.to_excel('modified_file.xlsx', index=False)


# df = pd.read_csv('Orders.csv')


# df = df.drop(columns=["Unnamed: 13", "Unnamed: 14",
#              "Unnamed: 15"], errors='ignore')

# df['OrderDate'] = pd.to_datetime(
#     df['OrderDate'], errors='coerce').dt.strftime('%Y-%m-%d')
# df['ShipDate'] = pd.to_datetime(
#     df['ShipDate'], errors='coerce').dt.strftime('%Y-%m-%d')
# # Save the modified data to a new CSV


# print("Date Format Changed to SQL-Compatible (YYYY-MM-DD)")
# print(df['OrderDate'].head(), df['ShipDate'].head())


# currency_columns = ["Unit Price", "Total Unit Cost", "Total Revenue"]

# # Remove commas and convert currency columns to float
# for col in currency_columns:
#     df[col] = df[col].replace({',': ''}, regex=True).astype(float)


# df = pd.read_csv('Regions.csv')


# badColumns = ["FullAddress", "postcode"]
# for col in badColumns:
#     df[col] = df[col].replace({',': ''}, regex=True)


# df.to_csv("Regions.csv", index=False)
print('\n\nCompleted Operation')

