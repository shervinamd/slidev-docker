FROM node:18-alpine
WORKDIR /slidev
RUN npm update && npm install @slidev/cli @slidev/theme-default @slidev/theme-seriph && cp -f /slidev/node_modules/@slidev/cli/template.md /slidev/slides.md
ENTRYPOINT ["/bin/sh", "npx", "slidev", "--remote"]
