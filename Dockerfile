FROM debian

RUN apt-get update
RUN apt-get install -y ocaml opam zlib1g-dev build-essential libmenhir-ocaml-dev menhir libounit-ocaml-dev libcryptokit-ocaml-dev libcryptokit-ocaml ocaml-findlib

RUN git clone https://github.com/ANSSI-FR/caradoc.git /build
WORKDIR /build
RUN make && cp ./caradoc /usr/bin/caradoc

WORKDIR /mnt
VOLUME /mnt

CMD bash
