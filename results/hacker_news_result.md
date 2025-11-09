
# Query results (based on the sample data)

---

### 1. Top 5 stories by score
```sql
SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;
```

| title | score |
|---|---:|
| Rust wins another benchmark | 309 |
| New open source tool | 304 |
| Data viz examples | 282 |
| Tutorial series | 260 |
| Project roadmap | 213 |

---

### 2. Users with total score > 200
```sql
SELECT user,
SUM(score)
FROM hacker_news
GROUP BY user
HAVING SUM(score) > 200;
```

| user | SUM(score) |
|---|---:|
| bob | 596 |
| carol | 517 |
| dmitri | 287 |
| alice | 240 |

---

### 3. Numeric division
```sql
SELECT (309 + 304 + 282 + 517) / 6366.0;
```

| (309 + 304 + 282 + 517) / 6366.0 |
|---:|
| 0.221878 |

---

### 4. Counts of rickroll URL per user
```sql
SELECT user,
   COUNT(*)
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY user
ORDER BY COUNT(*) DESC;
```

| user | COUNT(*) |
|---|---:|
| alice | 1 |
| bob | 1 |

---

### 5. Source mapping (CASE without ELSE)
```sql
SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  END AS Source
FROM hacker_news;
```

| Source |
|---|
| GitHub |
| Medium |
| New York Times |
| GitHub |
| Medium |
|  |
| GitHub |
| Medium |
| New York Times |
|  |
|  |
| GitHub |
|  |
|  |
| New York Times |
| Medium |

(Note: empty cells represent NULL for rows that did not match any WHEN clause.)

---

### 6. Source counts (CASE with ELSE)
```sql
SELECT CASE
WHEN url LIKE '%github.com%' THEN 'GitHub'
WHEN url LIKE '%medium.com%' THEN 'Medium'
WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
ELSE 'Other'
END AS Source,
COUNT(*)
FROM hacker_news
GROUP BY 1;
```

| Source | COUNT(*) |
|---|---:|
| GitHub | 4 |
| Medium | 4 |
| New York Times | 3 |
| Other | 5 |

---

### 7. Timestamp and hour (GROUP BY timestamp) — first 20 rows
```sql
SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;
```

| timestamp | strftime('%H', timestamp) |
|---|---:|
| 2025-11-08 09:12:05 | 09 |
| 2025-11-08 10:05:10 | 10 |
| 2025-11-08 11:20:00 | 11 |
| 2025-11-07 14:03:22 | 14 |
| 2025-11-07 15:45:11 | 15 |
| 2025-11-06 08:00:00 | 08 |
| 2025-11-06 21:30:45 | 21 |
| 2025-11-05 07:10:00 | 07 |
| 2025-11-05 22:55:12 | 22 |
| 2025-11-05 23:00:00 | 23 |
| 2025-11-05 23:01:00 | 23 |
| 2025-11-04 12:00:00 | 12 |
|  |  |
| 2025-11-03 01:02:03 | 01 |
| 2025-11-03 18:18:18 | 18 |
| 2025-11-02 09:09:09 | 09 |

---

### 8. (Duplicate) Timestamp and hour — same as above
```sql
SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;
```

(Same result as query 7.)

---

### 9. Hourly averages and story counts (ordered by hour)
```sql
SELECT strftime('%H', timestamp) AS Hour,
   AVG(score) AS "Average Score",
   COUNT(*) AS "Story Count"
FROM hacker_news
GROUP BY 1
ORDER BY 1;
```

| Hour | Average Score | Story Count |
|---:|---:|---:|
| 01 | 8.0 | 1 |
| 07 | 12.0 | 1 |
| 08 | 120.0 | 1 |
| 09 | 284.5 | 2 |
| 10 | 45.0 | 1 |
| 11 | 82.0 | 1 |
| 12 | 213.0 | 1 |
| 14 | 304.0 | 1 |
| 15 | 27.0 | 1 |
| 18 | 95.0 | 1 |
| 21 | 282.0 | 1 |
| 22 | 45.0 | 1 |
| 23 | 17.5 | 2 |

---

### 10. Hourly averages (rounded) and counts ordered by average descending
```sql
SELECT strftime('%H', timestamp) AS Hour,
   ROUND(AVG(score), 2) AS "Average Score",
   COUNT(*) AS "Story Count"
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
```

| Hour | Average Score | Story Count |
|---:|---:|---:|
| 14 | 304.00 | 1 |
| 09 | 284.50 | 2 |
| 21 | 282.00 | 1 |
| 12 | 213.00 | 1 |
| 08 | 120.00 | 1 |
| 18 | 95.00 | 1 |
| 11 | 82.00 | 1 |
| 10 | 45.00 | 1 |
| 22 | 45.00 | 1 |
| 15 | 27.00 | 1 |
| 23 | 17.50 | 2 |
| 07 | 12.00 | 1 |
| 01 | 8.00 | 1 |

---
