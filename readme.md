**This ruby script is used to generate jekyll blog**   
- Generating with no given post title
```bash
ruby generate.rb
```
- Generating with given post title
```bash
ruby generate.rb awesome post name
```

1. It will write a file name `YEAR-MONTH-DAY-POST-NAME.md` with given content
```
---
layout: post
title: "YOUR POST NAME"
date: "YYYY-MM-DD HH:MM:SS"
tag: etc
categories: etc
---
```
