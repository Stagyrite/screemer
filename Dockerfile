FROM alpine:3.22.0 as git-repository
COPY . /usr/src/speakingstreem
RUN \
	apk update && \
	apk add git gcc make bison flex musl-dev && \
	git clone https://github.com/matz/streem.git && \
	cd streem && make && \
	cd /usr/src/speakingstreem && \
	echo "agnosticism,atheism,theism" | /streem/bin/streem agnosticism.strm && \
	echo "fatalist" | /streem/bin/streem atheism.strm && \
	/streem/bin/streem monsters.strm && \
	/streem/bin/streem princes.strm && \
	/streem/bin/streem languageVersions.strm && \
	/streem/bin/streem translations.strm && \
	/streem/bin/streem translations.strm && \
	/streem/bin/streem contacts.strm && \
	/streem/bin/streem certification.strm

