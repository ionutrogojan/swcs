# SWCS (Speedy Web Compiler Simplified)

SWC is the only standalone tool for compiling Typescript to JavaScript without requiring Node/npm on your system

What this bash script does for you, is to simplify the verbose line of arguments to a single command.

The original command would look something like this:
```sh
swc compile --config-file /path/to/config/file.swcrc /input/file_name.ts --out-file /output/file_name.js
```
It is very useful for when it comes to single file compilations and cases where specificity is required, but you can see how long it takes to write that for every single file in a project.

`SWCS` takes that task out of your hands and it automates the process to a simple command. It will read your entire project for Typescript files and it will compile to JavaScript files in place:
```sh
./swcs.sh -c
```

## Requirements and Usage

1. Get the SWC binary from [here](https://github.com/swc-project/swc/releases)
2. Open the `swcs.sh` file and update the `SWC_BIN` path to the download location of the SWC binary
3. Add `swcs.sh` as an environment path to be able to call it from anywhere:
```sh
export PATH="${PATH}:${HOME}/.swcs" # linux
```
4. Add a `config.swcrc` to the root directory of your project. See SWC [documentation](https://swc.rs/docs/configuration/swcrc) for more details
5. Open a terminal in the root directory of your project and run the compile command:
```sh
cd /path/to/project
./swcs.sh -c
```
6. Optionally, you can remove the `.sh` extension from the file and just run:
```sh
swcs -c
```

P.S.

Make sure to give the file execution permissions

Feel free to clone the repo and try the example