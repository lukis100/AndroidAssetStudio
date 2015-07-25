find . -depth -name 'xxxhdpi' -type d -execdir git mv {} 'scale-400' \;
find . -depth -name 'xxhdpi' -type d -execdir git mv {} 'scale-300' \;
find . -depth -name 'xhdpi' -type d -execdir git mv {} 'scale-200' \;
find . -depth -name 'hdpi' -type d -execdir git mv {} 'scale-150' \;
find . -depth -name 'mdpi' -type d -execdir git mv {} 'scale-100' \;

grep -rl 'xxxhdpi' ./ | xargs sed -i 's/xxxhdpi/scale-400/g'
grep -rl 'xxhdpi' ./ | xargs sed -i 's/xxhdpi/scale-300/g'
grep -rl 'xhdpi' ./ | xargs sed -i 's/xhdpi/scale-200/g'
grep -rl 'hdpi' ./ | xargs sed -i 's/hdpi/scale-150/g'
grep -rl 'mdpi' ./ | xargs sed -i 's/mdpi/scale-100/g'