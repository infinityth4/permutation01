#! /usr/bin/perl
use warnings;

open(DATAFILE, "< ./templates/main.html") or die("error :$!");

#置換前
while (my $line = <DATAFILE>){
  chomp($line);#改行文字を削除
  print "$line\n";
}
print "\n";
open(DATAFILE, ">> ./templates/main.html") or die("error :$!");

#置換後
while (my $line = <DATAFILE>){
  chomp($line);#改行文字を削除
  $line=~s/{% title %}/{% タイトル %}/;
  $line=~s/{% content %}/{% コンテンツ %}/;
  print $line."aa";
}

close(DATAFILE);

open(OUT,"< ./templates/log.txt");
while (my $line = <OUT>){
  chomp($line);#改行文字を削除
  $line=~s/{% title %}/{% タイトル %}/;
  $line=~s/{% content %}/{% コンテンツ %}/;
  print OUT "$line";
}

close(OUT); 
