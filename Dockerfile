FROM rk0d/gomake:1.4

LABEL repository="https://github.com/rkoCyrus/Go-CI"
LABEL homepage="https://rkocyrus.github.io"
LABEL maintainer="rk0_d"
LABEL email_address="cyruschan1212@outlook.com"

ENV GO111MODULE on

ENTRYPOINT ["/bin/bash"]
