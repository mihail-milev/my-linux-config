# What?

These are my personal Linux configurations, which I use on several machines and got tired of constantly having to manually copy & paste them across different machines.

# How?

```bash
git clone https://github.com/mihail-milev/my-linux-config.git
cd my-linux-config
find ./ -maxdepth 1 -not -name "*.md" -not -name ".git" -not -path "./" -exec cp -R {} ~/ \;
```

# License

MIT License, please consult LICENSE.md
