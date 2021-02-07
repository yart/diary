# Project diary

## Description

A tiny utility that helps to create and edit files located at the specified directory from any place of a file 
system. Used Ruby as programming language and Vim as base editor.

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

```bash
diary edit 202102072327.md
```

It opens Vim to edit file named `/path/to/directory/with/your/records/202102072327.md`.

```bash
diary edit
```

It shows list of files placed in records directory and opens file you choose with Vim.

```bash
diary
```

It shows the mode menu where you could choose mode you want.
