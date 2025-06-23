#!/usr/bin/env fish

set base_dir (path dirname (path resolve (status filename)))

function notify
    notify-send --urgency low --app-name fellow --icon $base_dir/icon.png $argv &
    set --global notify_pid $last_pid
end

function play
    mpv --msg-level=all=warn --volume=130 $argv &
    set --global play_pid $last_pid
end

function interact --argument-names sentence
    switch $sentence
        case ohayou
            notify 'おはよう〜！' '今日も頑張ろうね！'
            play "$base_dir/audio/line-girl1-ohayou1.mp3"
        case konnichiha
            notify 'こんにちは！' 'よーし！頑張っちゃうぞー！'
            play "$base_dir/audio/line-girl1-konnichiha1.mp3"
        case konbanha
            notify 'こんばんは！' 'もう寝る時間かな…？'
            play "$base_dir/audio/line-girl1-konbanha1.mp3"
        case yoho
            notify 'やっほー！' '何しようかな〜'
            play "$base_dir/audio/line-girl1-yoho1.mp3"
        case yaa
            notify 'やあ！' '元気？良かった！'
            play "$base_dir/audio/line-girl1-yaa1.mp3"
        case owari
            notify '終わり！' '時間無くなっちゃったよ〜！'
            play "$base_dir/audio/info-girl1-owari1.mp3"
        case sokomade
            notify 'そこまで！' '時間無くなっちゃったよ〜！'
            play "$base_dir/audio/info-girl1-sokomade1.mp3"
        case syuuryou
            notify '終了！' '続きは今度にしようね！'
            play "$base_dir/audio/info-girl1-syuuryou1.mp3"
        case ganbattane
            notify '頑張ったね！' '一歩ずつ進むんだね！'
            play "$base_dir/audio/info-girl1-ganbattane1.mp3"
        case sugoisugoi
            notify 'すごいすごい！' 'その調子！'
            play "$base_dir/audio/info-girl1-sugoisugoi1.mp3"
        case banzai
            notify 'ばんざーい！' '今のナイスだったね！'
            play "$base_dir/audio/line-girl1-banzai1.mp3"
        case yattaa
            notify 'やったーー！' '頑張ったぞ！'
            play "$base_dir/audio/line-girl1-yattaa1.mp3"
        case yattane
            notify 'やったね！' 'またすごいのができたね！'
            play "$base_dir/audio/line-girl1-yattane1.mp3"
    end
end

switch $argv[1]
    case greet
        set now (date +%H%M)
        if test $now -gt 1800
            interact konbanha
        else if test $now -gt 1200
            interact konnichiha
        else if test $now -gt 0400
            interact ohayou
        else
            interact (random choice yaa yoho)
        end
    case taskdone
        interact (random choice ganbattane sugoisugoi banzai yattaa yattane)
    case finish
        interact (random choice owari sokomade syuuryou)
    case '*'
        echo 'Invalid parameter.' >&2
        exit 1
end

wait $notify_pid $play_pid
