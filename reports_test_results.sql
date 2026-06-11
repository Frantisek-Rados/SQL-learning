-- ===========================================
-- Autor: František Radoš
-- Dátum: 2026-06-11
-- Účel: Reporty z tabuľky test_results (agregácie)
-- ===========================================

-- ===========================================
-- 1. Celkový počet testov
-- ===========================================
SELECT COUNT(*) AS celkovy_pocet_testov
FROM test_results;

-- Výsledok: 3


-- ===========================================
-- 2. Počet PASS / FAIL (zoskupené podľa statusu)
-- ===========================================
SELECT status, COUNT(*) AS pocet
FROM test_results
GROUP BY status;

-- Výsledky:
--   FAIL | 1
--   PASS | 2


-- ===========================================
-- 3. Počet testov podľa dátumu vykonania
-- ===========================================
SELECT executed_at, COUNT(*) AS pocet_testov
FROM test_results
GROUP BY executed_at;

-- Výsledky:
--   2026-06-10 | 3
