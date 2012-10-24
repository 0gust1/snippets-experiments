BEGIN{
RS=" *<TR> *<TD> *";
FS=" *</TD> *<TD> *";
print "<!doctype html>\n<html>\n<head><meta charset=\"utf-8\"><title>"Kobo Bookmarks"</title></head><body>\n";
}
{
gsub("</TD> *</TR>", "");
gsub("mnt/onboard/", "");
book=$1;
file=$2;
text=$3;
annotation=$4;
extradata=$5;
date=$6;
print "<ul><li><a href=\""book"\">"book"</a></li><li><a href=\""file"\">"file"</a></li><li><p class=\"text\">"text"</p></li><li><p class=\"annotation\">"annotation"</p></li><li><p class=\"extradata\">"extradata"</p></li><li><span class=\"date\">"date"</span></li></ul>";

}
END {
    print "</body>\n</html>";
}
