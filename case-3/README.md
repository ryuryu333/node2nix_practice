リンターテスト。
この文章は。がないのでエラーになる

```
$ which textlint
/nix/store/9bjb0l08n2rklnv1hdmy8is65jd4m8x4-node-dependencies-node-textlint-env-1.0.0/bin/textlint

$ textlint --preset ja-technical-writing README.md

/home/ryu/dev/test/case-2/README.md
  2:17  error  文末が"。"で終わっていません。  ja-technical-writing/ja-no-mixed-period

✖ 1 problem (1 error, 0 warnings, 0 infos)
```
