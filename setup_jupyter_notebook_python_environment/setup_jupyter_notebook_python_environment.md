# Create
- pip install jupytext
- `jupytext --set-formats ipynb,py:percent notebook.sync.ipynb`

# Start Jupyter Notebook with python env

- `python3 -m venv env`
- `source env/bin/activate`
- `pip install jupyter_ascending`
- `pip install --upgrade jsonschema`

- `pip install -e jupyter_contrib_nbextensions`
- `jupyter contrib nbextension install --user`
- `jupyter contrib nbextension install --sys-prefix`

- `jupyter nbextension install --py --sys-prefix jupyter_ascending --py`
- `jupyter nbextension     enable jupyter_ascending --sys-prefix --py`
- `jupyter serverextension enable jupyter_ascending --sys-prefix --py`

- `jupyter nbextension     list`
- `jupyter serverextension list`

- `pip install flake8`

# Test
**First terminal**
- `python3 -m venv env`
- `source env/bin/activate`
- `python -m jupyter_ascending.scripts.make_pair --base example`
- `jupyter notebook example.sync.ipynb`

**Second terminal**
- `python3 -m venv env`
- `source env/bin/activate`
- `echo 'print("Hello World!")' >> example.sync.py`
- `python -m jupyter_ascending.requests.sync --filename example.sync.py`
- `python -m jupyter_ascending.requests.execute --filename example.sync.py --line 16`
