# Build the RionsDesk portal frontend, then overlay it onto the official
# rustdesk-api backend image (admin is served from /app/resources/admin).
FROM node:20-alpine AS web
WORKDIR /web
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM lejianwen/rustdesk-api:latest
# replace the stock admin panel with the RionsDesk-branded build
RUN rm -rf /app/resources/admin
COPY --from=web /web/dist /app/resources/admin
