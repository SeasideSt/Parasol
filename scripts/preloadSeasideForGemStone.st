"If Seaside loads Parasol and Parasol loads Seaside, an infinite reload loop can occur. For GemStone, the infinite
	reloade loop has been broken. Travis tests require Seaside to be installed, so install Seaside, explicitly"
Metacello new
 baseline:'Seaside3';
" repository: 'github://SeasideSt/Seaside:master/repository';"
 repository: 'github://dalehenrich/Seaside:issue_1223/repository';
 load: #('Parasol-Tests' 'Zinc-Seaside').
System commit.