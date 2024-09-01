FROM debian:11.10-slim

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends ca-certificates wget git python3 python3-venv libgl1 libglib2.0-0; \
	rm -rf /var/lib/apt/lists/*; \
	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; \
	echo ${dpkgArch}; \
	python3 --version; \
	pip3 --version;
