# 
FROM hub.atomgit.com/library/python:3

# 
WORKDIR /FastAPI_backend

# 
COPY ./requirements.txt /FastAPI_backend/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /FastAPI_backend/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# 
COPY ./app /FastAPI_backend/app

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]