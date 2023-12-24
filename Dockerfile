FROM node:latest
WORKDIR /app

# COPY package.json yarn.lock* ./
# RUN if [ -f yarn.lock ]; then yarn --frozen-lockfile; \
#     else echo "Warning: Lockfile not found. It is recommended to commit lockfiles to version control." && yarn install; \
#     fi
COPY --chmod=777 /src /src
COPY --chown=$USER:$USER /src /src 

# COPY src ./src
# COPY public ./public
# COPY next.config.js .
# COPY tsconfig.json .

# CMD ["yarn", "dev"]

