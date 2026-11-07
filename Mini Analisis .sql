--Analisis Produk
--Menampilkan karakteristik produk (nama, kategori, departement,merek dan harga retail)

SELECT
 name,
 category,
 department,
 brand,
 retail_price
FROM bigquery-public-data.thelook_ecommerce.products
ORDER BY name
LIMIT 20;

--Evaluasi Kategori Produk
--Mengetahui kategori produk dengan jumlah produk terbanyak.

SELECT
 category,
 COUNT (id) AS jumlah_produk
FROM bigquery-public-data.thelook_ecommerce.products
GROUP BY category
ORDER BY jumlah_produk DESC;

--INSIGHT
--Kategori produk yang paling tinggi adalah "Intimates" dengan 2.363 produk
--Sedangkan kategori yang memiliki produk paling sedikit adalah 37 produk adalah "Clothing Sets"

--Analisis penjualan per kategori
--Hitung total penjualan per kategori, diurutkan dari nilai terbesar.
SELECT
 p.category,
 SUM (sale_price) AS total_revenue
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

--Kategori produk penyumbang sales terbesar adalah Outerwear & Coats (332057.05
--Kategori pendapatan terendah adalah Clothing Sets (4126.75)
