import hmac
import os
import hashlib
import base64


key = 'key'
salt = os.urandom(32)
hashed_key = hashlib.pbkdf2_hmac("sha256", password.encode("utf-8"), salt, 100000)


def generate_salt(size: int = 16) -> str:
    salt = os.urandom(size)
    return str(base64.b64encode(salt))


def generate_signature(salt: str, secret_key: str, encoding: str = "utf-8") -> str:
    secret_key_bytes = bytes(secret_key, encoding)
    salt_bytes = bytes(salt, encoding)
    dig = hmac.new(secret_key_bytes, salt_bytes, hashlib.sha256).digest()
    signature = base64.b64encode(dig)
    return signature


# Example
salt = generate_salt()
print(salt)
signature = generate_signature(salt, "key")
print(signature)
