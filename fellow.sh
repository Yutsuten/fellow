#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"
PLAY='mpv --really-quiet --volume=130'
NOTIFY="notify-send -a fellow -i ${HOME}/Pictures/Icons/fellow.png"

random_param() {
  eval echo "\$$(( RANDOM % $# + 1 ))"
}

notify_description() {
  [[ -z "$2" ]] && description="$1" || description="$2"
  printf "%s" "${description}"
}

interact() {
  case $1 in
    ohayou)
      description=$(notify_description 今日も頑張ろうね！ "$2")
      ${NOTIFY} 'おはよう〜！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-ohayou1.mp3" &
      ;;
    konnichiha)
      description=$(notify_description 休憩を忘れないでね！ "$2")
      ${NOTIFY} 'こんにちは！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-konnichiha1.mp3" &
      ;;
    konbanha)
      description=$(notify_description もう寝る時間かな…？ "$2")
      ${NOTIFY} 'こんばんは！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-konbanha1.mp3" &
      ;;
    yoho)
      description=$(notify_description 何しようかな〜 "$2")
      ${NOTIFY} 'やっほー！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-yoho1.mp3" &
      ;;
    yaa)
      description=$(notify_description 元気？良かった！ "$2")
      ${NOTIFY} 'やあ！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-yaa1.mp3" &
      ;;
    owari)
      description=$(notify_description 時間無くなっちゃったよ〜！ "$2")
      ${NOTIFY} '終わり！' "${description}"
      ${PLAY} "${DIR}/audio/info-girl1-owari1.mp3" &
      ;;
    sokomade)
      description=$(notify_description 時間無くなっちゃったよ〜！ "$2")
      ${NOTIFY} 'そこまで！' "${description}"
      ${PLAY} "${DIR}/audio/info-girl1-sokomade1.mp3" &
      ;;
    syuuryou)
      description=$(notify_description 続きは今度にしようね！ "$2")
      ${NOTIFY} '終了！' "${description}"
      ${PLAY} "${DIR}/audio/info-girl1-syuuryou1.mp3" &
      ;;
    ganbattane)
      description=$(notify_description 一歩ずつ進むんだね！ "$2")
      ${NOTIFY} '頑張ったね！' "${description}"
      ${PLAY} "${DIR}/audio/info-girl1-ganbattane1.mp3" &
      ;;
    sugoisugoi)
      description=$(notify_description その調子！ "$2")
      ${NOTIFY} 'すごいすごい！' "${description}"
      ${PLAY} "${DIR}/audio/info-girl1-sugoisugoi1.mp3" &
      ;;
    banzai)
      description=$(notify_description 今のナイスだったね！ "$2")
      ${NOTIFY} 'ばんざーい！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-banzai1.mp3" &
      ;;
    yattaa)
      description=$(notify_description 頑張ったぞ！ "$2")
      ${NOTIFY} 'やったーー！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-yattaa1.mp3" &
      ;;
    yattane)
      description=$(notify_description またすごいのができたね！ "$2")
      ${NOTIFY} 'やったね！' "${description}"
      ${PLAY} "${DIR}/audio/line-girl1-yattane1.mp3" &
      ;;
  esac
}

case $1 in
  greet)
    currenttime=$(date +%H:%M)
    if [[ "${currenttime}" > '18:00' ]]; then
      action=$(random_param konbanha yoho)
    elif [[ "${currenttime}" > '12:00' ]]; then
      action=$(random_param konnichiha yoho)
    elif [[ "${currenttime}" > '04:00' ]]; then
      action=$(random_param ohayou yoho)
    else
      action=$(random_param yaa yoho)
    fi
    ;;
  taskdone)
    action=$(random_param ganbattane sugoisugoi banzai yattaa yattane)
    ;;
  finish)
    action=$(random_param owari sokomade syuuryou)
    ;;
  *)
    echo 'Invalid parameter.' >&2
    exit 1
    ;;
esac

interact "${action}" "$2"
