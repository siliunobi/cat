SOURCE_FOLDER=""
MAIN_MAUDE=""
PROPRTY=""
if [ $# -ge 4 ]
then
  SOURCE_FOLDER=$1
  MAIN_MAUDE=$2
  PROPERTY=$3
else
  echo "Usage: $0 code_folder main_file property config"
  exit
fi

OUT_FOLDER=`pwd`

CMD_FILE="_cmd_.txt"
CMD_OUT="_cmd_.out"

java -cp cat.jar edu.uiuc.maude.CatGenerateModule $SOURCE_FOLDER $MAIN_MAUDE $OUT_FOLDER

maude $CMD_FILE > $CMD_OUT


java -cp cat.jar edu.uiuc.maude.CatReplaceModule $SOURCE_FOLDER $MAIN_MAUDE $OUT_FOLDER $CMD_OUT
#rm $CMD_FILE
#rm $CMD_OUT

java -cp cat.jar edu.uiuc.maude.CatReplaceConfig $PROPERTY $4 $5 $6 $7 $8 $9 $10 $11 $12

maude test-mc.maude > cat.out
