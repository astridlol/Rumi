FROM node:18.7.0

# Run program in production
ENV NODE_ENV=production

# Set working directory and add source files
WORKDIR /app
COPY . .

# Install dependencies, then run the program
RUN yarn
RUN yarn migrate
ENTRYPOINT [ "yarn", "start" ]
