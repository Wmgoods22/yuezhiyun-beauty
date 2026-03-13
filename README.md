# 🌸 玥之韵美容美体养生馆 - 网站使用手册

**创建时间**: 2026-03-13  
**网站位置**: `~/openclaw/workspace/yuezhiyun-beauty/`

---

## ✅ 网站已就绪

### 网站结构

```
yuezhiyun-beauty/
├── docs/                      # 网站内容
│   ├── index.md              # ✅ 首页
│   ├── about/
│   │   └── story.md          # ✅ 品牌故事
│   ├── services/
│   │   ├── facial.md         # ✅ 面部护理
│   │   ├── body.md           # ✅ 身体护理
│   │   └── wellness.md       # ✅ 养生调理
│   ├── pricing/
│   │   └── member.md         # ✅ 价格套餐
│   ├── booking/
│   │   └── online.md         # ✅ 在线预约
│   ├── reviews.md            # ✅ 顾客评价
│   └── contact.md            # ✅ 联系我们
├── mkdocs.yml                # ✅ 配置文件
└── site/                     # ✅ 构建输出（静态网站）
```

### 页面清单

| 页面 | 路径 | 状态 |
|------|------|------|
| 首页 | `/` | ✅ 已完成 |
| 品牌故事 | `/about/story/` | ✅ 已完成 |
| 面部护理 | `/services/facial/` | ✅ 已完成 |
| 身体护理 | `/services/body/` | ✅ 已完成 |
| 养生调理 | `/services/wellness/` | ✅ 已完成 |
| 价格套餐 | `/pricing/member/` | ✅ 已完成 |
| 在线预约 | `/booking/online/` | ✅ 已完成 |
| 顾客评价 | `/reviews/` | ✅ 已完成 |
| 联系我们 | `/contact/` | ✅ 已完成 |

---

## 🚀 立即预览

### 本地预览

```bash
cd ~/openclaw/workspace/yuezhiyun-beauty

# 启动本地服务器
mkdocs serve

# 浏览器访问：http://127.0.0.1:8000
```

### 查看构建文件

```bash
# 查看生成的静态文件
ls -la ~/openclaw/workspace/yuezhiyun-beauty/site/

# 直接用浏览器打开
open ~/openclaw/workspace/yuezhiyun-beauty/site/index.html
```

---

## 📝 自定义内容

### 1. 修改联系方式

编辑 `mkdocs.yml` 和 `docs/contact.md`：

```yaml
# mkdocs.yml
site_url: https://yourusername.github.io/

# docs/contact.md
📍 地址：[您的详细地址]
☎️ 电话：400-xxx-xxxx
📱 微信：your_wechat_id
```

### 2. 修改价格

编辑 `docs/services/*.md` 和 `docs/pricing/member.md`：

```markdown
| 项目名称 | 时长 | 价格 |
|---------|------|------|
| 深层清洁补水 | 60 分钟 | ¥298 |
```

### 3. 添加图片

```bash
# 将图片放入 assets 目录
mkdir -p docs/assets
cp your-image.jpg docs/assets/

# 在 Markdown 中使用
![](../assets/your-image.jpg)
```

### 4. 添加 Logo

```bash
# 准备 Logo 文件（建议 PNG 格式，透明背景）
cp logo.png docs/assets/

# 编辑 mkdocs.yml
theme:
  logo: assets/logo.png
  favicon: assets/favicon.ico
```

---

## 🌐 部署上线

### 方式 1: GitHub Pages（推荐）

```bash
cd ~/openclaw/workspace/yuezhiyun-beauty

# 初始化 Git
git init
git add .
git commit -m "Initial commit"

# 关联 GitHub 仓库（需先创建）
git remote add origin https://github.com/yourusername/yuezhiyun-beauty.git

# 推送代码
git push -u origin main

# 部署到 GitHub Pages
mkdocs gh-deploy
```

访问：`https://yourusername.github.io/yuezhiyun-beauty/`

### 方式 2: Vercel 部署

1. 访问 https://vercel.com
2. 导入 GitHub 仓库
3. 自动构建部署

### 方式 3: 本地服务器

```bash
# 将 site/ 目录上传到服务器
scp -r site/* user@server:/var/www/html/
```

---

## 🎨 主题定制

### 修改主题颜色

编辑 `mkdocs.yml`：

```yaml
theme:
  palette:
    primary: purple      # 主色调
    accent: pink         # 强调色
```

### 可用颜色

- **primary**: red, pink, purple, deep-purple, indigo, blue, light-blue, cyan, teal, green, light-green, lime, yellow, amber, orange, deep-orange
- **accent**: 同上

---

## 📱 移动端优化

网站已自动适配移动端：

- ✅ 响应式设计
- ✅ 触摸友好
- ✅ 快速加载
- ✅ 离线访问

---

## 🔧 高级功能

### 添加在线客服

在 `docs/contact.md` 中添加：

```html
<!-- 客服代码 -->
<script src="https://your-chat-widget.js"></script>
```

### 添加统计代码

在 `mkdocs.yml` 中添加：

```yaml
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX
```

### 添加评论系统

使用 Giscus（基于 GitHub Discussions）：

```html
<!-- 在页面中添加 -->
<script src="https://giscus.app/client.js"
        data-repo="yourusername/your-repo"
        data-repo-id="xxx"
        data-category="General"
        data-category-id="xxx"
        data-mapping="pathname"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="light"
        data-lang="zh-CN"
        crossorigin="anonymous"
        async>
</script>
```

---

## 📊 内容更新

### 更新服务项目

编辑 `docs/services/*.md`，然后：

```bash
# 重新构建
mkdocs build

# 重新部署
git add .
git commit -m "Update services"
git push
mkdocs gh-deploy
```

### 添加顾客评价

编辑 `docs/reviews.md`，添加新评价：

```markdown
-   :material-star:{ .lg .middle } __新顾客__

    "非常好的体验！"

    💆‍♀️ 项目：XXX  
    ⭐ 评分：★★★★★
```

---

## ⚠️ 注意事项

### 1. 隐私保护

- ❌ 不要公开顾客真实姓名（可用王小姐、李女士等）
- ❌ 不要公开顾客照片（需征得同意）
- ✅ 使用示例电话号码（400-xxx-xxxx）

### 2. 内容合规

- ✅ 价格真实透明
- ✅ 不夸大效果
- ✅ 遵守广告法

### 3. 定期更新

- 📅 每月检查价格是否准确
- 📅 及时更新优惠活动
- 📅 添加最新顾客评价

---

## 📞 需要帮助？

我可以帮你：

1. ✏️ **内容编辑**: 修改文案、添加页面
2. 🎨 **主题定制**: 修改颜色、布局
3. 🚀 **部署上线**: 配置域名、HTTPS
4. 🔧 **功能扩展**: 添加预约系统、支付功能
5. 📊 **数据集成**: 接入会员系统

---

## 🎯 下一步

1. **自定义内容**: 修改联系方式、价格、地址
2. **添加图片**: Logo、环境照片、案例图
3. **部署上线**: GitHub Pages 或 其他平台
4. **推广宣传**: 微信公众号、朋友圈、美团等

---

*祝生意兴隆！🌸*

**玥之韵美容美体养生馆**
