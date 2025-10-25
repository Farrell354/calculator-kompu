# Menggunakan image nginx sebagai base image
FROM nginx:alpine

# Menghapus konten default nginx
RUN rm -rf /usr/share/nginx/html/*

# Menyalin file HTML ke direktori nginx
COPY calculator.html /usr/share/nginx/html/index.html

# Mengekspos port 80
EXPOSE 80

# Menjalankan nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
