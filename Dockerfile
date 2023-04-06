FROM python3.10
COPY . /app
WORKDIR /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD ["python3", "jdsign.py"]
