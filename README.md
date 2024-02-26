# Lark2Markdown

This is a tool for converting [Lark](https://www.larksuite.com/en_us) documents to Markdown files, implemented using Go language.

## Motivation

LLM (RAG - Retrieval-Augmented Generation) uses external knowledges to generate answers. One critical source of external knowledge is the document. Markdown documents keep the most original and accurate information when loaded into Vector Database, which will be later used for relevant information retrieval and fed into LLM.

Similar as Google doc, Microsoft Word, [Lark](https://www.larksuite.com/en_us) document is also a popular word processor. So this converter is developed.

## How to use

It is always recommended to use the command-line version

<details>
  <summary>command-line version</summary>

   ```bash
   $ lark2md -h
   NAME:
     lark2md - Convert a lark document to markdown file

   USAGE:
     lark2md [global options] command [command options] [arguments...]

   COMMANDS:
     config        Read config file or set field(s) if provided
     download, dl  Convert a lark document to markdown file
     help, h       Shows a list of commands or help for one command

   GLOBAL OPTIONS:
     --help, -h     show help (default: false)
     --version, -v  print the version (default: false)

   $ lark2md config -h
   NAME:
      lark2md config - Read config file or set field(s) if provided

   USAGE:
      lark2md config [command options] [arguments...]

   OPTIONS:
      --appId value      Set app id for the OPEN API
      --appSecret value  Set app secret for the OPEN API
      --help, -h         show help (default: false)
   ```

   **Convert to Markdown**
   example:

   ```bash
   $ lark2md dl "https://domain.lark.com/docx/docxtoken"
   ```
</details>