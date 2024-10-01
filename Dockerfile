# 使用 Python 3.8 的基础镜像
FROM python:3.8-slim

# 设置工作目录
WORKDIR /app

# 将当前目录内容复制到容器中
COPY . .

# 安装依赖
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# 构建分发包
CMD ["python", "setup.py", "sdist", "bdist_wheel"]
