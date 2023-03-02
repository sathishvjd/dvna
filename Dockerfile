# Damn Vulnerable NodeJS Application

FROM node:14.21.3-bullseye-slim
LABEL MAINTAINER "Subash SN"

WORKDIR /app

COPY . .

RUN chmod +x /app/entrypoint.sh \
	&& npm install

CMD ["bash", "/app/entrypoint.sh"]