# 使用官方的 Node.js 镜像
FROM node:18

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json 并安装依赖
# 确保在 Dockerfile 中
COPY package*.json ./
# 将项目文件复制到容器中
COPY . .
RUN npm install



# 构建项目
RUN npm run build

# 暴露端口
EXPOSE 8095

# 启动应用
CMD ["npm", "start"]
