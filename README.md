# BIP39 Seed Shuffler
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

This project is inspired in the awesome tool [borderwallets](https://www.borderwallets.com/),
and the goal is to provide a simple linux commandline tool that serves as a double
check of the generated grid. 

This project is intended for educational purposes.

## Instalation:

```
git clone https://github.com/amarjen/seed-shuffler.git
cd seed-shuffler
python -m pip install .
```

## Usage:
```
shuffler --seed="own ginger excuse humble abstract always remain math solar jealous craft coach"
```

In order to generate a printable PDF from the text output we can use the legendary tools `enscript` and `ps2pdf`, eg:
```
export SEED="own ginger excuse humble abstract always remain math solar jealous craft coach"
shuffler --seed="${SEED}" > out.txt
enscript -2r -f Courier7 -F Courier7 -j out.txt -o out.ps
ps2pdf out.ps
# clean files
rm out.ps out.txt
```

## External dependencies:
- [Embit](https://www.embit.rocks) is only used to validate a bip39 seed by computing its checksum.
- The repo includes the module [uheprng.py](https://github.com/wuftymerguftyguff/uheprng) a python implementation of the Ultra High Entropy Pseudo Random Number Generator developed by
Steve Gibson of grc.com. This is the PRNG that the tool uses to deterministically generate a grid from a bip39 seed.
