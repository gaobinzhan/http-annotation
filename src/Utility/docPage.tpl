<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>EasySwoole Api 文档</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="description" content="Description"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <style>
        @charset "UTF-8";
        html,
        body,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        blockquote {
            margin: 0;
            padding: 0;
            font-weight: normal;
            -webkit-font-smoothing: antialiased;
        }

        /* 设置滚动条的样式 */
        ::-webkit-scrollbar {
            width: 6px;
        }

        /* 外层轨道 */
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset006pxrgba(255, 0, 0, 0.3);
            background: rgba(0, 0, 0, 0.1);
        }

        /* 滚动条滑块 */
        ::-webkit-scrollbar-thumb {
            border-radius: 4px;
            background: rgba(0, 0, 0, 0.2);
            -webkit-box-shadow: inset006pxrgba(0, 0, 0, 0.5);
        }

        ::-webkit-scrollbar-thumb:window-inactive {
            background: rgba(0, 0, 0, 0.2);
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", SimSun, sans-serif;
            font-size: 13px;
            line-height: 25px;
            color: #393838;
            position: relative;
        }

        table {
            margin: 10px 0 15px 0;
            border-collapse: collapse;
        }

        td,
        th {
            border: 1px solid #ddd;
            padding: 3px 10px;
        }

        th {
            padding: 5px 10px;
        }

        a, a:link, a:visited {
            color: #34495e;
            text-decoration: none;
        }

        a:hover, a:focus {
            color: #59d69d;
            text-decoration: none;
        }

        a img {
            border: none;
        }

        p {
            padding-left: 10px;
            margin-bottom: 9px;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            color: #404040;
            line-height: 36px;
        }

        h1 {
            color: #2c3e50;
            font-weight: 600;
            margin-bottom: 16px;
            font-size: 32px;
            padding-bottom: 16px;
            border-bottom: 1px solid #ddd;
            line-height: 50px;
        }

        h2 {
            font-size: 28px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        h3 {
            clear: both;
            font-weight: 400;
            margin-top: 20px;
            margin-bottom: 20px;
            border-left: 3px solid #59d69d;
            padding-left: 8px;
            font-size: 18px;
        }

        h4 {
            font-size: 16px;
        }

        h5 {
            font-size: 14px;
        }

        h6 {
            font-size: 13px;
        }

        hr {
            margin: 0 0 19px;
            border: 0;
            border-bottom: 1px solid #ccc;
        }

        blockquote {
            padding: 13px 13px 21px 15px;
            margin-bottom: 18px;
            font-family: georgia, serif;
            font-style: italic;
        }

        blockquote:before {
            font-size: 40px;
            margin-left: -10px;
            font-family: georgia, serif;
            color: #eee;
        }

        blockquote p {
            font-size: 14px;
            font-weight: 300;
            line-height: 18px;
            margin-bottom: 0;
            font-style: italic;
        }

        code,
        pre {
            font-family: Monaco, Andale Mono, Courier New, monospace;
        }

        code {
            background-color: #fee9cc;
            color: rgba(0, 0, 0, 0.75);
            padding: 1px 3px;
            font-size: 12px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }

        pre {
            display: block;
            padding: 14px;
            margin: 0 0 18px;
            line-height: 16px;
            font-size: 11px;
            border: 1px solid #d9d9d9;
            white-space: pre-wrap;
            word-wrap: break-word;
            background: #f6f6f6;
        }

        pre code {
            background-color: #f6f6f6;
            color: #737373;
            font-size: 11px;
            padding: 0;
        }

        sup {
            font-size: 0.83em;
            vertical-align: super;
            line-height: 0;
        }

        * {
            -webkit-print-color-adjust: exact;
        }

        @media print {
            body,
            code,
            pre code,
            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                color: black;
            }

            table,
            pre {
                page-break-inside: avoid;
            }
        }

        html,
        body {
            height: 100%;
        }

        .table-of-contents {
            position: fixed;
            top: 61px;
            left: 0;
            bottom: 0;
            overflow-x: hidden;
            overflow-y: auto;
            width: 260px;
        }

        .table-of-contents > ul > li > a {
            font-size: 20px;
            margin-bottom: 16px;
            margin-top: 16px;
        }

        .table-of-contents ul {
            overflow: auto;
            margin: 0px;
            height: 100%;
            padding: 0px 0px;
            box-sizing: border-box;
            list-style-type: none;
        }

        .table-of-contents ul li {
            padding-left: 20px;
        }

        .table-of-contents a {
            padding: 2px 0px;
            display: block;
            text-decoration: none;
        }

        .content-right {
            max-width: 700px;
            margin-left: 290px;
            padding-left: 70px;
            flex-grow: 1;
        }

        .content-right h2:target {
            padding-top: 80px;
        }

        body > p {
            margin-left: 30px;
        }

        body > table {
            margin-left: 30px;
        }

        body > pre {
            margin-left: 30px;
        }

        .curProject {
            position: fixed;
            top: 20px;
            font-size: 25px;
            color: black;
            margin-left: -240px;
            width: 240px;
            padding: 5px;
            line-height: 25px;
            box-sizing: border-box;
        }

        .es-doc {
            margin-top: 56px;
            padding-top: 24px;
            display: flex;
        }

        .curproject-name {
            font-size: 42px;
        }

        .m-header {
            background: #32363a;
            height: 56px;
            line-height: 56px;
            padding-left: 60px;
            display: flex;
            align-items: center;
            position: fixed;
            z-index: 9;
            top: 0;
            left: 0;
            right: 0;
        }

        .m-header .title {
            font-size: 22px;
            color: #fff;
            font-weight: normal;
            -webkit-font-smoothing: antialiased;
            margin: 0;
            margin-left: 16px;
            padding: 0;
            line-height: 56px;
            border: none;
        }

        .m-header .nav {
            color: #fff;
            font-size: 16px;
            position: absolute;
            right: 32px;
            top: 0;
        }

        .m-header .nav a {
            color: #fff;
            margin-left: 16px;
            padding: 8px;
            transition: color .2s;
        }

        .m-header .nav a:hover {
            color: #59d69d;
        }

        .m-footer {
            border-top: 1px solid #ddd;
            padding-top: 16px;
            padding-bottom: 16px;
        }

        h4.response-params,
        h4.api-fail-example,
        h4.api-success-example {
            clear: both;
            font-weight: 200;
            margin-top: 20px;
            margin-bottom: 20px;
            border-left: 3px solid #FFB800;
            padding-left: 8px;
            font-size: 16px;
        }

        /*# sourceMappingURL=defaultTheme.css.map */
    </style>
</head>
<body>
<div class="m-header">
    <!--<a href="#" style="display: inherit;">EasySwoole-logo</a>-->
    <a href="#"><h1 class="title">EasySwoole API 接口文档</h1></a>
    <div class="nav">
        <a href="https://www.easyswoole.com">EasySwoole</a>
    </div>
</div>
<div class="es-doc">
    <div class="table-of-contents">
    </div>
    <div id="right" class="content-right">
        <h1 class="curproject-name"> EasySwoole 开放 api </h1>
        <p></p>
        {$rawMd}
        <footer class="m-footer">
            <p>Build by <a href="https://www.easyswoole.com/">EasySwoole</a></p>
        </footer>
    </div>
</div>
<script>
    window.onload = function () {
        // 处理一级导航
        var newUl = document.createElement('ul');
        var h1Nodes = document.getElementsByTagName('h1');
        for (var i = 0; i < h1Nodes.length; i++) {
            if (h1Nodes[i].className === 'group-title') {
                var h1Content = h1Nodes[i].innerHTML;
                var tempLi = document.createElement('li');
                var aNode = document.createElement('a');
                var text = document.createTextNode(h1Content);
                var sUlNode = document.createElement('ul')
                aNode.setAttribute('href', '#' + h1Content);
                aNode.appendChild(text);
                tempLi.appendChild(aNode);
                sUlNode.setAttribute('class', h1Content + '-ul');
                tempLi.appendChild(sUlNode);
                newUl.appendChild(tempLi)
            }
        }
        document.getElementsByClassName("table-of-contents")[0].appendChild(newUl);

        // 处理二级导航
        var h2Nodes = document.getElementsByTagName('h2');
        for (var j = 0; j < h2Nodes.length; j++) {
            var h2Content = h2Nodes[j].innerHTML;
            var sTextNode = '';
            var sClassName = h2Nodes[j].className;
            var classArr = sClassName.split('api-method ');
            if (h2Content) {
                var sLiNode = document.createElement('li');
                var sANode = document.createElement('a');
                sANode.setAttribute('href', '#' + h2Nodes[j].id);
                var supPosition = h2Content.indexOf('sup');
                if (supPosition >= 0) {
                    // 属于废弃
                    var sSupNode = document.createElement('sup');
                    sSupNode.setAttribute('class', 'deprecated');
                    sSupNode.innerHTML = '已废弃';
                    sTextNode = document.createTextNode(h2Content.substr(0, supPosition - 1));
                    sANode.appendChild(sTextNode);
                    sANode.appendChild(sSupNode);
                } else {
                    sTextNode = document.createTextNode(h2Content);
                    sANode.appendChild(sTextNode);
                }
                sLiNode.appendChild(sANode);
                document.getElementsByClassName(classArr[1] + '-ul')[0].appendChild(sLiNode);
            }
        }
    }
</script>
</body>
</html>