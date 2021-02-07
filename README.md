# Project diary

## Description

A tiny utility that helps to run Vim from any directory with file generated at previously define place.

## How to install?

```bash
git clone https://git@github.com/yart/diary.git
cd diary
ruby install.rb
ln -s /path/to/directory/with/your/records records
```

## How to use?

From any place of your file system:

```bash
diary new
```

It opens Vim with file named `/path/to/directory/with/your/records/202102072327.md` or something like.
