# C_Windows_Scripts

Contains batch scripts used to compile a workspace with a premake configuration.

### Setup

- Make sure you have a version of Visual Studio Community installed.
- Add the repository as a submodule to your premake project.
- Call the `setup.bat` script to download premake.
- Call the `make.bat` script to build, clean, rebuild or run a project.

### Usage

`make.bat <method> <config> <target>`
- `method` -> can be `build`, `clean`, `rebuild` or `run`
- `config` -> configuration specified in the premake5.lua file (usually Debug, Release etc.)
- `target` -> target to build or name of the project

### Notes

The run method assumes the output path of executables is `_out/bin/<project-name>/<config>/<project-name>.exe`.
