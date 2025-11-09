## Table of restaurants Project

### 1 

```sql
SELECT *
FROM nomnom;
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| Peter Luger Steak House | Brooklyn | Steak | 4.4 | $$$$ | A | Excellent |
| Jongro BBQ | Midtown | Korean | 4.5 | $$ | A | Excellent |
| Pocha 32 | Midtown | Korean | 4.0 | $$ | A | Good |
| Nom Wah Tea Parlor | Chinatown | Chinese | 4.2 | $ | A | Excellent |
| Roberta's | Brooklyn | Pizza | 4.4 | $$ | A | Excellent |
| Speedy Romeo | Brooklyn | Pizza | 4.4 | $$ | A | Excellent |
| Bunna Cafe | Brooklyn | Ethiopian | 4.6 | $$ | A | Extraordinary |
| Massawa | Uptown | Ethiopian | 4.0 | $$ | NULL | Good |
| Buddha Bodai | Chinatown | Vegetarian | 4.2 | $$ | A | Excellent |
| Nan Xiang Xiao Long Bao | Queens | Chinese | 4.2 | $ | A | Excellent |
| Mission Chinese Food | Downtown | Chinese | 3.9 | $$ | A | Good |
| Baohaus | Downtown | Chinese | 4.2 | $ | A | Excellent |
| al di la Trattoria | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Locanda Vini & Olii | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Rao's | Uptown | Italian | 4.2 | $$$ | A | Excellent |
| Minca | Downtown | Japanese | 4.4 | $$ | A | Excellent |
| Kenka | Downtown | Japanese | 4.3 | $ | B | Excellent |
| Yakitori Taisho | Downtown | Japanese | 4.1 | $ | B | Excellent |
| Xi'an Famous Foods | Midtown | Chinese | 4.4 | $ | A | Excellent |
| Shake Shack | Midtown | American | 4.4 | $ | A | Excellent |
| The Halal Guys | Midtown | Mediterranean | 4.4 | $ | A | Excellent |
| Foodcademy | Midtown | American | 4.4 | $$ | A | Excellent |
| Sonnyboy's | Brooklyn | Chinese | 4.2 | $$ | A | Excellent |
| The Cole Romano Experience | Brooklyn | Italian | 2.1 | $$$$$ | C | Fair |
| Timbo Slice | Brooklyn | Pizza | 2.8 | $ | B | Fair |
| Scorpio Sisters | Downtown | American | 4.2 | $$ | A | Excellent |
| N.E.D | Uptown | American | 4.2 | $$$ | A | Excellent |
| Great NY Noodletown | Chinatown | Chinese | 4.1 | $$ | B | Excellent |
| Golden Unicorn | Chinatown | Chinese | 3.8 | $$ | A | Good |
| Wo Hop | Chinatown | Chinese | 4.2 | $$ | NULL | Excellent |
| Di Fara Pizza | Brooklyn | Pizza | 4.2 | $$ | A | Excellent |
| Kang Ho Dong Baekjeong | Midtown | Korean | 4.3 | $$$ | C | Excellent |
| Roti Roll Bombay Frankie | Uptown | Indian | 4.2 | $ | A | Excellent |
| Jacob's Pickles | Uptown | American | NULL | $$ | NULL | Poor |
| Dan and John's Wings | Downtown | American | 4.5 | $ | A | Excellent |
| Ping's Seafood | Chinatown | Chinese | 4.2 | $$ | A | Excellent |
| XO Kitchen | Chinatown | Chinese | 4.0 | $ | B | Good |
| Carbone | Downtown | Italian | 4.3 | $$$ | A | Excellent |
| I Sodi | Downtown | Italian | 4.5 | $$$ | A | Excellent |
| Lilia | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Enid's | Brooklyn | Soul Food | 4.0 | $$ | A | Good |
| Jajaja | Downtown | Vegetarian | 4.5 | $$ | A | Excellent |
| Smalls Jazz Club | Downtown | American | NULL | $$ | A | Poor |
| Russ & Daughters | Downtown | American | 4.6 | $$ | A | Extraordinary |
| The Meatball Shop | Downtown | American | 4.2 | $ | A | Excellent |
| Dirt Candy | Downtown | Vegetarian | 4.4 | $$$ | A | Excellent |
| Ippudo | Downtown | Japanese | 4.4 | $$ | A | Excellent |
| St. Anselm | Brooklyn | Steak | 4.5 | $$ | A | Excellent |
| Marea | Midtown | Italian | 4.5 | $$$$ | A | Excellent |
| Lighthouse | Brooklyn | American | 4.6 | $$ | NULL | Extraordinary |
| Los Hermanos | Brooklyn | Mexican | 4.4 | $ | N/A | Excellent |
| The Standard Biergarten | Downtown | American | 4.0 | $$ | A | Good |
| Ootoya | Downtown | Japanese | 4.5 | $$ | A | Excellent |

---

### 2 

```sql
SELECT DISTINCT neighborhood
FROM nomnom;
```

| neighborhood |
|---|
| Brooklyn |
| Midtown |
| Chinatown |
| Uptown |
| Queens |
| Downtown |

---

### 3 

```sql
SELECT DISTINCT cuisine
FROM nomnom;
```

| cuisine |
|---|
| Steak |
| Korean |
| Chinese |
| Pizza |
| Ethiopian |
| Vegetarian |
| Japanese |
| American |
| Mediterranean |
| Italian |
| Indian |
| Soul Food |
| Mexican |

---

### 4

```sql
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| Nom Wah Tea Parlor | Chinatown | Chinese | 4.2 | $ | A | Excellent |
| Nan Xiang Xiao Long Bao | Queens | Chinese | 4.2 | $ | A | Excellent |
| Mission Chinese Food | Downtown | Chinese | 3.9 | $$ | A | Good |
| Baohaus | Downtown | Chinese | 4.2 | $ | A | Excellent |
| Xi'an Famous Foods | Midtown | Chinese | 4.4 | $ | A | Excellent |
| Sonnyboy's | Brooklyn | Chinese | 4.2 | $$ | A | Excellent |
| Great NY Noodletown | Chinatown | Chinese | 4.1 | $$ | B | Excellent |
| Golden Unicorn | Chinatown | Chinese | 3.8 | $$ | A | Good |
| Wo Hop | Chinatown | Chinese | 4.2 | $$ | NULL | Excellent |
| Ping's Seafood | Chinatown | Chinese | 4.2 | $$ | A | Excellent |
| XO Kitchen | Chinatown | Chinese | 4.0 | $ | B | Good |

---

### 5 

```sql
SELECT *
FROM nomnom
WHERE review >= 4;
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| Peter Luger Steak House | Brooklyn | Steak | 4.4 | $$$$ | A | Excellent |
| Jongro BBQ | Midtown | Korean | 4.5 | $$ | A | Excellent |
| Pocha 32 | Midtown | Korean | 4.0 | $$ | A | Good |
| Nom Wah Tea Parlor | Chinatown | Chinese | 4.2 | $ | A | Excellent |
| Roberta's | Brooklyn | Pizza | 4.4 | $$ | A | Excellent |
| Speedy Romeo | Brooklyn | Pizza | 4.4 | $$ | A | Excellent |
| Bunna Cafe | Brooklyn | Ethiopian | 4.6 | $$ | A | Extraordinary |
| Massawa | Uptown | Ethiopian | 4.0 | $$ | NULL | Good |
| Buddha Bodai | Chinatown | Vegetarian | 4.2 | $$ | A | Excellent |
| Nan Xiang Xiao Long Bao | Queens | Chinese | 4.2 | $ | A | Excellent |
| Baohaus | Downtown | Chinese | 4.2 | $ | A | Excellent |
| al di la Trattoria | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Locanda Vini & Olii | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Rao's | Uptown | Italian | 4.2 | $$$ | A | Excellent |
| Minca | Downtown | Japanese | 4.4 | $$ | A | Excellent |
| Kenka | Downtown | Japanese | 4.3 | $ | B | Excellent |
| Yakitori Taisho | Downtown | Japanese | 4.1 | $ | B | Excellent |
| Xi'an Famous Foods | Midtown | Chinese | 4.4 | $ | A | Excellent |
| Shake Shack | Midtown | American | 4.4 | $ | A | Excellent |
| The Halal Guys | Midtown | Mediterranean | 4.4 | $ | A | Excellent |
| Foodcademy | Midtown | American | 4.4 | $$ | A | Excellent |
| Sonnyboy's | Brooklyn | Chinese | 4.2 | $$ | A | Excellent |
| Scorpio Sisters | Downtown | American | 4.2 | $$ | A | Excellent |
| N.E.D | Uptown | American | 4.2 | $$$ | A | Excellent |
| Great NY Noodletown | Chinatown | Chinese | 4.1 | $$ | B | Excellent |
| Wo Hop | Chinatown | Chinese | 4.2 | $$ | NULL | Excellent |
| Di Fara Pizza | Brooklyn | Pizza | 4.2 | $$ | A | Excellent |
| Kang Ho Dong Baekjeong | Midtown | Korean | 4.3 | $$$ | C | Excellent |
| Roti Roll Bombay Frankie | Uptown | Indian | 4.2 | $ | A | Excellent |
| Dan and John's Wings | Downtown | American | 4.5 | $ | A | Excellent |
| Ping's Seafood | Chinatown | Chinese | 4.2 | $$ | A | Excellent |
| Carbone | Downtown | Italian | 4.3 | $$$ | A | Excellent |
| I Sodi | Downtown | Italian | 4.5 | $$$ | A | Excellent |
| Lilia | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Enid's | Brooklyn | Soul Food | 4.0 | $$ | A | Good |
| Jajaja | Downtown | Vegetarian | 4.5 | $$ | A | Excellent |
| Russ & Daughters | Downtown | American | 4.6 | $$ | A | Extraordinary |
| The Meatball Shop | Downtown | American | 4.2 | $ | A | Excellent |
| Dirt Candy | Downtown | Vegetarian | 4.4 | $$$ | A | Excellent |
| Ippudo | Downtown | Japanese | 4.4 | $$ | A | Excellent |
| St. Anselm | Brooklyn | Steak | 4.5 | $$ | A | Excellent |
| Marea | Midtown | Italian | 4.5 | $$$$ | A | Excellent |
| Lighthouse | Brooklyn | American | 4.6 | $$ | NULL | Extraordinary |
| Los Hermanos | Brooklyn | Mexican | 4.4 | $ | N/A | Excellent |
| Ootoya | Downtown | Japanese | 4.5 | $$ | A | Excellent |

---

### 6

```sql
SELECT *
FROM nomnom
WHERE cuisine = 'Italian' AND price = '$$$';
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| al di la Trattoria | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Locanda Vini & Olii | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Rao's | Uptown | Italian | 4.2 | $$$ | A | Excellent |
| Carbone | Downtown | Italian | 4.3 | $$$ | A | Excellent |
| I Sodi | Downtown | Italian | 4.5 | $$$ | A | Excellent |
| Lilia | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |

---

### 7 

```sql
SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| The Meatball Shop | Downtown | American | 4.2 | $ | A | Excellent |

---

### 8 

```sql
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown';
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| Jongro BBQ | Midtown | Korean | 4.5 | $$ | A | Excellent |
| Pocha 32 | Midtown | Korean | 4.0 | $$ | A | Good |
| Nom Wah Tea Parlor | Chinatown | Chinese | 4.2 | $ | A | Excellent |
| Mission Chinese Food | Downtown | Chinese | 3.9 | $$ | A | Good |
| Baohaus | Downtown | Chinese | 4.2 | $ | A | Excellent |
| Xi'an Famous Foods | Midtown | Chinese | 4.4 | $ | A | Excellent |
| Shake Shack | Midtown | American | 4.4 | $ | A | Excellent |
| The Halal Guys | Midtown | Mediterranean | 4.4 | $ | A | Excellent |
| Foodcademy | Midtown | American | 4.4 | $$ | A | Excellent |
| Great NY Noodletown | Chinatown | Chinese | 4.1 | $$ | B | Excellent |
| Golden Unicorn | Chinatown | Chinese | 3.8 | $$ | A | Good |
| Wo Hop | Chinatown | Chinese | 4.2 | $$ | NULL | Excellent |
| Dan and John's Wings | Downtown | American | 4.5 | $ | A | Excellent |
| Ping's Seafood | Chinatown | Chinese | 4.2 | $$ | A | Excellent |
| XO Kitchen | Chinatown | Chinese | 4.0 | $ | B | Good |
| Carbone | Downtown | Italian | 4.3 | $$$ | A | Excellent |
| I Sodi | Downtown | Italian | 4.5 | $$$ | A | Excellent |
| Minca | Downtown | Japanese | 4.4 | $$ | A | Excellent |
| Kenka | Downtown | Japanese | 4.3 | $ | B | Excellent |
| Yakitori Taisho | Downtown | Japanese | 4.1 | $ | B | Excellent |
| Mission Chinese Food | Downtown | Chinese | 3.9 | $$ | A | Good |
| Jajaja | Downtown | Vegetarian | 4.5 | $$ | A | Excellent |
| Smalls Jazz Club | Downtown | American | NULL | $$ | A | Poor |
| Russ & Daughters | Downtown | American | 4.6 | $$ | A | Extraordinary |
| The Meatball Shop | Downtown | American | 4.2 | $ | A | Excellent |
| Dirt Candy | Downtown | Vegetarian | 4.4 | $$$ | A | Excellent |
| Ippudo | Downtown | Japanese | 4.4 | $$ | A | Excellent |
| The Standard Biergarten | Downtown | American | 4.0 | $$ | A | Good |
| Ootoya | Downtown | Japanese | 4.5 | $$ | A | Excellent |
| Marea | Midtown | Italian | 4.5 | $$$$ | A | Excellent |

(Note: Mission Chinese appears once; row duplicated above removed in prior listing but included here once.)

---

### 9

```sql
SELECT *
FROM nomnom
WHERE health IS NULL;
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| Massawa | Uptown | Ethiopian | 4.0 | $$ | NULL | Good |
| Wo Hop | Chinatown | Chinese | 4.2 | $$ | NULL | Excellent |
| Jacob's Pickles | Uptown | American | NULL | $$ | NULL | Poor |
| Lighthouse | Brooklyn | American | 4.6 | $$ | NULL | Extraordinary |

---

### 10

```sql
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;
```

| name | neighborhood | cuisine | review | price | health | rating |
|---|---|---:|---:|---:|---:|---|
| Bunna Cafe | Brooklyn | Ethiopian | 4.6 | $$ | A | Extraordinary |
| Russ & Daughters | Downtown | American | 4.6 | $$ | A | Extraordinary |
| Lighthouse | Brooklyn | American | 4.6 | $$ | NULL | Extraordinary |
| Jongro BBQ | Midtown | Korean | 4.5 | $$ | A | Excellent |
| Dan and John's Wings | Downtown | American | 4.5 | $ | A | Excellent |
| I Sodi | Downtown | Italian | 4.5 | $$$ | A | Excellent |
| Marea | Midtown | Italian | 4.5 | $$$$ | A | Excellent |
| St. Anselm | Brooklyn | Steak | 4.5 | $$ | A | Excellent |
| Lilia | Brooklyn | Italian | 4.4 | $$$ | A | Excellent |
| Peter Luger Steak House | Brooklyn | Steak | 4.4 | $$$$ | A | Excellent |

---

### 11

```sql
SELECT *,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4 THEN 'Excellent'
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'
    ELSE 'Poor'
  END AS classification
FROM nomnom;
```

| name | neighborhood | cuisine | review | price | health | rating | classification |
|---|---|---:|---:|---:|---:|---:|---|
| Peter Luger Steak House | Brooklyn | Steak | 4.4 | $$$$ | A | Excellent | Excellent |
| Jongro BBQ | Midtown | Korean | 4.5 | $$ | A | Excellent | Excellent |
| Pocha 32 | Midtown | Korean | 4.0 | $$ | A | Good | Good |
| Nom Wah Tea Parlor | Chinatown | Chinese | 4.2 | $ | A | Excellent | Excellent |
| Roberta's | Brooklyn | Pizza | 4.4 | $$ | A | Excellent | Excellent |
| Speedy Romeo | Brooklyn | Pizza | 4.4 | $$ | A | Excellent | Excellent |
| Bunna Cafe | Brooklyn | Ethiopian | 4.6 | $$ | A | Extraordinary | Extraordinary |
| Massawa | Uptown | Ethiopian | 4.0 | $$ | NULL | Good | Good |
| Buddha Bodai | Chinatown | Vegetarian | 4.2 | $$ | A | Excellent | Excellent |
| Nan Xiang Xiao Long Bao | Queens | Chinese | 4.2 | $ | A | Excellent | Excellent |
| Mission Chinese Food | Downtown | Chinese | 3.9 | $$ | A | Good | Good |
| Baohaus | Downtown | Chinese | 4.2 | $ | A | Excellent | Excellent |
| al di la Trattoria | Brooklyn | Italian | 4.4 | $$$ | A | Excellent | Excellent |
| Locanda Vini & Olii | Brooklyn | Italian | 4.4 | $$$ | A | Excellent | Excellent |
| Rao's | Uptown | Italian | 4.2 | $$$ | A | Excellent | Excellent |
| Minca | Downtown | Japanese | 4.4 | $$ | A | Excellent | Excellent |
| Kenka | Downtown | Japanese | 4.3 | $ | B | Excellent | Excellent |
| Yakitori Taisho | Downtown | Japanese | 4.1 | $ | B | Excellent | Excellent |
| Xi'an Famous Foods | Midtown | Chinese | 4.4 | $ | A | Excellent | Excellent |
| Shake Shack | Midtown | American | 4.4 | $ | A | Excellent | Excellent |
| The Halal Guys | Midtown | Mediterranean | 4.4 | $ | A | Excellent | Excellent |
| Foodcademy | Midtown | American | 4.4 | $$ | A | Excellent | Excellent |
| Sonnyboy's | Brooklyn | Chinese | 4.2 | $$ | A | Excellent | Excellent |
| The Cole Romano Experience | Brooklyn | Italian | 2.1 | $$$$$ | C | Fair | Fair |
| Timbo Slice | Brooklyn | Pizza | 2.8 | $ | B | Fair | Fair |
| Scorpio Sisters | Downtown | American | 4.2 | $$ | A | Excellent | Excellent |
| N.E.D | Uptown | American | 4.2 | $$$ | A | Excellent | Excellent |
| Great NY Noodletown | Chinatown | Chinese | 4.1 | $$ | B | Excellent | Excellent |
| Golden Unicorn | Chinatown | Chinese | 3.8 | $$ | A | Good | Good |
| Wo Hop | Chinatown | Chinese | 4.2 | $$ | NULL | Excellent | Excellent |
| Di Fara Pizza | Brooklyn | Pizza | 4.2 | $$ | A | Excellent | Excellent |
| Kang Ho Dong Baekjeong | Midtown | Korean | 4.3 | $$$ | C | Excellent | Excellent |
| Roti Roll Bombay Frankie | Uptown | Indian | 4.2 | $ | A | Excellent | Excellent |
| Jacob's Pickles | Uptown | American | NULL | $$ | NULL | Poor | Poor |
| Dan and John's Wings | Downtown | American | 4.5 | $ | A | Excellent | Excellent |
| Ping's Seafood | Chinatown | Chinese | 4.2 | $$ | A | Excellent | Excellent |
| XO Kitchen | Chinatown | Chinese | 4.0 | $ | B | Good | Good |
| Carbone | Downtown | Italian | 4.3 | $$$ | A | Excellent | Excellent |
| I Sodi | Downtown | Italian | 4.5 | $$$ | A | Excellent | Excellent |
| Lilia | Brooklyn | Italian | 4.4 | $$$ | A | Excellent | Excellent |
| Enid's | Brooklyn | Soul Food | 4.0 | $$ | A | Good | Good |
| Jajaja | Downtown | Vegetarian | 4.5 | $$ | A | Excellent | Excellent |
| Smalls Jazz Club | Downtown | American | NULL | $$ | A | Poor | Poor |
| Russ & Daughters | Downtown | American | 4.6 | $$ | A | Extraordinary | Extraordinary |
| The Meatball Shop | Downtown | American | 4.2 | $ | A | Excellent | Excellent |
| Dirt Candy | Downtown | Vegetarian | 4.4 | $$$ | A | Excellent | Excellent |
| Ippudo | Downtown | Japanese | 4.4 | $$ | A | Excellent | Excellent |
| St. Anselm | Brooklyn | Steak | 4.5 | $$ | A | Excellent | Excellent |
| Marea | Midtown | Italian | 4.5 | $$$$ | A | Excellent | Excellent |
| Lighthouse | Brooklyn | American | 4.6 | $$ | NULL | Extraordinary | Extraordinary |
| Los Hermanos | Brooklyn | Mexican | 4.4 | $ | N/A | Excellent | Excellent |
| The Standard Biergarten | Downtown | American | 4.0 | $$ | A | Good | Good |
| Ootoya | Downtown | Japanese | 4.5 | $$ | A | Excellent | Excellent |

