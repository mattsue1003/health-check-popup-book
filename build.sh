#!/bin/sh
# index.html 是 Artifact 用的原始檔（無 doctype）；這裡包上 doctype 產生本機預覽與 GitHub Pages 版
cd "$(dirname "$0")" && mkdir -p docs && { cat <<'H'
<!doctype html><html lang="zh-Hant"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><meta name="description" content="成人健康檢查社區共讀簡報：六頁立體書，點立牌看重點卡。"><style>body{margin:0;font:14px system-ui}img{max-width:100%}[hidden]{display:none!important}</style></head><body>
H
cat index.html; } > preview.html && cp preview.html docs/index.html
