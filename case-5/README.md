
```
$ eslint .

/home/ryu/dev/test/case-5/index.ts
  6:7   error  'unused' is assigned a value but never used  @typescript-eslint/no-unused-vars
  9:24  error  Unexpected any. Specify a different type     @typescript-eslint/no-explicit-any

✖ 2 problems (2 errors, 0 warnings)
```


# flake.nix.old の場合
node_modules のシンボリックリンクが無いので ESLint がプラグインを見つけられない

```
$ eslint .

Oops! Something went wrong! :(

ESLint: 9.34.0

Error [ERR_MODULE_NOT_FOUND]: Cannot find package '@eslint/js' imported from /home/ryu/dev/test/case-5/eslint.config.mjs
    at Object.getPackageJSONURL (node:internal/modules/package_json_reader:268:9)
    at packageResolve (node:internal/modules/esm/resolve:768:81)
    at moduleResolve (node:internal/modules/esm/resolve:858:18)
    at defaultResolve (node:internal/modules/esm/resolve:990:11)
    at #cachedDefaultResolve (node:internal/modules/esm/loader:735:20)
    at ModuleLoader.resolve (node:internal/modules/esm/loader:712:38)
    at ModuleLoader.getModuleJobForImport (node:internal/modules/esm/loader:310:38)
    at #link (node:internal/modules/esm/module_job:208:49)
```