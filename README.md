# Solana CLI Tool Suite ◎ $SOL

## Usage

Build the image
```
docker build --tag solana/source:latest --no-cache .
```
OR
```
docker build --tag solana/stable:latest --no-cache .
```

Create the container and mount the `$PWD` to the `tmp/` directory inside.
```
docker run --name solana -v `pwd`:/tmp -it solana/stable bash
```

Check install by running
```
solana --help
```