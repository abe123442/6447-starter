FROM skysider/pwndocker

RUN python3 -m venv /ctf/py/.venv

COPY requirements.txt /ctf/py/requirements.txt
RUN /ctf/py/.venv/bin/pip install --upgrade pip \
    && /ctf/py/.venv/bin/pip install -r /ctf/py/requirements.txt

# since we're running bash this actually keeps venv activated on all terminals we open
RUN echo "source /ctf/py/.venv/bin/activate" >> /root/.bashrc

ENTRYPOINT ["/bin/bash"]