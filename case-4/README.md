
```
$ eslint .

Oops! Something went wrong! :(

ESLint: 9.34.0

Error [ERR_MODULE_NOT_FOUND]: Cannot find package '@eslint/js' imported from /home/ryu/dev/test/case-4/eslint.config.mjs
    at Object.getPackageJSONURL (node:internal/modules/package_json_reader:268:9)
    at packageResolve (node:internal/modules/esm/resolve:768:81)
    at moduleResolve (node:internal/modules/esm/resolve:858:18)
    at defaultResolve (node:internal/modules/esm/resolve:990:11)
    at #cachedDefaultResolve (node:internal/modules/esm/loader:735:20)
    at ModuleLoader.resolve (node:internal/modules/esm/loader:712:38)
    at ModuleLoader.getModuleJobForImport (node:internal/modules/esm/loader:310:38)
    at #link (node:internal/modules/esm/module_job:208:49)
```
