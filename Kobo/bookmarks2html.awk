BEGIN{
RS=" *<TR> *<TD> *";
FS=" *</TD> *<TD> *";
print "<!doctype html>\n<html>\n<head>\n<meta charset=\"utf-8\">\n<title>"Kobo Bookmarks"</title>\n<style>\nhtml{}\nbody{color:#333;}\nh1{text-align:center;}\narticle{display:block;max-width:40em;margin:0 auto 4em auto;padding:0 2em;}\nh2{margin-top:0;}\n.date{display:block;text-align:right;font-style:italic;font-size:0.8em;}</style>\n</head>\n<body>\n<h1>Kobo bookmarks and notes</h1>\n";
}
{
gsub("</TD> *</TR>", "");
gsub("mnt/onboard/", "");
bookTitle=$1;
file=$2;
chapter=$3;
text=$4;
annotation=$5;
date=$6;
print "<article>\n<span class=\"date\">"date"</span>\n<h2 class=\"bookTitle\">"bookTitle"</h2>\n<h3 class=\"chapter\">"chapter"</h3>\n<a href=\""file"\">"file"</a>\n<blockquote class=\"text\">"text"</blockquote>\n<p class=\"annotation\">"annotation"</p>\n</article>";

}
END {
    print "</body>\n</html>";
}
