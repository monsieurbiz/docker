# Sample of Mailcatcher use with PHP-cli

## Give it a try

Given you are in a terminal in the current directory.

1. Run the docker-compose command: `docker-compose -p mailcatcher-php-app -f docker-compose.yml up --build -d`.
2. Run a test: `docker-compose -p mailcatcher-php-app run --rm php-cli php -r "mail('recipient@example.org', 'Testing Mailcatcher', 'It works!');"`.
3. Open your browser on the Mailcatcher Web UI: <http://localhost:1080> ; Then you should see your email. You can run the test at step 2 again and see what happens.
4. Shutdown and remove the containers: `docker-compose -p mailcatcher-php-app -f docker-compose.yml down`


