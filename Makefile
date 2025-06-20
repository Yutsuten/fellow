.PHONY: all audio install

all: audio install

audio:
	@echo '>> Downloading audio files <<'
	mkdir -p audio
	curl -so 'audio/info-girl1-ganbattane1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/info-girl1/info-girl1-ganbattane1.mp3'
	curl -so 'audio/info-girl1-owari1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/info-girl1/info-girl1-owari1.mp3'
	curl -so 'audio/info-girl1-sokomade1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/info-girl1/info-girl1-sokomade1.mp3'
	curl -so 'audio/info-girl1-sugoisugoi1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/info-girl1/info-girl1-sugoisugoi1.mp3'
	curl -so 'audio/info-girl1-syuuryou1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/info-girl1/info-girl1-syuuryou1.mp3'
	curl -so 'audio/line-girl1-banzai1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-banzai1.mp3'
	curl -so 'audio/line-girl1-konbanha1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-konbanha1.mp3'
	curl -so 'audio/line-girl1-konnichiha1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-konnichiha1.mp3'
	curl -so 'audio/line-girl1-ohayou1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-ohayou1.mp3'
	curl -so 'audio/line-girl1-yaa1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-yaa1.mp3'
	curl -so 'audio/line-girl1-yattaa1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-yattaa1.mp3'
	curl -so 'audio/line-girl1-yattane1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-yattane1.mp3'
	curl -so 'audio/line-girl1-yoho1.mp3' 'https://soundeffect-lab.info/sound/voice/mp3/line-girl1/line-girl1-yoho1.mp3'

install:
	@echo '>> Copy files to ~/.local/share/fellow <<'
	mkdir -p ~/.local/share/fellow
	cp -af $(CURDIR)/fellow.fish ~/.local/share/fellow/fellow
	cp -af $(CURDIR)/icon.png ~/.local/share/fellow/icon.png
	cp -af $(CURDIR)/audio ~/.local/share/fellow/audio
	ln -nf ~/.local/share/fellow/fellow ~/.local/bin/fellow

uninstall:
	rm -rf ~/.local/share/fellow
	rm -f ~/.local/bin/fellow
