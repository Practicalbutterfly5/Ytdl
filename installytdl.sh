yes n | termux-setup-storage

yes | pkg install python ffmpeg atomicparsley git

yes | pip install youtube-dl

value="true"; key="allow-external-apps"; file="/data/data/com.termux/files/home/.termux/termux.properties"; mkdir -p "$(dirname "$file")"; chmod 700 "$(dirname "$file")"; if ! grep -E '^'"$key"'=.*' $file &>/dev/null; then [[ -s "$file" && ! -z "$(tail -c 1 "$file")" ]] && newline=$'\n' || newline=""; echo "$newline$key=$value" >> "$file"; else sed -i'' -E 's/^'"$key"'=.*/'"$key=$value"'/' $file; fi

cd

rm -rf ytdl

git clone -b work https://github.com/Practicalbutterfly5/ytdl.git

chmod -R +x ytdl

mkdir bin && cp /ytdl/termux-url-opener /bin

mkdir -p /sdcard/Tasker/ytdl

cp /ytdl/ytdl.prj.xml /sdcard/Tasker/ytdl/

echo.&echo Starting to import Tasker project.

read -n 1 -s -r -p "Press any key to import project.

am start -n net.dinglisch.android.taskerm/com.joaomgcd.taskerm.datashare.import.ActivityImportTaskerDataFromXml -d "file:///sdcard/Tasker/ytdl/ytdl.prj.xml"


