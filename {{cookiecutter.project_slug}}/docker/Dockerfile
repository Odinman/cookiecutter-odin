FROM registry.cn-hangzhou.aliyuncs.com/gladsheim/alpine:withtz
EXPOSE {{ cookiecutter.port }}

ENV GODEBUG=netdns=go

ADD release/{{ cookiecutter.project_slug }} /bin
ADD conf/config.json /bin/{{ cookiecutter.project_slug }}.json

ENTRYPOINT ["/bin/{{ cookiecutter.project_slug }}"]
