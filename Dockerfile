FROM java:8
# set maintainer
LABEL maintainer "samdevops@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8080 || exit 1

# tell docker
EXPOSE 8086
