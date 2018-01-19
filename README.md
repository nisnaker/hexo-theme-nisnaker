hexo-theme-nisnaker
===================

一款简洁的hexo主题。

### 外观

宽屏 [1000px, +∞]
![](https://cloud.githubusercontent.com/assets/12491401/8423344/2083e7ae-1f1a-11e5-881b-907c90c4e591.png)

中屏 (768px, 1000px)
![](https://cloud.githubusercontent.com/assets/12491401/8423349/500697ec-1f1a-11e5-99b5-2d5bf0ef1897.png)

窄屏(手机) (0, 768px]
![](https://cloud.githubusercontent.com/assets/12491401/8423362/6c6ebb80-1f1a-11e5-8a82-bb2628aaa47c.png)

### 配置

hexo的主config配置文件 hexo/_config.yml：

```yaml
# 邮箱
email: nisnaker@gmail.com
# 语言，目前就一种。。。
language: zh-cn

# 归档页面分页
archive_generator:
  per_page: 100

# 标签页面分页
tag_generator:
  per_page: 100
# 分类页面分页
category_generator: 
  per_page: 100

# 使用主题
theme: nisnaker

# 多说id
duoshuo_shortname: ls-la
```

主题配置文件 nisnaker/_config.yml：

```yaml
# 菜单
menu:
  home: /
  archives: /archives

# Fancybox
fancybox: true

#qrcode 文章页面显示url二维码
qrcode: true

# 请无视
vendors: vendors
css: css
js: js
img: img

# google认证字符
google_site_verification:

# google统计id
google_analytics:

```
