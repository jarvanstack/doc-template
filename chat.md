## chat

### 安装依赖的 shell 脚本

Check node is installed, if not install it, show me the shell script.


```bash
#!/bin/bash
#!/bin/bash

# Check if Node.js is installed
if ! command -v node &> /dev/null
then
    # Install Node.js
    curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# Print Node.js version
node -v
```

print the version of node.js

```bash
node -v
```

### Download binary application, and move it to /usr/local/bin

Download binary from github.com/dengjiawen8955/gitbook-summary/bin/gitbook-summary and move it to /usr/local/bin

show me the shell script.

```bash
#!/bin/bash

