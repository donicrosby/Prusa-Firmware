FROM ubuntu:latest
ENV TERM xterm-256color
RUN apt-get update && apt-get install -y \
  gawk \
  git \
  wget \
  zip \
  python3 \
  python-is-python3 \
  xz-utils \
  bzip2 \
  xxd \
  && rm -rf /var/lib/apt/lists/*
ENV PRUSA_BUILD_DIR /prusa
ENV PRUSA_FIRMWARE_SOURCE ${PRUSA_BUILD_DIR}/firmware
RUN mkdir -p ${PRUSA_FIRMWARE_SOURCE}
WORKDIR ${PRUSA_FIRMWARE_SOURCE}

COPY Firmware/ ./Firmware/
COPY Catch2/ ./Catch2/
COPY lang/ ./lang/
COPY tools/ ./tools/
COPY bmg-build.sh PF-build.sh MK404-build.sh ./

ENV PRUSA_VARIANTS_DIR ${PRUSA_FIRMWARE_SOURCE}/Firmware/variants
ENV DUMMY_HEADER ${PRUSA_VARIANTS_DIR}/shouldnt-exist.h
RUN touch ${DUMMY_HEADER} && \
    yes '1' | ./PF-build.sh -v "$( basename ${DUMMY_HEADER} )" || true && \
    ls -la .. && \
    rm -rf ${DUMMY_HEADER} ../PF-build-hex ../Prusa-Firmware-build
