# Fix to the error when using a neovim distro in termux
Error:
```
lua-language-server failed to install
stylua failed to install
```

This script aims to fix this issue by simply adding a
soft link to the actual binaries of lua-language-server
and stylua provided by termux's apt/pkg.

## Usage:
Make sure to install the `lua-language-server` and `stylua`
from pkg

`pkg update && pkg upgrade`

Then:

`pkg install lua-language-server stylua`

Then:
You can either run the fix.sh file or copy and paste the commands line by line

the script itself is very simple. It's less than 20 lines.
It does the following things for both the packages:

- Make the directory where it tries to find the binaries
- Add a soft link there to the actual binaries
- Add a wrapper file
- Make the file executable
