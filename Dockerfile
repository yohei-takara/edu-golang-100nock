FROM ubuntu:16.04

ARG go_version="1.11"

RUN apt-get update && apt-get install -y \
	software-properties-common \
	&& add-apt-repository -y  ppa:gophers/archive \
	&& apt-get update && apt-get install -y \
		golang-${go_version}-go \
		vim \
		less \
		git-all

ENV PATH "/usr/lib/go-${go_version}/bin/:$PATH"

CMD ["/bin/bash"]
