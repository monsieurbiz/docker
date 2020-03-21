# Mailcatcher image

See <https://mailcatcher.me/>.

## Requirements

You'll need an SMTP proxy to forward your local port to the port of the mailcatcher container.

You can use `ssmtp` for that.

See <https://github.com/monsieurbiz/docker/blob/master/mailcatcher/samples/php-app/php-cli/Dockerfile> as Dockerfile example.

## Samples

See <https://github.com/monsieurbiz/docker/tree/master/mailcatcher/samples/>.

[![asciicast](https://asciinema.org/a/113857.png)](https://asciinema.org/a/113857)

## Tests

This Mailcatcher image is built by Github Actions when a change is made into the `mailcatcher/` directory.
