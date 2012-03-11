#!/bin/bash
echo Preprocessing NML
cpp -C -E < src/dutchtrains.pnml > dutchtrains.nml
echo Writing version info
sed -i s/REPO_REVISION/$(hg parents --template="{rev}")/ dutchtrains.nml
echo Writing custom_tags
echo VERSION :r$(hg parents --template="{rev}")>custom_tags.txt
echo TITLE :Dutch Trains r$(hg parents --template="{rev}")M>>custom_tags.txt
echo FILENAME :dutchtrains.grf>>custom_tags.txt
echo Running NML
nmlc -p DOS dutchtrains.nml
echo Done!
