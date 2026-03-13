# 🌐 玥之韵 - Vercel + 自定义域名部署清单

**创建时间**: 2026-03-14  
**目标**: 专业部署上线

---

## 📋 完整部署流程

### 第一步：注册域名（5 分钟）

#### 推荐平台：阿里云万网
访问：https://wanwang.aliyun.com/domain

#### 推荐域名（按优先级）
```
✅ yuezhiyunbeauty.com     - 首选（约¥60/年）
✅ yuezhiyun.vip           - 备选（约¥20/年）
✅ yuezhiyun.cn            - 备选（约¥40/年）
✅ yuezhiyun-beauty.com    - 备选（约¥60/年）
```

#### 注册步骤
1. 访问阿里云万网
2. 搜索想要的域名
3. 加入购物车
4. 注册/登录阿里云账号
5. 实名认证（必须）
6. 支付（支持支付宝/微信）

**费用**: ¥20-80/年（取决于域名后缀）

---

### 第二步：创建 GitHub 仓库（3 分钟）

#### 访问 GitHub
https://github.com

#### 创建步骤
1. 登录 GitHub（没有账号先注册）
2. 点击右上角 "+" → "New repository"
3. 填写：
   - Repository name: `yuezhiyun-beauty`
   - Description: "玥之韵美容美体养生馆官方网站"
   - ✅ Public（公开）
   - ❌ 不要勾选 "Initialize this repository"
4. 点击 "Create repository"

---

### 第三步：推送代码到 GitHub（5 分钟）

#### 在本地执行以下命令
```bash
cd ~/openclaw/workspace/yuezhiyun-beauty

# 重命名分支为 main
git branch -M main

# 添加远程仓库（替换为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/yuezhiyun-beauty.git

# 推送代码
git push -u origin main
```

**注意**: 将 `YOUR_USERNAME` 替换为你的 GitHub 用户名

---

### 第四步：部署到 Vercel（5 分钟）

#### 访问 Vercel
https://vercel.com

#### 部署步骤
1. **登录**
   - 点击 "Login"
   - 选择 "Continue with GitHub"
   - 授权 Vercel 访问 GitHub

2. **导入项目**
   - 点击 "Add New Project"
   - 选择 "Import Git Repository"
   - 找到 `yuezhiyun-beauty` 仓库
   - 点击 "Import"

3. **配置构建**
   ```
   Framework Preset: MkDocs
   Build Command: mkdocs build
   Output Directory: site
   ```

4. **开始部署**
   - 点击 "Deploy"
   - 等待 1-2 分钟
   - 部署成功后会显示访问地址

5. **获得临时地址**
   ```
   https://yuezhiyun-beauty.vercel.app
   ```

---

### 第五步：绑定自定义域名（10 分钟）

#### 在 Vercel 配置
1. 进入项目页面
2. 点击 "Settings" → "Domains"
3. 点击 "Add" 按钮
4. 输入你的域名：
   - `yuezhiyunbeauty.com`
   - `www.yuezhiyunbeauty.com`
5. 点击 "Add"

#### 在阿里云配置 DNS
1. 登录阿里云控制台
2. 进入 "域名控制台"
3. 找到你的域名，点击 "管理"
4. 点击 "DNS 修改" 或 "解析设置"
5. 添加以下记录：

**记录 1: CNAME（www）**
```
记录类型：CNAME
主机记录：www
记录值：cname.vercel-dns.com
TTL: 10 分钟
```

**记录 2: A 记录（根域名）**
```
记录类型：A
主机记录：@
记录值：76.76.21.21
TTL: 10 分钟
```

#### 等待生效
- DNS 生效时间：5-30 分钟
- 最长可能 24 小时（通常很快）

---

### 第六步：验证部署（2 分钟）

#### 访问测试
```
✅ https://yuezhiyunbeauty.com
✅ https://www.yuezhiyunbeauty.com
```

#### 检查项目
- [ ] 网站首页正常显示
- [ ] 所有页面可以访问
- [ ] 图片加载正常
- [ ] 预约表单可用
- [ ] 移动端显示正常
- [ ] HTTPS 证书正常（绿色锁标志）

---

## 💰 费用清单

| 项目 | 费用 | 周期 |
|------|------|------|
| 域名（.com） | ¥60 | 1 年 |
| 域名（.vip） | ¥20 | 1 年 |
| 域名（.cn） | ¥40 | 1 年 |
| Vercel | 免费 | 永久 |
| **总计** | **¥20-80** | **1 年** |

---

## ⏱️ 时间估算

| 步骤 | 预计时间 |
|------|---------|
| 注册域名 | 5 分钟 |
| 创建 GitHub 仓库 | 3 分钟 |
| 推送代码 | 5 分钟 |
| Vercel 部署 | 5 分钟 |
| 绑定域名 | 10 分钟 |
| DNS 生效 | 5-30 分钟 |
| **总计** | **约 30-60 分钟** |

---

## 🔧 后续更新

### 自动部署
```bash
# 修改网站内容后
cd ~/openclaw/workspace/yuezhiyun-beauty

# 提交修改
git add .
git commit -m "修改内容描述"
git push

# Vercel 会自动重新部署
# 1-2 分钟后生效
```

### 查看部署状态
访问：https://vercel.com/dashboard
- 查看部署历史
- 查看访问统计
- 管理域名设置

---

## 📱 分享给同事

### 方式 1: 发送链接
```
欢迎访问玥之韵官网：
https://yuezhiyunbeauty.com

请查看并提出修改意见！
```

### 方式 2: 生成二维码
```bash
# 使用在线工具生成二维码
https://www.qr-code-generator.com/

输入网址，生成二维码
发送给同事扫码访问
```

### 方式 3: 微信群分享
直接发送链接到微信群
微信会自动识别为卡片

---

## ⚠️ 注意事项

### 实名认证
- 阿里云域名必须实名认证
- 准备身份证照片
- 审核时间：1-2 小时

### ICP 备案（可选）
- 如果服务器在中国大陆需要备案
- Vercel 是海外服务，暂时不需要
- 如果后期转国内服务器需要备案

### 续费提醒
- 域名到期前 1 个月会邮件提醒
- 建议开启自动续费
- 费用：¥60/年（.com）

### HTTPS 证书
- Vercel 自动提供 HTTPS
- 免费 Let's Encrypt 证书
- 自动续期，无需手动操作

---

## 🆘 常见问题

### Q1: 域名被注册了怎么办？
**答**: 尝试其他后缀或变体
- yuezhiyun.vip
- yuezhiyun.cn
- yuezhiyun-beauty.com
- myyuezhiyun.com

### Q2: DNS 不生效怎么办？
**答**: 
- 等待 10-30 分钟
- 清除浏览器缓存
- 检查 DNS 记录是否正确
- 联系阿里云客服

### Q3: Vercel 部署失败怎么办？
**答**:
- 检查 build 命令是否正确
- 查看部署日志
- 确保 site/目录存在
- 重新触发部署

### Q4: 如何修改 Vercel 项目名称？
**答**:
- Settings → General → "Name and Team"
- 修改项目名称
- 会自动更新访问地址

---

## 📞 需要帮助？

我可以帮你：
1. ✅ 检查域名是否可注册
2. ✅ 生成 Git 推送命令
3. ✅ 创建 Vercel 配置文件
4. ✅ 生成访问二维码
5. ✅ 设置自动部署

**现在开始执行部署吧！**

---

*祝部署顺利！🚀*
