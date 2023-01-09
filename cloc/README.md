# Count Lines of Code

- [Count Lines of Code](#count-lines-of-code)
  - [Installation](#installation)
  - [Command Line Tool](#command-line-tool)
  - [Configuration Files](#configuration-files)
  - [How to](#how-to)


## Installation

```bash
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
# for vendor , nobo etc.
./bin/cloc ../../ --config options/vendor/options.txt --processes=`grep -c ^processor /proc/cpuinfo`

# for ic_vendor , qualcomm etc.
./bin/cloc ../../ --config options/ic_vendor/options.txt --processes=`grep -c ^processor /proc/cpuinfo`

# for third_party , qualcomm etc.
./bin/cloc ../../ --config options/third_party/options.txt --processes=`grep -c ^processor /proc/cpuinfo`
```
