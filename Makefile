all:
	nvim\
		./lua/snippets/init.lua\
		+"set rtp+=."\
		+"lua require('snippets').setup()"
