FROM rk0d/gomake:1.0

LABEL repository="https://github.com/rkoCyrus/Go-CI"
LABEL homepage="https://rkocyrus.github.io"
LABEL maintainer="rk0_d"

LABEL "com.github.actions.name"="Go with make"
LABEL "com.github.actions.description"="A CI tools base on Ubuntu 20.04 LTS which contains go and make"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

ENV GO111MODULE on

ENTRYPOINT ["bash"]
