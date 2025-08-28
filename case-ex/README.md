リンターテスト。
この文章は。がないのでエラーになる

flake.old.nix を使うと動かない。

```
$ which textlint
/nix/store/iwq5dqn4wd71d70m8mnqj68p4pghbajc-textlint-15.2.1/bin/textlint

$ textlint --preset ja-technical-writing README.md
Error
Failed to load packages

Stack trace
Error: Failed to load packages
    at loadCliDescriptor (/nix/store/iwq5dqn4wd71d70m8mnqj68p4pghbajc-textlint-15.2.1/lib/node_modules/textlint/lib/src/loader/CliLoader.js:44:15)
    at async loadDescriptor (/nix/store/iwq5dqn4wd71d70m8mnqj68p4pghbajc-textlint-15.2.1/lib/node_modules/textlint/lib/src/cli.js:25:27)
    at async Object.executeWithOptions (/nix/store/iwq5dqn4wd71d70m8mnqj68p4pghbajc-textlint-15.2.1/lib/node_modules/textlint/lib/src/cli.js:133:28)
```


flake.nix を使うと動く。

```
$ which textlint
/nix/store/gh7gzibdzrk3nia2hpwcdx9v0pfr514n-textlint-with-presets/bin/textlint

$ textlint --preset ja-technical-writing README.md

/home/ryu/dev/test/case-ex/README.md
  2:17  error  文末が"。"で終わっていません。  ja-technical-writing/ja-no-mixed-period

✖ 1 problem (1 error, 0 warnings, 0 infos)
```
