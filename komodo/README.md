# docker_komodo

Ubuntu 20.04 based minimal docker image used for building [Meshbits/komodo](https://github.com/Meshbits/komodo) binaries for Linux and Windows.

## Maintaining this image

- Images are build automatically using github workflows

### Manual

**Note: This should not be needed at all and is being left here for worst-case scenarios.**

#### Build the image

```shell
./komodo/bin/build.sh
```

#### Authenticate before publishing the image
```shell
echo 'TOKENXXXXXXX' > /tmp/TOKEN.txt
cat /tmp/TOKEN.txt| docker login https://docker.pkg.github.com -u GITHUB_USERNAME --password-stdin
```

#### Publish the image

```shell
./komodo/bin/publish.sh
```
