FROM node:18-alpine
WORKDIR /slidev
RUN npm update && npm install @slidev/cli @slidev/theme-default @slidev/theme-seriph
ADD entrypoint.sh slides.md .
RUN chmod +x entrypoint.sh
EXPOSE 3030
CMD ["/slidev/entrypoint.sh"]
