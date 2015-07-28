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
title: "Backspace issue with using google document by conkeror"
date: 2014-03-23 15:55:37
tag: Conkeror, Google Document
categories: Conkeror
---
```

