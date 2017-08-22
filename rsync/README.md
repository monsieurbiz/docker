# Rsync image

This image is built on the alpine image.

The entrypoint is `rsync`, so you can use it very easily.

## Sync two volumes

Example:

```
docker run --rm -t -v volume1:/from -v volume2:/to monsieurbiz/rsync -ruv /from/ /to/
```

# Maintainer

The whole team of [Monsieur Biz](https://github.com/monsieurbiz) maintains these images.
