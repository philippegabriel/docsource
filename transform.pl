#!/usr/bin/perl
while(<>){
#Remove Headers:
s/<div class="navheader">.+?<\/div>//smg;
#Remove Footers
s/<div class="navfooter">.*?<\/div>//smg;
#Remove Images from tables:
s/<div class="mediaobject">.*?<\/div>//smg;
#Change ALL <code class> to <samp class="phcodeph">
s/<code class="literal">(.*?)<\/code>/<samp class="ph codeph">\1<\/samp>/mg;
#Remove <span class="emphasis"> & Change <em> to <i>
s/<span class="emphasis"><em>(.*?)<\/em><\/span>/<i>\1<\/i>/mg;
#Change <em class ="parameter"> to <i>
s/<em class="parameter">(.*?)<\/em>/<i>\1<\/i>/mg;
#Change <pre class="screen"> to <pre class ="code">
s/<pre class="screen">(.*?)<\/pre>/<pre class="pre codeblock">\1<\/pre>/mg;
#Change <em class ="replaceable"> to <i>
s/<em class="replaceable">(.*?)<\/em>/<i>\1<\/i>/mg;
#Change <span class="command"> to <b> & Remove <strong>
s/<span class="command"><strong>(.*?)<\/strong><\/span>/<b>\1<\/b>/mg;
print;
}
exit 0;
