# Standalone API + ML Demo

This minimal project shows how to:
1) Call a web API to fetch data.
2) Train a model from the fetched data.
3) Save the model artifact for reuse.

## Components
- **Local API server** (in-memory; started from the notebook code).
- **`api_client.py`**: Thin client for `/health` and `/data`.
- **`train.py`**: Script to fetch data and train a linear regression.

## Usage (example)
You can run the training script like:
```
python train.py --base_url http://127.0.0.1:8000 --min_size 40 --max_age 50 --model_out model.joblib
```

## Notes
- The API supports optional filters: `min_size`, `max_age`.
- Model: `LinearRegression` on features `[size, rooms, age]` to predict `price`.
