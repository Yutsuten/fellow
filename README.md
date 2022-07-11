# Fellow

I created this as a hobby to integrate with other programs.
I also wanted to use the audio files I found on
[this site](https://soundeffect-lab.info/).

If you are considering using it,
be aware that there are text in Japanese.

## Requirements

- `bash`
- `notify-send`
- `mpv`
- `curl` (to download audio files)

## Install

1. Clone this repository
2. Place an icon `icon.png` to the same directory you cloned this repository
3. Run `make audio`
4. Run `sudo make install`

## Uninstall

Run `sudo make uninstall`

## Usage

Currently there are the following commands:

`fellow greet` to greet you.
It checks the current time before greeting.

`fellow taskdone` to get praised for your good work.

`fellow finish` if a timer had just finished.

The program has a random factor,
so running the same command twice may give a different message!
