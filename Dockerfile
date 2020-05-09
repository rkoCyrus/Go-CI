FROM rk0d/gomake:1.0

LABEL repository="https://github.com/rkoCyrus/Go-CI"
LABEL homepage="https://rkocyrus.github.io"
LABEL maintainer="rk0_d"

ENV GO111MODULE on

ENTRYPOINT ["/bin/bash"]
