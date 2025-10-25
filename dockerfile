# Gunakan nginx sebagai base image
FROM nginx:alpine

# Hapus default nginx HTML
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file web ke nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Jalankan nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
