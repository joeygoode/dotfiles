home_dir =   

.PHONY: install
.PHONY: install-git
.PHONY: install-gnupg

# Install dotfiles
install: install-git install-gpg

install-git:
	install gitconfig $(home_dir)/.gitconfig

.PHONY: install-gnupg-gpg

install-gnupg: install-gnupg-gpg install-gnupg-gpg-agent

install-gnupg-gpg:
	install gnupg/gpg.conf $(home_dir)/.gnupg/gpg.conf
