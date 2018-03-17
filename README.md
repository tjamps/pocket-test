# Pocket test
> A docker image designed to run tests for Pokcet on Gitlab CI.

Theses images are based on the official [PHP CLI images](https://hub.docker.com/_/php/). 
They include the following PHP extensions : 

- `intl`
- `pdo_mysql`
- `opcache`
- `zip`

They also include the following packages :

- `git`
- `unzip`
- `wget`

[Composer](https://getcomposer.org/) is installed globally, so that you can run:

```bash
$ composer install
```

## Table of contents

- [`.gitlab-ci.yml` example](#gitlab-ciyml-example)
- [Useful links](#useful-links)

### `.gitlab-ci.yml` example

```yaml
test:7.2:
    image: tjamps/pocket-test:7.2
    script:
        - ./vendor/bin/simple-phpunit
```

### Useful links

- Gitlab Ci : [link](https://about.gitlab.com/features/gitlab-ci-cd/)
- Testing PHP projects with Gitlab CI : [link](https://docs.gitlab.com/ce/ci/examples/php.html)
- Docker image on Docker Hub : [link](https://hub.docker.com/r/tjamps/pocket-test/)

