# please change 'hostname' to your hostname
mac:
	nix build .#darwinConfigurations.macbook-air-m2.system \
	   --extra-experimental-features 'nix-command flakes'\
	   --show-trace

	./result/sw/bin/darwin-rebuild switch --flake .#macbook-air-m2
