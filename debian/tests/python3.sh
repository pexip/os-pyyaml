#!/bin/sh
set -eu

for i in $(py3versions -sv); do
    echo "-- running tests for "$i" plain --" ;
    python$i -c "import sys ; sys.path.insert(0, 'tests/lib'); import test_all; test_all.main([])";
done

export PYTHONIOENCODING='utf-8'
python3 -c "import yaml; print(yaml.load('\N{PILE OF POO}', Loader=yaml.FullLoader))"
python3 -c "import yaml; print(yaml.dump('\N{PILE OF POO}', allow_unicode=True))"
