#!D:\\cygwin64\\bin\bash.exe
# generate tag file for lookupfile plugin
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/"> filenametags
true_find . -not -regex '.*\.png||gif' ! -path "*svn*" -type f -printf "%f\t%p\t1\n"| true_sort -f>> filenametags
