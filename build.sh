#!/bin/bash
echo Preprocessing NML
REPO_HASH=hg id -i | cut -d+ -f1`
REPO_DATE=$(hg log -r$(REPO_HASH) --template='{time|shortdate}')
REPO_DAYS_SINCE_2000=$(python -c "from datetime import date; print (date(`echo "$(REPO_DATE)" | sed s/-/,/g | sed s/,0/,/g`)-date(2000,1,1)).days")
NEWGRF_VERSION=$(let x="$(REPO_DAYS_SINCE_2000) + 65536 * $(REPO_BRANCH_VERSION)"; echo "$$x")
cpp -D REPO_REVISION=$(NEWGRF_VERSION) -D NEWGRF_VERSION=$(NEWGRF_VERSION) -C -E -nostdinc -x c-header -o dutchtrains.nml dutchtrains.pnml
echo Writing custom_tags
echo VERSION :r$NEWGRF_VERSION>custom_tags.txt
echo TITLE :Dutch Trainset $(REPO_DATE) \($(NEWGRF_VERSION):$(REPO_HASH)M\)>>custom_tags.txt
echo FILENAME :dutchtrains.grf>>custom_tags.txt
echo Running NML
nmlc -p DOS dutchtrains.nml
echo Done!
