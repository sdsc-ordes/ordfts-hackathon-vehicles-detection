FROM python:3.11-slim

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# Add git
RUN apt-get update && apt-get install -y --no-install-recommends git=1:2.39.2-1.1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install requirements pytorch
RUN --mount=type=cache,id=pip-$TARGETARCH$TARGETVARIANT,sharing=locked,target=/root/.cache/pip \
    pip install -U --extra-index-url https://download.pytorch.org/whl/cu118 \
    torch==2.1.1 torchaudio==2.1.1 \
    pyannote.audio==3.1.1 \
    # Use dumb-init as PID 1 to handle signals properly
    pip dumb-init

# Installing dependecies from the app
COPY . /app

WORKDIR /app

ENTRYPOINT bash