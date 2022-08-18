# ultradash
Simple server dashboard which uses python and jinja2 to create a template based user interface. 
Node, express, and PHP are not needed.

## How is this possible without Node/React/Vue/Django?
I didn't want to run a constant npm or node instance so it is all written in a very complex jinja2 [template file](https://github.com/mgurga/ultradash/blob/master/dashboard.html).
This file is so complex I don't believe anyone can reasonably maintain it so fork at your own risk.
Each element in the config file is put into a CSS flexbox based on its type, for example "title", "subsection", and "dashentry".
There are special (mostly self-explanatory) types such as "endcolumn" and "separator".

## [Default config](https://github.com/mgurga/ultradash/blob/master/config.jsonnet) screenshot
![default config](https://github.com/mgurga/ultradash/raw/master/default.png)

## How to run
```
git clone https://github.com/mgurga/ultradash
cd ultradash
pip install -r requirements.txt
python ultradash.py
```
