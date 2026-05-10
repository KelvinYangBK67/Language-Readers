# Readers

多語言分級閱讀材料與詞彙讀本專案，包含英語、德語、印地語、日語、拉丁語、梵語、西夏語、藏語等 reader 的 LaTeX 原始檔、詞表資料和可分發 PDF。

This repository contains multilingual graded readers and vocabulary-builder booklets for English, German, Hindi, Japanese, Latin, Sanskrit, Tangut, Tibetan, and related language-study materials. It includes LaTeX sources, vocabulary data, and distributable PDFs.

## 內容 / Contents

- `*_reader/`: 各語言讀本的 LaTeX 原始檔、詞表資料與本地建置檔案。
- `reader_preamble.tex`: 各讀本共用的 LaTeX 巨集與排版設定。
- `readers/`: 彙總後的 PDF 成品。
- `copy_readers.bat`: 將各 `*_reader/main.pdf` 複製到 `readers/` 的 Windows 腳本。

## 聲明 / Notes

除明確另有說明的文本外，本專案中的文章均由 ChatGPT 撰寫。

Unless explicitly noted otherwise, all reading passages in this project were written by ChatGPT.

本專案的 LaTeX 檔案使用 IMPE 模板撰寫。

The LaTeX files in this project are written with the IMPE template.

## 建置 / Build

在某個讀本目錄中使用 XeLaTeX 建置：

```powershell
cd english_reader
xelatex main.tex
```

To build an individual reader, run XeLaTeX inside that reader directory:

```powershell
cd english_reader
xelatex main.tex
```

建置完成後，可在倉庫根目錄執行：

```powershell
.\copy_readers.bat
```

After building the individual readers, run `copy_readers.bat` from the repository root to collect PDFs into `readers/`.

## 授權 / License

本專案採用 Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License（CC BY-NC-SA 4.0）授權。詳見 [LICENSE](LICENSE)。

This project is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0). See [LICENSE](LICENSE).
