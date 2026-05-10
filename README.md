# Readers

多语言分级阅读材料与词汇读本项目，包含英语、德语、印地语、日语、拉丁语、梵语、西夏语、藏语等 reader 的 LaTeX 源文件、词表数据和可分发 PDF。

This repository contains multilingual graded readers and vocabulary-builder booklets for English, German, Hindi, Japanese, Latin, Sanskrit, Tangut, Tibetan, and related language-study materials. It includes LaTeX sources, vocabulary data, and distributable PDFs.

## 内容 / Contents

- `*_reader/`: 各语言读本的 LaTeX 源文件、词表数据与本地构建文件。
- `*_reader/generated_vocab/`: 编译时生成的词表片段输出目录。
- `reader_preamble.tex`: 各读本共享的 LaTeX 宏与排版设置。
- `readers/`: 汇总后的 PDF 成品。
- `copy_readers.bat`: 将各 `*_reader/main.pdf` 复制到 `readers/` 的 Windows 脚本。

## 构建 / Build

在某个读本目录中使用 XeLaTeX 构建：

```powershell
cd english_reader
xelatex main.tex
```

To build an individual reader, run XeLaTeX inside that reader directory:

```powershell
cd english_reader
xelatex main.tex
```

构建完成后，可在仓库根目录运行：

```powershell
.\copy_readers.bat
```

After building the individual readers, run `copy_readers.bat` from the repository root to collect PDFs into `readers/`.

## 许可 / License

本项目采用 Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License（CC BY-NC-SA 4.0）授权。详见 [LICENSE](LICENSE)。

This project is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0). See [LICENSE](LICENSE).
