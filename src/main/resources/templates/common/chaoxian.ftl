<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="theme-color" content="#f1f7fe">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>Vditor - A markdown editor written in TypeScript.</title>
    <meta name="description"
          content="B3log 开源社区 markdown 编辑器，使用 TypeScript 编写。支持在线预览、表情插入、at 用户提示、HTML 转换等必要功能。"/>
    <meta property="og:description"
          content="B3log 开源社区 markdown 编辑器，使用 TypeScript 编写。支持在线预览、表情插入、at 用户提示、HTML 转换等必要功能。"/>
    <meta name="twitter:description" property="og:description" itemprop="description"
          content="B3log 开源社区 markdown 编辑器，使用 TypeScript 编写。支持在线预览、表情插入、at 用户提示、HTML 转换等必要功能。"/>
    <link rel="dns-prefetch" href="//cdn.jsdelivr.net/"/>
    <link rel="preconnect" href="https://cdn.jsdelivr.net">
    <link rel="icon" type="image/png" href="https://cdn.jsdelivr.net/npm/vditor/dist/images/logo.png"/>
    <link rel="apple-touch-icon" href="https://cdn.jsdelivr.net/npm/vditor/dist/images/logo.png">
    <link rel="shortcut icon" type="image/x-icon" href="https://cdn.jsdelivr.net/npm/vditor/dist/images/logo.png">
    <meta name="copyright" content="B3log"/>
    <meta http-equiv="Window-target" content="_top"/>
    <meta property="og:locale" content="zh-cmn-Hans"/>
    <meta property="og:title" content="Vditor - A markdown editor written in TypeScript."/>
    <meta property="og:site_name" content="Blog-vditor"/>
    <meta property="og:url" content="https://hacpai.com/tag/vditor"/>
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:domain" content="b3log.org"/>
    <meta name="twitter:title" property="og:title" itemprop="b3lig vditor"
          content="Vditor - A markdown editor written in TypeScript."/>
    <meta name="twitter:site" content="@B3logOS"/>
    <meta name="twitter:url" content="https://hacpai.com/tag/vditor"/>
    <meta property="og:image" content="https://cdn.jsdelivr.net/npm/vditor/dist/images/logo.png"/>
    <meta name="twitter:image" content="https://cdn.jsdelivr.net/npm/vditor/dist/images/logo.png"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/vditor@latest/dist/index.css"/>
    <script src="https://cdn.jsdelivr.net/npm/vditor@latest/dist/index.min.js"></script>
</head>
<body>
<h2><a href="https://hacpai.com/article/1549638745630?r=Vanessa" target="_blank">Doc</a></h2>
<h2>
    Vditor for preview
    <a href="static-preview.html?lang=zh_CN">中文</a>
    <a href="static-preview.html?lang=ko_KR">한글</a>
</h2>
<h2>
    Vditor for you
    <button onclick="vditor.setTheme('dark')">Dark</button>
    <button onclick="vditor.setTheme('light')">Light</button>
</h2>
<div id="vditor">
    <h1>Vditor</h1>
    <ul>
        <li>foo</li>
        <li>bar</li>
    </ul>
</div>
<script>
    const vditor = new Vditor('vditor', {
        debugger: true,
        typewriterMode: true,
        placeholder: 'placeholder',
        counter: 100,
        height: 500,
        preview: {
            markdown: {
                toc: true,
            },
        },
        hint: {
            emojiPath: 'https://cdn.jsdelivr.net/npm/vditor@1.8.3/dist/images/emoji',
            emojiTail: '<a href="https://hacpai.com/settings/function" target="_blank">设置常用表情</a>',
            emoji: {
                'sd': '💔',
                'j': 'https://unpkg.com/vditor@1.3.1/dist/images/emoji/j.png',
            },
        },
        tab: '\t',
        upload: {
            accept: 'image/*,.mp3, .wav, .rar',
            token: 'test',
            url: '/api/upload/editor',
            linkToImgUrl: '/api/upload/fetch',
            filename (name) {
                return name.replace(/[^(a-zA-Z0-9\u4e00-\u9fa5\.)]/g, '').
                replace(/[\?\\/:|<>\*\[\]\(\)\$%\{\}@~]/g, '').
                replace('/\\s/g', '')
            },
        },
    })
</script>
</body>
</html>
