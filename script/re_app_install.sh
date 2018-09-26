# 进入 iCloud 中的 AppList 文件夹
cd  ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/AppList

# 安装 Homebrew 和 MAS
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install mas

# 生成 MAS_AppList 安装命令
cat AppList/MAS_AppList | sed "s/(.*)//g" | sed -Ee 's/([0-9]+) (.+)/mas install \1 #\2/g' > ~/Desktop/AppInstaller

# 生成 Brew_AppList 安装命令
echo "\nbrew install $(cat AppList/Brew_AppList | tr '\n' ' ')" >> ~/Desktop/AppInstaller

# 生成 BrewCask_AppList 安装命令
echo "\nbrew cask install $(cat AppList/BrewCask_AppList | tr '\n' ' ')" >> ~/Desktop/AppInstaller

# 开始安装
chmod +x ~/Desktop/AppInstaller
~/Desktop/AppInstaller
