cat wordlist.txt | sort | uniq > wordlist-u-s.txt
wc -l wordlist-u-s.txt | awk '{print $1}' > sk-temp.dic
cat wordlist-u-s.txt >> sk-temp.dic
rm wordlist-u-s.txt
sudo cp sk-temp.dic /usr/share/myspell/dicts/sk-temp.dic
rm sk-temp.dic
sudo cp sk-temp.aff /usr/share/myspell/dicts/sk-temp.aff