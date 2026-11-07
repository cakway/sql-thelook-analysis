# README: Mini Project SQL - TheLook E-commerce

Documentasi ini berisi ringkasan project, struktur dataset, pertanyaan bisnis, serta petunjuk pengerjaan untuk **Mini Project SQL (Basic SQL sampai Simple JOIN)** pada Data Analytics Bootcamp.

-----

## 📌 Deskripsi Project

Sebagai Junior Data Analyst di **TheLook E-commerce**, project ini bertujuan untuk menganalisis karakteristik produk, perilaku pelanggan, serta kategori produk yang memberikan kontribusi terbesar terhadap penjualan menggunakan perintah SQL dasar hingga JOIN.

-----

## 🛠️ Dataset

Project ini menggunakan dataset publik BigQuery:
`bigquery-public-data.thelook_ecommerce`

Tabel yang digunakan:

  - `products`
  - `users`
  - `orders`
  - `order_items`

-----

## ❓ Pertanyaan Bisnis & Panduan SQL

### 1\. Analisis Produk

  * **Tujuan:** Menampilkan karakteristik produk (nama, kategori, department, merek, dan harga retail).
  * **Target:** 20 produk pertama dari tabel `products`.
  * **Konsep SQL:** `SELECT`, `FROM`, `LIMIT`

### 2\. Identifikasi Produk Premium

  * **Tujuan:** Mencari produk dengan harga retail (`retail_price`) di atas 100 untuk kampanye produk premium.
  * **Target:** Diurutkan dari harga tertinggi ke terendah.
  * **Konsep SQL:** `WHERE`, `ORDER BY`, `DESC`

### 3\. Evaluasi Kategori Produk

  * **Tujuan:** Mengetahui kategori dengan jumlah produk terbanyak.
  * **Target:** Hitung jumlah produk per kategori, diurutkan dari yang terbesar.
  * **Konsep SQL:** `COUNT`, `GROUP BY`, `ORDER BY`

### 4\. Mengenal Pelanggan dan Pesanan

  * **Tujuan:** Menampilkan pelanggan yang melakukan pemesanan (ID pesanan, status pesanan, tanggal pesanan dibuat, nama depan, dan nama belakang pelanggan).
  * **Target:** Penggabungan tabel `users` dan `orders`.
  * **Konsep SQL:** `INNER JOIN`, `ON`, Alias tabel

### 5\. Analisis Penjualan per Kategori

  * **Tujuan:** Mengetahui kategori produk dengan total nilai penjualan terbesar (`order_items.sale_price`).
  * **Target:** Hitung total penjualan per kategori, diurutkan dari nilai terbesar.
  * **Konsep SQL:** `JOIN`, `SUM`, `GROUP BY`, `ORDER BY`

-----

## 💡 Insight Bisnis

*(Bagian ini dapat diisi dengan minimal 2 insight berdasarkan hasil analisis soal 3 dan 5)*

  - **Insight 1 (Kategori Produk):** \[Tuliskan temuan kategori produk terbanyak di sini\]
  - **Insight 2 (Total Penjualan):** \[Tuliskan temuan kategori dengan penjualan terbesar di sini\]

-----

## 🚀 Cara Menjalankan Query

1.  Buka \[link removed\].
2.  Gunakan dataset `bigquery-public-data.thelook_ecommerce`.
3.  Jalankan query SQL sesuai dengan masing-masing pertanyaan bisnis di atas.
