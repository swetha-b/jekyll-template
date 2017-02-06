JEKYLL_ENV=production jekyll build
s3_website push --config-dir _dist "$@"
