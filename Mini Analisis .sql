-- 1. Analisis Produk
-- Menampilkan karakteristik produk (nama, kategori, department, merek, dan harga retail).
SELECT
  name,
  category,
  department,
  brand,
  retail_price
FROM
  bigquery-public-data.thelook_ecommerce.products
ORDER BY name ASC
LIMIT 20;

-- 3. Evaluasi Kategori Produk
-- Mengetahui kategori dengan jumlah produk terbanyak.
SELECT 
  category,
  COUNT(id) AS jumlah_produk
FROM bigquery-public-data.thelook_ecommerce.products
GROUP BY category
ORDER BY jumlah_produk DESC;

-- INSIGHT :
-- Kategori produk yang paling tinggi adalah "Intimates" dengan 2.363 produk
-- Sedangkan kategori yang memiliki produk paling sedikit sebanyak 37 produk adalah "Clothing Sets"


-- 5. Analisis Penjualan Per Kategori
-- Hitung total penjualan per kategori, diurutkan dari nilai terbesar.
SELECT
  p.category,
  SUM(sale_price) AS total_revenue
FROM
  bigquery-public-data.thelook_ecommerce.order_items AS oi 
JOIN
  bigquery-public-data.thelook_ecommerce.products AS p
ON
  oi.product_id = p.id
WHERE
  oi.status = 'Complete'
GROUP BY p.category
ORDER BY total_revenue DESC;

-- INSIGHT
-- Kategori produk penyumbang sales terbesar adalah Outerwear & Coats dengan pendapatan sekitar 332,057.05
-- Sedangkan kategori dengan pendapatan terendah adalah Clothing Sets (4,126.75)















