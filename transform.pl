#!/usr/bin/perl
while(<>){
#Remove Headers:
s/<div class="navheader">.*?<\/div>//mg;
#Remove Footers
s/<div class="navfooter">.*?<\/div>//mg;
#Remove Images from tables:
s/<div class="mediaobject">.*?<\/div>//mg;
#Change ALL <code class> to <samp class="phcodeph">
s/<code class="literal">(.*?)<\/code>/<samp class="ph codeph">\1<\/samp>/mg;
print;
}
exit 0;
