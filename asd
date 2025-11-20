[33mtag v1.0[m
Tagger: selva <selvabharathi98765@gmail.com>
Date:   Sat Nov 15 14:59:22 2025 +0530

 Day 1 and Day 2 task

[33mcommit 91a0b88370866812ded9ab6479e91a21f313c702[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;33mtag: [m[1;33mv1.0[m[33m, [m[1;31morigin/main[m[33m)[m
Author: selva <selvabharathi98765@gmail.com>
Date:   Sat Nov 15 14:54:10 2025 +0530

    Day1 and Day2 Task

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..a547bf3[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,24 @@[m
[32m+[m[32m# Logs[m
[32m+[m[32mlogs[m
[32m+[m[32m*.log[m
[32m+[m[32mnpm-debug.log*[m
[32m+[m[32myarn-debug.log*[m
[32m+[m[32myarn-error.log*[m
[32m+[m[32mpnpm-debug.log*[m
[32m+[m[32mlerna-debug.log*[m
[32m+[m
[32m+[m[32mnode_modules[m
[32m+[m[32mdist[m
[32m+[m[32mdist-ssr[m
[32m+[m[32m*.local[m
[32m+[m
[32m+[m[32m# Editor directories and files[m
[32m+[m[32m.vscode/*[m
[32m+[m[32m!.vscode/extensions.json[m
[32m+[m[32m.idea[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m*.suo[m
[32m+[m[32m*.ntvs*[m
[32m+[m[32m*.njsproj[m
[32m+[m[32m*.sln[m
[32m+[m[32m*.sw?[m
[1mdiff --git a/.prettierrc b/.prettierrc[m
[1mnew file mode 100644[m
[1mindex 0000000..7681dd7[m
[1m--- /dev/null[m
[1m+++ b/.prettierrc[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m{[m
[32m+[m[32m    "singleQuote":true,[m
[32m+[m[32m    "semi":false,[m
[32m+[m[32m    "trailingComma":"none",[m
[32m+[m[32m    "printWidth":80[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..18bc70e[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m# React + Vite[m
[32m+[m
[32m+[m[32mThis template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.[m
[32m+[m
[32m+[m[32mCurrently, two official plugins are available:[m
[32m+[m
[32m+[m[32m- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) (or [oxc](https://oxc.rs) when used in [rolldown-vite](https://vite.dev/guide/rolldown)) for Fast Refresh[m
[32m+[m[32m- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh[m
[32m+[m
[32m+[m[32m## React Compiler[m
[32m+[m
[32m+[m[32mThe React Compiler is not enabled on this template because of its impact on dev & build performances. To add it, see [this documentation](https://react.dev/learn/react-compiler/installation).[m
[32m+[m
[32m+[m[32m## Expanding the ESLint configuration[m
[32m+[m
[32m+[m[32mIf you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.[m
[1mdiff --git a/eslint.config.js b/eslint.config.js[m
[1mnew file mode 100644[m
[1mindex 0000000..4fa125d[m
[1m--- /dev/null[m
[1m+++ b/eslint.config.js[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32mimport js from '@eslint/js'[m
[32m+[m[32mimport globals from 'globals'[m
[32m+[m[32mimport reactHooks from 'eslint-plugin-react-hooks'[m
[32m+[m[32mimport reactRefresh from 'eslint-plugin-react-refresh'[m
[32m+[m[32mimport { defineConfig, globalIgnores } from 'eslint/config'[m
[32m+[m
[32m+[m[32mexport default defineConfig([[m
[32m+[m[32m  globalIgnores(['dist']),[m
[32m+[m[32m  {[m
[32m+[m[32m    files: ['**/*.{js,jsx}'],[m
[32m+[m[32m    extends: [[m
[32m+[m[32m      js.configs.recommended,[m
[32m+[m[32m      reactHooks.configs.flat.recommended,[m
[32m+[m[32m      reactRefresh.configs.vite,[m
[32m+[m[32m    ],[m
[32m+[m[32m    languageOptions: {[m
[32m+[m[32m      ecmaVersion: 2020,[m
[32m+[m[32m      globals: globals.browser,[m
[32m+[m[32m      parserOptions: {[m
[32m+[m[32m        ecmaVersion: 'latest',[m
[32m+[m[32m        ecmaFeatures: { jsx: true },[m
[32m+[m[32m        sourceType: 'module',[m
[32m+[m[32m      },[m
[32m+[m[32m    },[m
[32m+[m[32m    rules: {[m
[32m+[m[32m      'no-unused-vars': ['error', { varsIgnorePattern: '^[A-Z_]' }],[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m])[m
[1mdiff --git a/index.html b/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..64695b5[m
[1m--- /dev/null[m
[1m+++ b/index.html[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <meta charset="UTF-8" />[m
[32m+[m[32m    <link rel="icon" type="image/svg+xml" href="/vite.svg" />[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0" />[m
[32m+[m[32m    <title>learning</title>[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body>[m
[32m+[m[32m    <div id="root"></div>[m
[32m+[m[32m    <script type="module" src="/src/main.jsx"></script>[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..befc584[m
[1m--- /dev/null[m
[1m+++ b/package-lock.json[m
[36m@@ -0,0 +1,2668 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "learning",[m
[32m+[m[32m  "version": "0.0.0",[m
[32m+[m[32m  "lockfileVersion": 3,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "packages": {[m
[32m+[m[32m    "": {[m
[32m+[m[32m      "name": "learning",[m
[32m+[m[32m      "version": "0.0.0",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "react": "^19.2.0",[m
[32m+[m[32m        "react-dom": "^19.2.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "devDependencies": {[m
[32m+[m[32m        "@eslint/js": "^9.39.1",[m
[32m+[m[32m        "@types/react": "^19.2.2",[m
[32m+[m[32m        "@types/react-dom": "^19.2.2",[m
[32m+[m[32m        "@vitejs/plugin-react": "^5.1.1",[m
[32m+[m[32m        "eslint": "^9.39.1",[m
[32m+[m[32m        "eslint-plugin-react-hooks": "^7.0.1",[m
[32m+[m[32m        "eslint-plugin-react-refresh": "^0.4.24",[m
[32m+[m[32m        "globals": "^16.5.0",[m
[32m+[m[32m        "vite": "npm:rolldown-vite@7.2.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/code-frame": {[m
[32m+[m[32m      "version": "7.27.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.27.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-cjQ7ZlQ0Mv3b47hABuTevyTuYN4i+loJKGeV9flcCgIK37cCXRh+L1bd3iBHlynerhQ7BhCkn2BPbQUL+rGqFg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@babel/helper-validator-identifier": "^7.27.1",[m
[32m+[m[32m        "js-tokens": "^4.0.0",[m
[32m+[m[32m        "picocolors": "^1.1.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/compat-data": {[m
[32m+[m[32m      "version": "7.28.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/compat-data/-/compat-data-7.28.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-6uFXyCayocRbqhZOB+6XcuZbkMNimwfVGFji8CTZnCzOHVGvDqzvitu1re2AU5LROliz7eQPhB8CpAMvnx9EjA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/core": {[m
[32m+[m[32m      "version": "7.28.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/core/-/core-7.28.5.tgz",[m
[32m+[m[32m      "integrity": "s