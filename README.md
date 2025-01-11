# docx-track-template

卒論など、WordをMarkdown&Gitを使ってバージョン管理。
参考にさせていただいたサイト: [WordをGit管理して GitHub + TextLint で迫りくる卒業論文を快適にする](https://blog.ue-y.me/word-git-textlint/)

## Setup

### 1. このリポジトリをFork

### 2. ローカルにclone

### 3. setup
```bash
cd docx-track-template/
bash setup.sh
chmod +x ./command.sh
```
### 4. TrackしたいWord(.docx)ファイルを移動

### 5. `command.sh`を編集。(Wordファイルの名前)

## Usage

```bash
# Word→Markdownへ & commit
./command.sh convert

# commit & push
./command.sh push
```

