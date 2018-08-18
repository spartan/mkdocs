# MKdocs

Quickly bootstrap beautiful documentation with [MKdocs](https://www.mkdocs.org) and [material design](https://squidfunk.github.io/mkdocs-material).


## Quick start

```bash
composer create-project spartan/mkdocs /path-to-project-docs
cd /path-to-project-docs/src && mkdocs serve
```
This will build the `./src/site` using markdown files from `./src/docs`. 

Visit `http://127.0.0.1:8000` after `mkdocs serve`.

Configuration file is located into `./src/mkdocs.yml`.


## Requirements

- python + pip
- [mkdocs](https://www.mkdocs.org)
- [mkdocs-material](https://squidfunk.github.io/mkdocs-material)
- [pymdown-extensions](https://squidfunk.github.io/mkdocs-material/extensions/admonition)


### Setup

Ubuntu example:

```bash
# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo ln -s  /usr/local/bin/pip /usr/bin/pip
pip --version

# install mkdocs
sudo -H pip install mkdocs
sudo ln -s /usr/local/bin/mkdocs /usr/bin/mkdocs
mkdocs -V

# install mkdocs-material
sudo -H pip install mkdocs-material
sudo -H pip install pymdown-extensions
```


## Docker

Using provided `Dockerfile` for development purposes.

```bash
# build the image
docker build . -t spartan/mkdocs

# run the image
docker run --rm -p 8000:8000 -v $(pwd):/docs spartan/mkdocs mkdocs serve

# run the image with bind address to container's IP
docker run --rm -p 8000:8000 -v $(pwd):/docs spartan/mkdocs mkdocs serve -a 172.17.0.2:8000
```
