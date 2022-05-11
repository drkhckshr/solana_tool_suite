FROM --platform=linux/amd64 ubuntu:latest
RUN apt update && apt upgrade -y && apt install -y curl build-essential libssl-dev libudev-dev pkg-config zlib1g-dev llvm clang cmake make git
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup component add rustfmt
RUN rustup update
RUN sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
ENV PATH="/root/.local/share/solana/install/active_release/bin:$PATH"
RUN solana-install update
RUN solana --version