# Використовуємо легкий nginx-образ
FROM nginx:1-alpine-slim

# Копіюємо всі файли сайту у стандартну папку nginx
COPY . /usr/share/nginx/html

# Відкриваємо порт 80
EXPOSE 80

# Запускаємо nginx у foreground
CMD ["nginx", "-g", "daemon off;"]