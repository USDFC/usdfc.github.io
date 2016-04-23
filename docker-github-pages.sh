docker run \
  -v "${PWD}":/usr/src/app \
  -e JEKYLL_GITHUB_TOKEN=4238c8f100862aaf564c098482986a0667d4b04e \
  -p "4000:4000" starefossen/github-pages
