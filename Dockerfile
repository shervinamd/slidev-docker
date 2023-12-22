FROM node:18-alpine
WORKDIR /slidev
RUN npm update && npm install @slidev/cli @slidev/theme-default @slidev/theme-seriph && cp -f /slidev/node_modules/@slidev/cli/template.md /slidev/slides.md
ADD entrypoint.sh .
RUN chmod +x entrypoint.sh
EXPOSE 3030
CMD ["entrypoint.sh"]
