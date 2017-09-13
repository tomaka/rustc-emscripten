FROM trzeci/emscripten-slim:sdk-incoming-64bit

RUN apt-get update && apt-get install -y curl

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly
ENV PATH /root/.cargo/bin:$PATH

RUN rustup target add asmjs-unknown-emscripten
RUN rustup target add wasm32-unknown-emscripten
