# Dockerfile.dev (개발용 간단 버전)

FROM node:18-alpine

WORKDIR /app

# 의존성 설치
COPY package*.json ./
RUN npm ci

# 소스 코드 복사
COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
