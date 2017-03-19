home_dir =   

.PHONY: install
.PHONY: install-git
.PHONY: install-gpg

# Install dotfiles
install: install-git install-gpg

install-git:
	install gitconfig $(home_dir)/.gitconfig

install-gpg:
	install gnupg/gpg.conf $(home_dir)/.gnupg/gpg.conf
