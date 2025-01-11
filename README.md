# docx-track-template

卒論など、WordをMarkdown&Gitを使ってバージョン管理。<br>
参考にさせていただいたサイト: [WordをGit管理して GitHub + TextLint で迫りくる卒業論文を快適にする](https://blog.ue-y.me/word-git-textlint/)

## Setup

### 0. `pandoc` および `gh`のインストール
- pandoc：[Pandocの比較的簡単なインストール方法](https://qiita.com/sky_y/items/3c5c46ebd319490907e8)
- gh: [GitHub CLIで始める快適GitHub生活](https://qiita.com/ryo2132/items/2a29dd7b1627af064d7b)

### 1. このリポジトリをローカルにclone

### 2. `gh`でprivate repoの作成
```bash
cd docx-track-template/
rm -r .git/
gh repo create <YourGitHubAccount>/<new-repo-name> --private
git init
git add .
git commit -m "init"
git push --set-upstream origin main
```

### 3. setup
```bash
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

