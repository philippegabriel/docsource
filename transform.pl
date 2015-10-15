#!/usr/bin/perl
BEGIN {undef $/;}
$input=<>;
#Remove Headers:
$input =~ s/<div class="navheader">.+?<\/div>//smg;
#Remove Footers
$input =~ s/<div class="navfooter">.*?<\/div>//smg;
#Remove Images from tables:
$input =~ s/<div class="mediaobject".*?<\/div>//smg;
#Change ALL <code class> to <samp class="phcodeph">
$input =~ s/<code class="literal">(.*?)<\/code>/<samp class="ph codeph">\1<\/samp>/smg;
#Remove <span class="emphasis"> & Change <em> to <i>
$input =~ s/<span class="emphasis"><em>(.*?)<\/em><\/span>/<i>\1<\/i>/smg;
#Change <em class ="parameter"> to <i>
$input =~ s/<em class="parameter">(.*?)<\/em>/<i>\1<\/i>/smg;
#Change <pre class="screen"> to <pre class ="code">
$input =~ s/<pre class="screen">(.*?)<\/pre>/<pre class="pre codeblock">\1<\/pre>/smg;
#Change <em class ="replaceable"> to <i>
$input =~ s/<em class="replaceable">(.*?)<\/em>/<i>\1<\/i>/smg;
#Change <span class="command"> to <b> & Remove <strong>
$input =~ s/<span class="command"><strong>(.*?)<\/strong><\/span>/<b>\1<\/b>/smg;
#Change <div class="itemizedlist"> to <div class ="show bullets">
while($input =~ m/(<div class="itemizedlist">)(.*?)(<\/div>)/ms){
	$subst = $2;
#Change <ul type="disc"> to <ul class="ul">
	$subst =~ s/<ul type="disc">/<ul class="ul">/msg;
#Change <li> to <li class=”li”>
	$subst =~ s/<li>/<li class="li">/msg;
	$input =~ s/<div class="itemizedlist">.*?<\/div>/<div class ="show bullets">$subst<\/div>/ms;}
print $input;
exit 0;
