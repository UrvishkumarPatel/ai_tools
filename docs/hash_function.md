# What is hash function?

A **hash function** is a mathematical function that takes input data (of any size) and converts it into a fixed-size output, called a **hash value** or **digest**.

---

## 🔹 Simple Idea

Think of a hash function like a **machine**:

* Input: `"hello"`
* Output: `"5d41402abc4b2a76b9719d911017c592"` (example hash)

Even a tiny change in input gives a completely different output:

* `"hello"` → one hash
* `"hello!"` → totally different hash

---

## 🔹 Key Properties

A good hash function has these characteristics:

1. **Deterministic** → same input always gives same output
2. **Fast to compute**
3. **Fixed output size** (no matter input size)
4. **Collision-resistant** → hard to find two inputs with same hash
5. **One-way (irreversible)** → you can't get original input back

---

## 🔹 Common Hash Functions

* MD5 (older, not secure now)
* SHA-1 (deprecated)
* SHA-256 (widely used)

---

## 🔹 Real-Life Use Cases

### 1. 🔐 Password Storage

When you create a password on a website:

* Your password → hashed → stored in database
* Website **never stores actual password**

Example:

* You enter `"mypassword"`
* System stores hash like `"34819d7beeabb9260a5c854bc85b3e44"`

When you login:

* Input password → hashed → compared with stored hash

👉 Even if database is hacked, attackers don't see real passwords.

---

### 2. 📦 Data Integrity (File Checking)

Used to verify if a file is unchanged.

Example:

* Download a file
* Compare its hash with original

If hashes match → file is safe
If not → file corrupted or tampered

---

### 3. ⚡ Hash Tables (Fast Lookup)

Used in data structures like **hash maps**:

* Key → hashed → stored at index
* Makes lookup very fast (O(1))

Example:

```python
dict = {"name": "Urvish"}
```

Internally uses hashing to store/retrieve quickly.

---

### 4. 🔗 Blockchain & Cryptocurrencies

Used heavily in systems like Bitcoin:

* Each block has a hash
* Changing data changes hash → chain breaks

👉 Ensures data cannot be tampered easily

---

### 5. 🧾 Digital Signatures

Used to verify authenticity of documents:

* Document → hashed → signed
* Receiver verifies hash to ensure no change

---

## 🔹 Simple Analogy

Think of a hash like a **fingerprint**:

* Every input → unique fingerprint
* Cannot reconstruct person from fingerprint
* Small change → completely different fingerprint

---

## 🔹 Quick Summary

* Converts data → fixed-size string
* One-way and secure
* Used in security, data storage, and fast computation

---

If you want, I can also:

* Show **code examples (Python/JS)**
* Explain **how SHA-256 actually works internally**
* Or give **interview-style answers** 🚀
