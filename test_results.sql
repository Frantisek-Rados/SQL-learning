-- ===========================================
-- Autor: František Radoš
-- Dátum: 2026-06-10
-- Účel: Ukážková tabuľka test_results pre QA portfolio
-- ===========================================

-- Vytvorenie tabuľky
CREATE TABLE test_results (
    id INTEGER PRIMARY KEY,
    test_name TEXT,
    status TEXT,
    executed_at TEXT
);

-- Vloženie testovacích výsledkov
INSERT INTO test_results (test_name, status, executed_at)
VALUES
    ('Prihlasovací test', 'PASS', '2026-06-10'),
    ('Regresný test', 'FAIL', '2026-06-10'),
    ('API test', 'PASS', '2026-06-10');