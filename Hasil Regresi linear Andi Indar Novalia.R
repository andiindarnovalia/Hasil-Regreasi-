data_sed <- read.csv(choose.files())

# 1. Cek struktur data untuk memastikan nama kolom
str(data_sed)
names(data_sed)  # Melihat nama kolom yang tersedia

#menampilkan data
head(data_sed)

# 2. Misalkan kita ingin memprediksi 'Price' berdasarkan 'Space'
#    Ganti 'Price' dan 'Space' dengan nama kolom yang benar dari hasil names(data_sed)
reg_sed <- lm(Price ~ Space, data = data_sed)

# 3. Tampilkan ringkasan model
summary(reg_sed)

# 4. Visualisasi hubungan antara variabel
plot(data_sed$Space, data_sed$Price, main = "Scatter Plot Price vs Space", 
     xlab = "Space", ylab = "Price", pch = 19, col = "blue")
abline(reg_sed, col = "red", lwd = 2)  # Menambahkan garis regresi