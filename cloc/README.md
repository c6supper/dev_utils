# Count Lines of Code

- [Count Lines of Code](#count-lines-of-code)
  - [Installation](#installation)
  - [Command Line Tool](#command-line-tool)
  - [Configuration Files](#configuration-files)
  - [How to](#how-to)


## Installation

```bash

# install perl if needed

# to support multi-cores on old OS
cpan Parallel::ForkManager
```

## Command Line Tool  

- [cloc](https://github.com/AlDanial/cloc)

## Configuration Files

- [ic_vendor](options/ic_vendor/options.txt)
- [vendor](options/vendor/options.txt)
- [third_party](options/third_party/options.txt)

## How to

```bash
# 1. checkout a fresh project, please be noted, the HMI should be checkout independently

# for vendor , nobo etc.
./bin/cloc {project_source_path} --config options/vendor/options.txt --processes=`grep -c ^processor /proc/cpuinfo`
./bin/cloc {HMI_source_path} --include-lang="Java,C/C++ Header,C,C++,Protocol Buffers,XML,Python,JSON,Rust,Bourne Shell,Markdown,make,CMake" --processes=`grep -c ^processor /proc/cpuinfo`

# for ic_vendor , qualcomm etc.
./bin/cloc {project_source_path} --config options/ic_vendor/options.txt --processes=`grep -c ^processor /proc/cpuinfo`

# for third_party , google etc.
./bin/cloc {project_source_path} --config options/third_party/options.txt --processes=`grep -c ^processor /proc/cpuinfo`
```
