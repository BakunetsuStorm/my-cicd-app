FROM ubuntu:latest AS builder
WORKDIR /app
RUN echo "<h1>Sain baina uu? Ene bol GitHub Actions ashiglasan CI/CD app!</h1>" > index.html

FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html
EXPOSE 80