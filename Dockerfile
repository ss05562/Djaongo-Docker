From python:3

env PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN chmod 777 ./run_web.sh
#EXPOSE 8000

CMD ["./run_web.sh"]
