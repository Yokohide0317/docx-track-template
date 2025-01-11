#!/bin/bash

# 要変更。TrackしたいWordファイルを指定。
TRACK_DOCX="<Word path>.docx"


DATE=`date '+%mm%dd-%H:%m'`
BASENAME=${TRACK_DOCX##*/}
MD_DIR="./md"
TRACK_MD="${MD_DIR}/${BASENAME}.track.md"
BACKUP_MD="${MD_DIR}/untrack"

options="--wrap=none --reference-links"

convfunc() {
  echo "converting..."
  if [[ -e ${TRACK_MD} ]]; then
    cp ${TRACK_MD} ${BACKUP_MD}/${DATE}.md
  fi

  pandoc -s ${TRACK_DOCX} -f docx -t gfm ${options} -o ${TRACK_MD}

  git add ${TRACK_DOCX} ${TRACK_MD}
  git commit -m "converted: ${DATE}"
}

gitfunc() {
  git add -A
  git commit -m "Push: ${DATE}"
  git push
}

if [[ $# -gt 0 ]]; then
 if [[ $1 == "push" ]]; then
    echo "git add / commit / push"
    gitfunc
  fi
  if [[ $1 == "convert" ]]; then
    echo "convert docx to md"
    convfunc
  fi
fi

