# Haxe Docker CI

This is a docker image I made for doing ci. See [example](https://gitlab.com/haxe-grig/grig.audio/blob/master/.gitlab-ci.yml) of using it in gitlab ci.

```bash
docker build .
docker tag b82c4923fb27 osakared/haxe-ci # use docker image list to get image id
docker push osakared/haxe-ci
```

## License

This is licensed with the unlicence. Can be treated as public domain in juristictions that recognize it, otherwise the text of LICENSE. See LICENSE for details.

