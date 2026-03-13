# 🚀 玥之韵网站 - 立即部署操作清单

**创建时间**: 2026-03-14 00:05

---

## ✅ 已完成准备

- [x] Git 仓库初始化
- [x] 首次提交完成（94 个文件）
- [x] Vercel 配置文件创建
- [x] .gitignore 文件创建
- [x] 部署文档准备

---

## 📋 接下来你需要做的（按顺序）

### 步骤 1: 注册 GitHub 账号（如果没有）
**访问**: https://github.com/signup
**时间**: 3 分钟

---

### 步骤 2: 创建 GitHub 仓库
**访问**: https://github.com/new

**填写信息**:
```
Repository name: yuezhiyun-beauty
Description: 玥之韵美容美体养生馆官方网站
Visibility: ✅ Public（公开）
❌ 不要勾选 "Initialize this repository"
```

**点击**: "Create repository"

---

### 步骤 3: 推送代码到 GitHub

**在终端执行以下命令**:
```bash
cd ~/openclaw/workspace/yuezhiyun-beauty

# 重命名分支
git branch -M main

# 添加远程仓库（替换 YOUR_USERNAME 为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/yuezhiyun-beauty.git

# 推送代码
git push -u origin main
```

**注意**: 将 `YOUR_USERNAME` 替换为你的实际 GitHub 用户名

---

### 步骤 4: 注册域名

**访问**: https://wanwang.aliyun.com/domain

**搜索并注册以下域名**（优先级从高到低）:
```
✅ yuezhiyunbeauty.com     - 首选（约¥60/年）
✅ yuezhiyun.vip           - 备选（约¥20/年）
✅ yuezhiyun.cn            - 备选（约¥40/年）
✅ yuezhiyun-beauty.com    - 备选（约¥60/年）
```

**注册流程**:
1. 搜索域名
2. 加入购物车
3. 注册/登录阿里云
4. 实名认证（需要身份证）
5. 支付（支付宝/微信）

---

### 步骤 5: 部署到 Vercel

**访问**: https://vercel.com

**操作流程**:
1. 点击 "Login" → "Continue with GitHub"
2. 授权 Vercel 访问 GitHub
3. 点击 "Add New Project"
4. 选择 "Import Git Repository"
5. 找到 `yuezhiyun-beauty` 仓库
6. 点击 "Import"
7. 配置保持不变（已自动识别）:
   ```
   Framework Preset: MkDocs
   Build Command: mkdocs build
   Output Directory: site
   ```
8. 点击 "Deploy"
9. 等待 1-2 分钟

**成功后获得临时地址**:
```
https://yuezhiyun-beauty.vercel.app
```

---

### 步骤 6: 绑定自定义域名

#### 在 Vercel 配置
1. 进入项目页面
2. 点击 "Settings" → "Domains"
3. 点击 "Add"
4. 输入域名:
   - `yuezhiyunbeauty.com`
   - `www.yuezhiyunbeauty.com`
5. 点击 "Add"

#### 在阿里云配置 DNS
1. 登录阿里云控制台
2. 进入 "域名控制台"
3. 找到你的域名，点击 "管理"
4. 点击 "解析设置"
5. 添加两条记录:

**记录 1 - CNAME**:
```
类型：CNAME
主机记录：www
记录值：cname.vercel-dns.com
TTL: 10 分钟
```

**记录 2 - A 记录**:
```
类型：A
主机记录：@
记录值：76.76.21.21
TTL: 10 分钟
```

---

### 步骤 7: 等待 DNS 生效
- 通常 5-30 分钟生效
- 最长不超过 24 小时
- 可以刷新页面检查状态

---

### 步骤 8: 验证访问

**访问以下地址测试**:
```
✅ https://yuezhiyunbeauty.com
✅ https://www.yuezhiyunbeauty.com
✅ https://yuezhiyun-beauty.vercel.app
```

**检查项目**:
- [ ] 首页正常显示
- [ ] 所有页面可访问
- [ ] 图片加载正常
- [ ] 预约表单可用
- [ ] 移动端显示正常
- [ ] HTTPS 证书正常（绿色锁标志）

---

## 📱 分享给同事

### 方式 1: 发送链接
```
欢迎访问玥之韵美容美体养生馆官网：
https://yuezhiyunbeauty.com

请查看并提出修改意见！
```

### 方式 2: 生成二维码
**访问**: https://www.qr-code-generator.com/
1. 输入网址：https://yuezhiyunbeauty.com
2. 生成二维码
3. 下载图片
4. 发送给同事

### 方式 3: 微信分享
直接发送链接到微信群
微信会自动识别为精美卡片

---

## 💰 费用明细

| 项目 | 费用 | 支付 |
|------|------|------|
| 域名（.com） | ¥60/年 | 阿里云 |
| Vercel | 免费 | - |
| **总计** | **¥60/年** | - |

---

## ⏱️ 预计时间

| 步骤 | 时间 |
|------|------|
| 注册 GitHub | 3 分钟 |
| 创建仓库 | 2 分钟 |
| 推送代码 | 3 分钟 |
| 注册域名 | 5 分钟 |
| Vercel 部署 | 5 分钟 |
| 绑定域名 | 10 分钟 |
| DNS 生效 | 5-30 分钟 |
| **总计** | **约 30-60 分钟** |

---

## 🆘 需要帮助？

如果遇到任何问题，我可以帮你：

1. ✅ 检查域名是否可注册
2. ✅ 生成正确的 Git 命令
3. ✅ 解答 Vercel 配置问题
4. ✅ 帮助设置 DNS 记录
5. ✅ 生成访问二维码
6. ✅ 创建修改清单模板

---

## 📝 修改意见收集模板

**发给同事的话术**:
```
各位同事好！

玥之韵美容院官网已上线测试，欢迎大家体验并提出修改意见：

🌐 访问地址：https://yuezhiyunbeauty.com

请重点关注以下方面：
1. 视觉设计（配色、布局、图片）
2. 功能体验（预约流程、页面加载）
3. 内容准确性（服务项目、价格、联系方式）
4. 移动端显示效果

修改意见请标注：
- 页面位置
- 问题描述
- 修改建议
- 优先级（高/中/低）

谢谢大家！
```

---

## 🎯 下一步

部署完成后：
1. 收集同事修改意见
2. 整理修改清单
3. 本地修改测试
4. 提交代码自动更新
5. 确认修改效果

---

**准备好了吗？现在开始执行吧！** 🚀

有任何问题随时告诉我！
