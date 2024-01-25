all: obs-vim-colors.vim

obs-vim-colors.vim: colors
	./script.awk $? > $@

clean:
	rm obs-vim-colors.vim
