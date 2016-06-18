
#
# VBF 2 jet
#


ls /afs/cern.ch/user/a/amassiro/Framework/CMSSW_8_0_5/src/PlotsConfigurations/Configurations/VBF/datacards/*/*/*.txt  | grep -v "pruned"  |   \
    awk '{print "python PruneDatacard.py  -d "$1" -o "$1".pruned.txt    -i examples/input_nuisances_to_prune.py"}' | /bin/sh
