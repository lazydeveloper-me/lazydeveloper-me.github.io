# Docker commands

Command to build the docker image for Jekyll

```docker
docker build -t lazydeveloper_jekyll .
```

Running the code in the container

```
docker run -d -p 4000:4000 -p 35729:35729 -it --volume="$PWD:/srv/jekyll" --name lazydeveloper lazydeveloper_jekyll /bin/bash
jekyll serve
jekyll build
```
