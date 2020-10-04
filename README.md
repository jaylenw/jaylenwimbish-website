# jaylenwimbish-website
My personal website.

## Local Development

### Getting Started

1.) [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) must be installed to work on the website locally.

2.) Clone this repository.

3.) Create the `.env` file and provide the expected values. Run `id -u` to obtain your user id.

```
# set your user id for the local development
myUserID=
```

4.) Run `docker-compose build` to build the image.

5.) Run `docker-compose run -u dev --service-ports website bash` to enter container for development.
