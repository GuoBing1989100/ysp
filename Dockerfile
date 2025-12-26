# 使用轻量级 Python 镜像
FROM python:3.14-slim

# 设置工作目录
WORKDIR /app

# 拷贝依赖文件并安装
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 拷贝项目代码
COPY . .

# 暴露端口
EXPOSE 4321

# 使用 uvicorn 启动 FastAPI 服务
CMD ["uvicorn", "yspapp:app", "--host", "0.0.0.0", "--port", "4321"]
