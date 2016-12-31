# Ubuntu template files

An extension to the "New Document" menu (*as minimal as possible*).

All templates:
<!-- TREE START -->
```
Templates/
├── Documents
│   ├── Markdown.md
│   ├── Presentation.odp
│   ├── Spreadsheet.ods
│   └── Text Document.odt
├── Script
│   ├── Bash script.bash
│   ├── Makefile
│   ├── Python script.py
│   └── Unix script.sh
├── Source
│   ├── C Header.h
│   ├── C++ Header.hpp
│   ├── C Source.c
│   ├── C++ Source.cpp
│   ├── Java.java
│   ├── JavaScript.js
│   ├── Python.py
│   └── Template
│       ├── C++ Class Header.hpp
│       ├── C++ Class Source.cpp
│       ├── C Main.c
│       └── C++ Main.cpp
└── Web
    ├── CSS.css
    ├── HTML.html
    └── JavaScript.js
```
<!-- TREE END -->

## Usage

Right-click → `New Document` → Choose one of the templates

![screenshot from 2016-12-31 15-12-57](https://cloud.githubusercontent.com/assets/6997990/21577686/bd6c1970-cf6c-11e6-8370-e7843c7530f6.png)

## Install

In order to install simply run the following commands in a terminal
```
git clone https://github.com/MaanooAk/ubuntu-template-files
cd ubuntu-template-files
make

```

**Warning:** You need to **restart** Ubuntu to be able to see all installed templates.

### Manually

Copy the contains of the `Templates` folder to the `Home` → `Templates` folder (`~/Templates`).

## Suggestions

Raise a [new issue](https://github.com/MaanooAk/ubuntu-template-files/issues/new) for any missing templates.
