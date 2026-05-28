# dotfiles

## Add a new managed file

### File

#### 1. dotfiles リポジトリへコピー
```bash
cp ~/.xxx ~/dev/dotfiles/.xxx
```

#### 2. 元ファイルをバックアップ
```bash
mv ~/.xxx ~/.xxx.backup
```

#### 3. シンボリックリンクを作成
```bash
ln -s ~/dev/dotfiles/.xxx ~/.xxx
```

#### 4. リンク確認
```bash
ls -l ~/.xxx
```

### Directory under .config

#### 1. dotfiles リポジトリへコピー
```bash
cp -R ~/.config/xxx ~/dev/dotfiles/.config/
```

#### 2. 元ディレクトリをバックアップ
```bash
mv ~/.config/xxx ~/.config/xxx.backup
```

#### 3. シンボリックリンクを作成
```bash
ln -s ~/dev/dotfiles/.config/xxx ~/.config/xxx
```

#### 4. リンク確認
```bash
ls -ld ~/.config/xxx
```

If `-> /Users/.../dev/dotfiles/...` is shown, the symbolic link is set correctly.