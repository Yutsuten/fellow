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
	@echo '>> Copy executable to /usr/local/bin <<'
	mkdir /usr/local/src/fellow
	cp -af $(CURDIR)/fellow.sh /usr/local/src/fellow/fellow
	cp -af $(CURDIR)/icon.png /usr/local/src/fellow/icon.png
	cp -af $(CURDIR)/audio /usr/local/src/fellow/audio
	ln -sf /usr/local/src/fellow/fellow /usr/local/bin/fellow

uninstall:
	rm -rf /usr/local/src/fellow
	rm -f /usr/local/bin/fellow
