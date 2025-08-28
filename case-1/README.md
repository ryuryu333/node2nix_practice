リンターテスト。
この文章は。がないのでエラーになる

```
$ which textlint
/nix/store/pl8svkxf7c7gyb7ba7wqnb1w0zp4vmvj-textlint-15.2.2/bin/textlint

$ textlint --preset ja-technical-writing README.md
Error
Failed to load packages

Stack trace
Error: Failed to load packages
    at loadCliDescriptor (/nix/store/pl8svkxf7c7gyb7ba7wqnb1w0zp4vmvj-textlint-15.2.2/lib/node_modules/textlint/lib/src/loader/CliLoader.js:44:15)
    at async loadDescriptor (/nix/store/pl8svkxf7c7gyb7ba7wqnb1w0zp4vmvj-textlint-15.2.2/lib/node_modules/textlint/lib/src/cli.js:25:27)
```
