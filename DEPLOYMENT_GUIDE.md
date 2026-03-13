# 🌐 玥之韵网站 - 部署上线指南

**最后更新**: 2026-03-13

---

## 方案一：GitHub Pages（免费，推荐新手）⭐

### 优点
- ✅ 完全免费
- ✅ 一键部署
- ✅ 自动 HTTPS
- ✅ 稳定可靠

### 缺点
- ❌ 域名较长（用户名.github.io）
- ❌ 国内访问可能慢

### 部署步骤

#### 1. 创建 GitHub 账号
访问 https://github.com 注册账号

#### 2. 创建仓库
```bash
# 在 GitHub 网站点击 "New repository"
# 仓库名：yuezhiyun-beauty
# 设为 Public（公开）
# 不要勾选 "Initialize this repository with a README"
```

#### 3. 本地推送代码
```bash
cd ~/openclaw/workspace/yuezhiyun-beauty

# 初始化 Git
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit - 玥之韵美容院网站"

# 关联远程仓库（替换为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/yuezhiyun-beauty.git

# 推送
git push -u origin main
```

#### 4. 启用 GitHub Pages
```
1. 进入仓库页面
2. 点击 "Settings" → "Pages"
3. Source 选择 "main branch"
4. 点击 "Save"
5. 等待 2-3 分钟
```

#### 5. 访问网站
```
https://YOUR_USERNAME.github.io/yuezhiyun-beauty/
```

---

## 方案二：Vercel（免费，推荐）⭐⭐

### 优点
- ✅ 完全免费
- ✅ 自动部署
- ✅ 全球 CDN 加速
- ✅ 支持自定义域名
- ✅ 国内访问较快

### 部署步骤

#### 1. 访问 Vercel
https://vercel.com

#### 2. 注册/登录
- 使用 GitHub 账号登录（推荐）
- 或使用邮箱注册

#### 3. 导入项目
```
1. 点击 "Add New Project"
2. 选择 "Import Git Repository"
3. 选择 yuezhiyun-beauty 仓库
4. 点击 "Import"
```

#### 4. 配置构建
```
Framework Preset: MkDocs
Build Command: mkdocs build
Output Directory: site
```

#### 5. 部署
```
点击 "Deploy"
等待 1-2 分钟
```

#### 6. 访问网站
```
https://yuezhiyun-beauty.vercel.app
```

---

## 方案三：Netlify（免费）⭐⭐

### 优点
- ✅ 完全免费
- ✅ 拖拽部署
- ✅ 自动 HTTPS
- ✅ 支持表单

### 部署步骤

#### 1. 访问 Netlify
https://netlify.com

#### 2. 注册/登录

#### 3. 部署网站
**方式 A: Git 部署**
```
1. 点击 "Add new site" → "Import an existing project"
2. 连接 GitHub
3. 选择 yuezhiyun-beauty 仓库
4. 配置：
   - Build command: mkdocs build
   - Publish directory: site
5. 点击 "Deploy site"
```

**方式 B: 拖拽部署（最简单）**
```
1. 本地构建网站：
   cd ~/openclaw/workspace/yuezhiyun-beauty
   mkdocs build

2. 在 Netlify 点击 "Add new site" → "Deploy manually"

3. 将 site/ 文件夹拖拽到上传区域

4. 等待上传完成
```

#### 4. 访问网站
```
https://random-name.netlify.app
（可在设置中修改为 yuezhiyun-beauty.netlify.app）
```

---

## 方案四：自定义域名（付费，专业）⭐⭐⭐

### 适用场景
- 正式商业使用
- 需要专业形象
- 品牌保护

### 域名注册

#### 推荐平台
- 阿里云：https://wanwang.aliyun.com/domain
- 腾讯云：https://cloud.tencent.com/product/domain
- GoDaddy：https://godaddy.com

#### 域名建议
```
推荐：
- yuezhiyun.com
- yuezhiyunbeauty.com
- yuezhiyun.vip
- yuezhiyun.cn

价格：
- .com: ¥55-80/年
- .cn: ¥35-55/年
- .vip: ¥15-30/年
```

### 绑定域名

#### GitHub Pages 绑定
```
1. 在域名注册商添加 CNAME 记录：
   主机记录：www
   记录值：YOUR_USERNAME.github.io

2. 在仓库创建 CNAME 文件：
   echo "www.yuezhiyun.com" > CNAME

3. 提交推送：
   git add CNAME
   git commit -m "Add custom domain"
   git push

4. 在 Settings → Pages → Custom domain 填写域名
```

#### Vercel 绑定
```
1. 进入项目 → Settings → Domains

2. 添加域名：yuezhiyun.com

3. 在域名注册商添加：
   - CNAME 记录：www → cname.vercel-dns.com
   - A 记录：@ → 76.76.21.21
```

---

## 方案五：国内服务器（付费，最快）⭐⭐⭐

### 适用场景
- 主要用户在国内
- 需要最快速度
- 有备案条件

### 推荐平台
- 阿里云轻量应用服务器：¥24/月起
- 腾讯云轻量应用服务器：¥24/月起

### 部署步骤

#### 1. 购买服务器
```
配置建议：
- CPU: 1 核
- 内存：1GB
- 硬盘：40GB
- 带宽：1Mbps
- 系统：Ubuntu 20.04
```

#### 2. 连接服务器
```bash
ssh root@你的服务器 IP
```

#### 3. 安装 Nginx
```bash
apt update
apt install nginx -y
```

#### 4. 上传网站
```bash
# 本地构建
cd ~/openclaw/workspace/yuezhiyun-beauty
mkdocs build

# 上传到服务器（在本地执行）
scp -r site/* root@服务器IP:/var/www/html/
```

#### 5. 配置 Nginx
```bash
# 编辑配置
nano /etc/nginx/sites-available/default

# 修改：
server {
    listen 80;
    server_name 你的域名;
    root /var/www/html;
    index index.html;
    
    location / {
        try_files $uri $uri/ =404;
    }
}

# 重启 Nginx
systemctl restart nginx
```

#### 6. 访问网站
```
http://你的服务器 IP
或
http://你的域名
```

---

## 快速分享方案（临时预览）

### 方案 A: ngrok（内网穿透）

```bash
# 安装 ngrok
cd /tmp
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip

# 运行（保持终端开启）
./ngrok http 8080

# 获得临时外网地址
# 类似：https://abc123.ngrok.io
```

### 方案 B: Cloudflare Tunnel

```bash
# 安装 cloudflared
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64
chmod +x cloudflared-linux-amd64

# 运行
./cloudflared-linux-amd64 tunnel --url http://localhost:8080
```

### 方案 C: 本地网络共享

```bash
# 查看本机 IP
hostname -I

# 同事在同一 WiFi 下访问
# http://你的IP地址：8080
```

---

## 推荐方案对比

| 方案 | 费用 | 难度 | 速度 | 推荐场景 |
|------|------|------|------|---------|
| **GitHub Pages** | 免费 | ⭐ | ⭐⭐ | 临时预览、测试 |
| **Vercel** | 免费 | ⭐⭐ | ⭐⭐⭐ | 正式使用（推荐） |
| **Netlify** | 免费 | ⭐⭐ | ⭐⭐⭐ | 正式使用 |
| **自定义域名** | ¥50-100/年 | ⭐⭐⭐ | ⭐⭐⭐ | 商业使用 |
| **国内服务器** | ¥300/年起 | ⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ | 专业商业使用 |

---

## 我的建议

### 临时预览（今天用）
```
推荐：ngrok 内网穿透
优点：立即生效，无需注册
缺点：每次重启地址变化
```

### 短期使用（1-2 周）
```
推荐：Vercel 免费部署
优点：稳定、快速、免费
缺点：域名较长
```

### 长期使用（正式商用）
```
推荐：Vercel + 自定义域名
优点：专业、稳定、快速
成本：域名费 ¥50-100/年
```

---

## 立即执行（推荐 Vercel）

### 5 分钟快速部署

```bash
# 1. 确保网站已构建
cd ~/openclaw/workspace/yuezhiyun-beauty
mkdocs build

# 2. 访问 https://vercel.com

# 3. 用 GitHub 账号登录

# 4. 点击 "Add New Project"

# 5. 导入 yuezhiyun-beauty 仓库

# 6. 点击 "Deploy"

# 7. 完成！获得访问地址
```

---

## 部署后如何更新

### Vercel/Netlify（自动）
```bash
# 修改网站内容后
git add .
git commit -m "更新内容"
git push

# 自动重新部署，1-2 分钟后生效
```

### GitHub Pages（手动）
```bash
# 修改后重新推送
git add .
git commit -m "更新内容"
git push

# 自动更新，2-3 分钟后生效
```

### 服务器（手动）
```bash
# 本地构建
mkdocs build

# 上传到服务器
scp -r site/* root@服务器IP:/var/www/html/
```

---

## 需要我帮你？

我可以帮你：
1. 🚀 直接部署到 Vercel
2. 🌐 注册域名并绑定
3. 🖥️ 配置国内服务器
4. 📱 生成二维码分享给同事
5. 📊 设置网站访问统计

**告诉我你选择哪个方案，我立即帮你部署！**
