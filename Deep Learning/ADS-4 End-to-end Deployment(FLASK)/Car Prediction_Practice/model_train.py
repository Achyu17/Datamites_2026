# model_train.py
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
import pickle

# Sample dataset (you can replace with a CSV)
data = {
    'year': [2015, 2016, 2017, 2018, 2019, 2020],
    'mileage': [50000, 40000, 35000, 30000, 20000, 10000],
    'engine_size': [1.2, 1.4, 1.6, 1.6, 2.0, 2.0],
    'price': [500000, 600000, 700000, 750000, 900000, 1100000]
}

df = pd.DataFrame(data)

X = df[['year', 'mileage', 'engine_size']]
y = df['price']

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

model = LinearRegression()
model.fit(X_train, y_train)

# Save model
pickle.dump(model, open('model.pkl', 'wb'))
print("✅ Model trained and saved as model.pkl")
