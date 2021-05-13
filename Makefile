
tree.%: tree.gv
	[ ! -d "renders" ] && mkdir renders || echo "renders/ exists"
	dot -T$* $< -o renders/$@

all: tree.svg tree.png tree.pdf
