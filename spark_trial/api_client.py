"""
Simple API client for the local demo service.
"""
import requests

class DemoAPIClient:
    def __init__(self, base_url="http://127.0.0.1:8000"):
        self.base_url = base_url.rstrip("/")

    def health(self):
        r = requests.get(f"{self.base_url}/health", timeout=5)
        r.raise_for_status()
        return r.json()

    def fetch_data(self, min_size=None, max_age=None):
        params = {"min_size": min_size, "max_age": max_age}
        params = {k: v for k, v in params.items() if v is not None}
        r = requests.get(f"{self.base_url}/data", params=params, timeout=15)
        r.raise_for_status()
        return r.json()
