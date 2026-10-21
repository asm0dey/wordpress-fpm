# wordpress-fpm

The official `wordpress:php8.5-fpm` image plus `ftp gmp pdo_mysql igbinary ssh2 redis`.

```
ghcr.io/asm0dey/wordpress-fpm:php8.5
```

Every 30 minutes the workflow checks the upstream digest. When it changes, it rebuilds, checks that every extension loads, and pushes `:php8.5` and a dated tag such as `:php8.5.12-202610211830`. Roll back by pinning a dated tag.
