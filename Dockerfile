# Use the Ruby image with version 3.1.2
FROM ruby:3.1.2

# Install dependencies
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -qq -y build-essential python3 nodejs=16.* yarn g++ poppler-utils wkhtmltopdf cpanminus 

# Set the working directory
# Change this to your app's name
WORKDIR /minitest_template

# Install Gems
COPY Gemfile /minitest_template/Gemfile
COPY Gemfile.lock /minitest_template/Gemfile.lock
RUN bundle install

# Install Node dependencies
COPY package.json yarn.lock /minitest_template/
RUN yarn install

# Add esbuild installation
RUN yarn global add esbuild

# Copy the rest of the application code
COPY . /minitest_template

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Start the main process.
CMD ["./bin/dev"]
