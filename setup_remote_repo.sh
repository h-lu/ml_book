#!/bin/bash

echo "=== 机器学习Python教程书籍 - 远程仓库设置脚本 ==="
echo ""

echo "步骤1: 手动创建 GitHub 仓库"
echo "请访问: https://github.com/new"
echo "仓库名称: ml_book"
echo "描述: 机器学习Python教程书籍 - 完整的课程内容和实践代码"
echo "设置为: Public (公开)"
echo "不要初始化 README, .gitignore 或 license (因为我们已经有了)"
echo ""

echo "步骤2: 获取你的 GitHub 用户名"
read -p "请输入你的 GitHub 用户名: " GITHUB_USERNAME

echo ""
echo "步骤3: 添加远程仓库并推送"
echo "执行以下命令:"
echo ""

# 显示要执行的命令
echo "git remote add origin https://github.com/$GITHUB_USERNAME/ml_book.git"
echo "git branch -M main"
echo "git push -u origin main"
echo ""

echo "是否现在执行这些命令? (y/n)"
read -p "请选择: " EXECUTE

if [ "$EXECUTE" = "y" ] || [ "$EXECUTE" = "Y" ]; then
    echo ""
    echo "正在添加远程仓库..."
    git remote add origin https://github.com/$GITHUB_USERNAME/ml_book.git
    
    echo "设置主分支..."
    git branch -M main
    
    echo "推送到远程仓库..."
    git push -u origin main
    
    echo ""
    echo "✅ 完成! 你的机器学习教程书籍已经推送到:"
    echo "https://github.com/$GITHUB_USERNAME/ml_book"
    echo ""
    echo "你可以在 GitHub Pages 中启用网站发布:"
    echo "1. 进入仓库设置 -> Pages"
    echo "2. Source 选择 'Deploy from a branch'"
    echo "3. Branch 选择 'main' 和 '/docs' 文件夹"
    echo "4. 保存后你的书籍将在 https://$GITHUB_USERNAME.github.io/ml_book 可访问"
else
    echo ""
    echo "你可以稍后手动执行这些命令。"
fi

echo ""
echo "=== 脚本完成 ===" 