test:
	pytest

install:
	python -m pip install .

install-editable:
	python -m pip install --editable .

gitpush:
	git add .
	git commit -m "$(m)"
	git push origin

pdf:
	export SEED="own ginger excuse humble abstract always remain math solar jealous craft coach"
	shuffler --seed="${SEED}" > out.txt
	enscript -2r -f Courier7 -F Courier7 -j out.txt -o out.ps
	ps2pdf out.ps
	rm out.ps out.txt
