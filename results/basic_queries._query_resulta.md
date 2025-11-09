## Query results (based on the sample data)

---

### Step 1  
```sql
CREATE TABLE friends (
    id INTEGER,
    name TEXT,
    birthday DATE
);
```

_No output — table created._

---

### Step 2  
```sql
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');
```

_No output — row inserted._

---

### Step 3  
```sql
SELECT * FROM friends;
```

| id | name         | birthday   |
|----|--------------|------------|
| 1  | Ororo Munroe | 1940-05-30 |

---

### Step 4  
```sql
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Joe', '1946-11-21'),
       (3, 'Nico', '1988-01-02');
```

_No output — rows inserted._

---

### Step 5  
```sql
UPDATE friends
SET name = 'Storm'
WHERE id = 1;
```

_No output — name updated._

---

### Step 6  
```sql
ALTER TABLE friends ADD COLUMN email TEXT;
```

_No output — column added._

---

### Step 7  
```sql
UPDATE friends SET email = 'storm@codecademy.com' WHERE id = 1;
```

_No output — email updated for id 1._

---

### Step 8  
```sql
UPDATE friends SET email = 'joe@example.com' WHERE id = 2;
```

_No output — email updated for id 2._

---

### Step 9  
```sql
UPDATE friends SET email = 'nico@example.com' WHERE id = 3;
```

_No output — email updated for id 3._

---

### Step 10  
```sql
DELETE FROM friends WHERE id = 1;
```

_No output — row deleted._

---

### Step 11  
```sql
SELECT * FROM friends;
```

| id | name | birthday   | email            |
|----|------|------------|------------------|
| 2  | Joe  | 1946-11-21 | joe@example.com  |
| 3  | Nico | 1988-01-02 | nico@example.com |

