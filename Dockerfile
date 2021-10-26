FROM tiangolo/uvicorn-gunicorn:python3.8

WORKDIR /backend

RUN apt update

RUN python -m pip install --upgrade pip

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./backend ./backend

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
