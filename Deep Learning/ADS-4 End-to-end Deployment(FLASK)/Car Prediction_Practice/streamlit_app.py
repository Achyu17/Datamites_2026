# streamlit_app.py
import streamlit as st
import requests

st.set_page_config(page_title="Car Price Prediction", page_icon="🚗")

st.title("🚗 Car Price Prediction App")
st.write("Enter car details to predict its price")

year = st.number_input("Year of Manufacture", min_value=2000, max_value=2025, step=1)
mileage = st.number_input("Mileage (in km)", min_value=0, max_value=300000, step=1000)
engine_size = st.number_input("Engine Size (in liters)", min_value=0.8, max_value=5.0, step=0.1)

if st.button("Predict Price"):
    url = "http://127.0.0.1:5000/predict"
    data = {"year": year, "mileage": mileage, "engine_size": engine_size}
    response = requests.post(url, json=data)

    if response.status_code == 200:
        result = response.json()['predicted_price']
        st.success(f"💰 Estimated Car Price: ₹{result:,.2f}")
    else:
        st.error("Error connecting to Flask API")
