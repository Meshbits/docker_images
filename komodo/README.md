# docker_run_komodo

docker based minimal setup to run komodo on ubuntu 20.04

## Maintaining this image

### Build the image

```shell
./komodo/bin/build.sh
```

### Authenticate before publishing the image
```shell
echo 'TOKENXXXXXXX' > /tmp/TOKEN.txt
cat /tmp/TOKEN.txt| docker login https://docker.pkg.github.com -u GITHUB_USERNAME --password-stdin
```

### Publish the image

```shell
./komodo/bin/publish.sh
```