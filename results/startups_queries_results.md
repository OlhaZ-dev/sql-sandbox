
# Query results (based on the sample data)

### Table schema reminder
**Columns:** **id; name; category; valuation; raised; stage; founded; location; employees**

---

### 1. 
```sql
SELECT * FROM startups;
```

| id | name | category | valuation | raised | stage | founded | location | employees |
|---:|---|---|---:|---:|---|---:|---|---:|
| 1 | Aurora Health | Health | 85000 | 15000 | Series A | 2016 | Helsinki | 45 |
| 2 | BlueCart | Logistics | 42000 | 6000 | Seed | 2018 | Tallinn | 18 |
| 3 | Cedar AI | AI | 120000 | 30000 | Series B | 2015 | Helsinki | 120 |
| 4 | Dawn Energy | Energy | 30000 | 10000 | Seed | 2019 | Espoo | 25 |
| 5 | Echo Labs | AI | 45000 | 8000 | Series A | 2017 | Tampere | 40 |
| 6 | Fjord Fashion | Ecommerce | 22000 | 5000 | Seed | 2020 | Helsinki | 12 |
| 7 | GreenTrack | Energy | 90000 | 25000 | Series B | 2014 | Espoo | 85 |
| 8 | Hive Payments | Fintech | 76000 | 20000 | Series A | 2016 | Tallinn | 60 |
| 9 | Inkly | Ecommerce | 15000 | 2000 | Pre-seed | 2021 | Tampere | 6 |
| 10 | Juno Robotics | Robotics | 33000 | 12000 | Seed | 2018 | Helsinki | 30 |
| 11 | Kite Analytics | AI | 28000 | 7000 | Seed | 2019 | Oulu | 22 |
| 12 | Lumen Home | Energy | 17000 | 4000 | Pre-seed | 2020 | Oulu | 10 |
| 13 | Mosaic Mobility | Logistics | 54000 | 11000 | Series A | 2017 | Helsinki | 55 |
| 14 | Nexus Bank | Fintech | 98000 | 35000 | Series C | 2013 | Stockholm | 210 |
| 15 | Orbit Labs | Robotics | 60000 | 22000 | Series B | 2015 | Helsinki | 95 |
| 16 | PaperTrail | Ecommerce | 26000 | 6000 | Seed | 2018 | Tallinn | 20 |
| 17 | Quanta Bio | Health | 47000 | 12000 | Series A | 2016 | Oulu | 48 |
| 18 | Ripple Payments | Fintech | 25000 | 5000 | Seed | 2019 | Helsinki | 28 |
| 19 | Slate Design | Ecommerce | 18000 | 3000 | Seed | 2020 | Espoo | 14 |
| 20 | Thrive Farms | AgriTech | 14000 | 2500 | Pre-seed | 2021 | Tampere | 8 |

---

### 2. 
```sql
SELECT COUNT(*) FROM startups;
```

| COUNT(*) |
|---:|
| 20 |

---

### 3.
```sql
SELECT SUM(valuation) FROM startups;
```
| SUM(valuation) |
|---:|
| 945000 |

---

### 4.
```sql
SELECT MAX(raised) FROM startups;
```
| MAX(raised) |
|---:|
| 35000 |

---

### 5.
```sql
SELECT MAX(raised) FROM startups WHERE STAGE = 'Seed';
```
| MAX(raised) |
|---:|
| 12000 |

---

### 6.
```sql
SELECT * FROM startups GROUP BY founded LIMIT 1;
```

| id | name | category | valuation | raised | stage | founded | location | employees |
|---:|---|---|---:|---:|---|---:|---|---:|
| 14 | Nexus Bank | Fintech | 98000 | 35000 | Series C | 2013 | Stockholm | 210 |

---

### 7.
```sql
SELECT category, AVG(valuation) FROM startups GROUP BY category;
```
| category | AVG(valuation) |
|---|---:|
| AI | 64333.3333333333 |
| AgriTech | 14000 |
| Ecommerce | 20250 |
| Energy | 45666.6666666667 |
| Fintech | 66333.3333333333 |
| Health | 66000 |
| Logistics | 48000 |
| Robotics | 46500 |

---

### 8.
```sql
SELECT category, ROUND(AVG(valuation), 2) FROM startups GROUP BY category;
```
| category | ROUND(AVG(valuation), 2) |
|---|---:|
| AI | 64333.33 |
| AgriTech | 14000.00 |
| Ecommerce | 20250.00 |
| Energy | 45666.67 |
| Fintech | 66333.33 |
| Health | 66000.00 |
| Logistics | 48000.00 |
| Robotics | 46500.00 |

---

### 9.
```sql
SELECT category, ROUND(AVG(valuation), 2) FROM startups GROUP BY category ORDER BY AVG(valuation) DESC;
```
| category | ROUND(AVG(valuation), 2) |
|---|---:|
| Fintech | 66333.33 |
| Health | 66000.00 |
| AI | 64333.33 |
| Logistics | 48000.00 |
| Robotics | 46500.00 |
| Energy | 45666.67 |
| Ecommerce | 20250.00 |
| AgriTech | 14000.00 |

---

### 10. 
```sql
SELECT category, COUNT(*) FROM startups GROUP BY category;
```
| category | COUNT(*) |
|---|---:|
| AI | 3 |
| AgriTech | 1 |
| Ecommerce | 4 |
| Energy | 3 |
| Fintech | 3 |
| Health | 2 |
| Logistics | 2 |
| Robotics | 2 |

---

### 11.
```sql
SELECT category, COUNT(*) FROM startups GROUP BY category HAVING COUNT(*) > 3 ORDER BY COUNT(*) DESC;
```
| category | COUNT(*) |
|---|---:|
| Ecommerce | 4 |

---

### 12.
```sql
SELECT location, AVG(employees) FROM startups GROUP BY location;
```
| location | AVG(employees) |
|---|---:|
| Espoo | 41.333333333333336 |
| Helsinki | 59.166666666666664 |
| Oulu | 26.666666666666668 |
| Stockholm | 210 |
| Tampere | 18 |
| Tallinn | 32.666666666666664 |

---

### 13. 
```sql
SELECT location, AVG(employees) FROM startups GROUP BY location HAVING COUNT(*) > 3;
```
| location | AVG(employees) |
|---|---:|
| Helsinki | 59.166666666666664 |


