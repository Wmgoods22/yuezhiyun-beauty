#!/bin/bash
# 玥之韵网站 - 一键推送到 GitHub 脚本

echo "========================================"
echo "  玥之韵美容院网站 - GitHub 推送脚本"
echo "========================================"
echo ""

cd ~/openclaw/workspace/yuezhiyun-beauty

echo "📁 当前目录：$(pwd)"
echo ""

echo "📋 Git 状态检查..."
git status --short
echo ""

echo "🔗 远程仓库地址："
git remote -v
echo ""

echo "========================================"
echo "请输入 GitHub Personal Access Token:"
echo "(Token 格式：ghp_xxxxxxxxxxxx)"
echo "输入时不会显示，输入后按回车"
echo "========================================"
read -s TOKEN
echo ""
echo ""

if [ -z "$TOKEN" ]; then
    echo "❌ Token 不能为空！"
    exit 1
fi

echo "🚀 开始推送到 GitHub..."
echo ""

# 使用 Token 推送
GIT_ASKPASS=true git push https://haohaoxuebi1:$TOKEN@github.com/haohaoxuebi1/yuezhiyun-beauty.git main

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================"
    echo "  ✅ 推送成功！"
    echo "========================================"
    echo ""
    echo "📁 GitHub 仓库地址："
    echo "https://github.com/haohaoxuebi1/yuezhiyun-beauty"
    echo ""
    echo "🎯 下一步："
    echo "1. 访问 https://vercel.com"
    echo "2. 用 GitHub 账号登录"
    echo "3. 点击 'Add New Project'"
    echo "4. 导入 yuezhiyun-beauty 仓库"
    echo "5. 点击 'Deploy'"
    echo ""
else
    echo ""
    echo "========================================"
    echo "  ❌ 推送失败！"
    echo "========================================"
    echo ""
    echo "可能原因："
    echo "1. Token 无效或已过期"
    echo "2. Token 权限不足（需要 repo 权限）"
    echo "3. 网络连接问题"
    echo ""
    echo "请检查 Token 后重试！"
    echo ""
    exit 1
fi
