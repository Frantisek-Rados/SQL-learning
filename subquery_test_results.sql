-- ===========================================
-- Autor: František Radoš
-- Dátum: 2026-06-12
-- Účel: Podotázka (subquery) – testy z dňa s najviac testami
-- ===========================================

-- Všetky testy z dňa, keď bolo najviac testov
SELECT * FROM test_results 
WHERE executed_at = (
    SELECT executed_at 
    FROM test_results 
    GROUP BY executed_at 
    ORDER BY COUNT(*) DESC 
    LIMIT 1
);
