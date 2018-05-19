for i in $(ls);
do timidity -Ow $i -o ../wav/$i.wav;
ffmpeg -i ../wav/$i.wav -acodec libmp3lame ../wav/$i.mp3;
rm ../wav/$i.wav;
done;