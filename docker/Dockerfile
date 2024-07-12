FROM ubuntu:latest
ENV TERM xterm-256color
RUN apt-get update && apt-get install -y \
  gawk \
  git \
  wget \
  zip \
  python3 \
  python3-pip \
  python3-venv \
  python3-polib \
  python3-pyelftools \
  python3-regex \
  python-is-python3 \
  xz-utils \
  bzip2 \
  xxd \
  && rm -rf /var/lib/apt/lists/*
ENV PRUSA_BUILD_DIR /prusa
ENV PRUSA_FIRMWARE_SOURCE ${PRUSA_BUILD_DIR}/firmware
RUN mkdir -p ${PRUSA_FIRMWARE_SOURCE}
WORKDIR ${PRUSA_FIRMWARE_SOURCE}

COPY .git/ .git/
COPY Firmware/ ./Firmware/
COPY lib/ ./lib/
COPY lang/ ./lang/
COPY tools/ ./tools/
COPY tests/ ./tests/
COPY utils/ ./utils/
COPY build-bmg.sh PF-build.sh MK404-build.sh docker/generate_build_env.sh ./

RUN ./utils/bootstrap.py
# ENV PRUSA_VARIANTS_DIR ${PRUSA_FIRMWARE_SOURCE}/Firmware/variants
# ENV DUMMY_HEADER ${PRUSA_VARIANTS_DIR}/shouldnt-exist.h
# RUN touch ${DUMMY_HEADER} && \
#     # This should fail, we're using the PF-Build and the dummy file
#     # to generate the environment
#     yes '1' | ./PF-build.sh -v "$( basename ${DUMMY_HEADER} )" || true && \
#     rm -rf ${DUMMY_HEADER} ../PF-build-hex ../Prusa-Firmware-build
