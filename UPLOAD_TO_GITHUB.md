# 📤 手动上传代码到 GitHub - 图文指南

**适用场景**: 不会使用 git push 命令  
**预计时间**: 5 分钟

---

## 步骤 1: 访问 GitHub 新建仓库页面

**访问**: https://github.com/new

**或者**:
1. 打开 https://github.com
2. 登录账号（haohaoxuebi1）
3. 点击右上角 "+" 号
4. 选择 "New repository"

---

## 步骤 2: 填写仓库信息

### 填写以下内容：

**Repository name** (仓库名称):
```
yuezhiyun-beauty
```

**Description** (描述):
```
玥之韵美容美体养生馆官方网站
```

**Visibility** (可见性):
```
✅ 选择 Public (公开)
```

**⚠️ 重要**:
```
❌ 不要勾选 "Add a README file"
❌ 不要勾选 "Add .gitignore"
❌ 不要勾选 "Choose a license"
```

**点击**: "Create repository" 按钮

---

## 步骤 3: 上传文件

创建成功后，会看到一个页面，显示：

### 方式 A: 拖拽上传（推荐）

```
1. 打开文件管理器
2. 进入文件夹：/home/admin/openclaw/workspace/yuezhiyun-beauty
3. 选择所有文件（Ctrl+A 或 Cmd+A）
4. 拖拽到 GitHub 页面的上传区域
5. 等待上传完成
```

### 方式 B: 点击上传

```
1. 点击 "uploading an existing file" 链接
2. 选择文件（可以多选）
3. 或者拖拽文件到虚线框内
4. 等待上传完成
```

---

## 步骤 4: 提交文件

上传完成后，在页面底部：

**Commit message** (提交说明):
```
Initial commit - 玥之韵美容院网站
```

**点击**: "Commit changes" 按钮

---

## 步骤 5: 验证上传成功

上传成功后，你会看到：
- ✅ 文件列表（mkdocs.yml, docs 文件夹等）
- ✅ 提交记录（Initial commit）
- ✅ 文件数量（约 90+ 个文件）

---

## 步骤 6: 部署到 Vercel

### 访问 Vercel
https://vercel.com

### 登录
1. 点击 "Login"
2. 选择 "Continue with GitHub"
3. 授权 Vercel 访问 GitHub

### 导入项目
1. 点击 "Add New Project"
2. 选择 "Import Git Repository"
3. 找到 `yuezhiyun-beauty` 仓库
4. 点击 "Import"

### 配置构建
```
Framework Preset: MkDocs
Build Command: mkdocs build
Output Directory: site
```

### 开始部署
1. 点击 "Deploy"
2. 等待 1-2 分钟
3. 部署成功！

### 获得访问地址
```
https://yuezhiyun-beauty.vercel.app
```

---

## 📋 完整文件列表

确保上传以下文件：

### 根目录文件
- [x] mkdocs.yml (配置文件)
- [x] vercel.json (Vercel 配置)
- [x] .gitignore (Git 忽略文件)
- [x] README.md (项目说明)
- [x] DEPLOYMENT_CHECKLIST.md (部署清单)
- [x] VERCEL_DEPLOYMENT.md (部署指南)

### docs 文件夹
- [x] index.md (首页)
- [x] about/story.md (品牌故事)
- [x] about/certification.md (资质认证)
- [x] services/facial.md (面部护理)
- [x] services/body.md (身体护理)
- [x] services/wellness.md (养生调理)
- [x] pricing/member.md (会员体系)
- [x] booking/online.md (在线预约)
- [x] reviews.md (顾客评价)
- [x] contact.md (联系我们)
- [x] privacy.md (隐私政策)

### docs/assets 文件夹
- [x] logo.png (Logo)
- [x] favicon.ico (网站图标)
- [x] custom.css (自定义样式)
- [x] environment1.jpg (环境图片 1)
- [x] environment2.jpg (环境图片 2)
- [x] treatment.jpg (护理图片)
- [x] skincare.jpg (护肤图片)
- [x] massage.jpg (按摩图片)
- [x] wellness.jpg (养生图片)
- [x] team.jpg (团队图片)
- [x] products.jpg (产品图片)
- [x] spa-room.jpg (SPA 房间)
- [x] facial-treatment.jpg (面部护理)
- [x] massage-therapy.jpg (按摩理疗)
- [x] wellness-center.jpg (养生中心)
- [x] beauty-products.jpg (美容产品)
- [x] hero-banner.jpg (横幅图片)

---

## ⚠️ 常见问题

### Q1: 文件太多，上传很慢怎么办？
**答**: 分批上传，先上传重要的：
1. mkdocs.yml
2. docs/index.md
3. docs/assets/ 文件夹
4. 其他文件

### Q2: 上传后网站显示不正常？
**答**: 
1. 检查 mkdocs.yml 是否上传
2. 检查 docs 文件夹结构
3. 在 Vercel 重新部署

### Q3: Vercel 部署失败？
**答**:
1. 查看部署日志
2. 确认 Build Command: `mkdocs build`
3. 确认 Output Directory: `site`
4. 重新触发部署

---

## 🎯 下一步

上传完成后告诉我，我帮你：
1. ✅ 检查文件是否完整
2. ✅ 部署到 Vercel
3. ✅ 绑定自定义域名
4. ✅ 生成访问二维码

---

**现在就开始上传吧！** 🚀

有任何问题随时告诉我！
