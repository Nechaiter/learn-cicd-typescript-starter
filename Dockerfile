FROM --platform=linux/amd64 oven/bun:1

WORKDIR /usr/src/app

ADD . .

RUN bun install

RUN bun run build

CMD ["bun", "dist/main.js"]
