# Fellow

What does this program do?
It shows a notification and play an audio at the same time.

I created this as a hobby to integrate with other programs.
I also wanted to use the audio files I found on
[this site](https://soundeffect-lab.info/).
It is heavily customized to work in my environment,
but it may work on other people's computer.
If you are considering using it,
be aware that there are text in Japanese.

## Requirements

This program is written in `bash`,
so most likely will only work on Linux.

It also uses:

- `notify-send` to show notifications
- `mpv` to play audio
- The notification icon at `${HOME}/Pictures/Icons/fellow.png`

## Usage

Currently there are the following commands:

`fellow greet` to greet you.
It checks the current time before greeting.

`fellow taskdone` to get praised for your good work.

`fellow finish` if a timer had just finished.

The program has a random factor,
so running the same command twice may give you a different message!
