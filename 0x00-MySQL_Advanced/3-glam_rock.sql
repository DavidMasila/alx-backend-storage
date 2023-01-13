-- Write a SQL script that lists all bands with 
-- Glam rock as their main style, ranked by their longevity

SELECT band_name from metal_bands
WHERE style like 'glam rock%'
ORDER BY CHAR_LENGTH(band_name);