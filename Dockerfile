# Використовуємо легкий nginx-образ
FROM nginx:1-alpine-slim

# Копіюємо всі файли сайту у стандартну папку nginx
COPY . /usr/share/nginx/html

# Аргумент для версії (буде переданий з GitHub Actions)
ARG VERSION=unknown

# Замінюємо placeholder __VERSION__ на реальну версію в index.html
RUN sed -i "s/__VERSION__/${VERSION}/g" /usr/share/nginx/html/index.html

# Відкриваємо порт 80
EXPOSE 80

# Запускаємо nginx у foreground
CMD ["nginx", "-g", "daemon off;"]