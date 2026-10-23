"""
Train a simple linear regression model using data fetched from the demo API.
"""
import argparse
import pandas as pd
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score
import joblib
from api_client import DemoAPIClient

def main(args):
    client = DemoAPIClient(base_url=args.base_url)
    payload = client.fetch_data(min_size=args.min_size, max_age=args.max_age)
    df = pd.DataFrame(payload["rows"])

    X = df[["size", "rooms", "age"]]
    y = df["price"]

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=7)
    model = LinearRegression().fit(X_train, y_train)
    y_pred = model.predict(X_test)

    rmse = mean_squared_error(y_test, y_pred, squared=False)
    r2 = r2_score(y_test, y_pred)

    joblib.dump(model, args.model_out)
    print(f"Saved model to {args.model_out}")
    print(f"RMSE: {rmse:.2f} | R^2: {r2:.3f}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--base_url", type=str, default="http://127.0.0.1:8000")
    parser.add_argument("--min_size", type=float, default=40)
    parser.add_argument("--max_age", type=float, default=50)
    parser.add_argument("--model_out", type=str, default="model.joblib")
    args = parser.parse_args()
    main(args)
