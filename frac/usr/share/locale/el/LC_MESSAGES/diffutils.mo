��    �      �  �         �  ~   �  p  0  �   �  F   P  I   �     �  0        2  L   D  J   �  -   �  5   
  (   @  L   i     �  D   �  ?     B   U  D   �     �  I   �  =   G  A   �  J   �  =     8   P  9   �  C   �  F     (   N  @   w  B   �  M   �  K   I  8   �  ,   �  J   �  9   F  /   �  0   �  K   �  $   -  G   R  )   �  V  �  9        U  G   t  A   �  <   �  .   ;  C   j  ,   �  ?   �  <     E   X  B   �  %   �  5     F   =  .   �  >   �  >   �  A   1   8   s   3   �   #   �   /   !  D   4!  /   y!  4   �!  �   �!  !   �"     �"  !   #     %#  F   E#  =   �#  I   �#  &   $     ;$     Z$  I   r$  1   �$  &   �$     %     ,%     I%     e%  $   }%     �%     �%     �%     �%     �%     &     "&  #   2&     V&  �   q&  =   #'  '   a'     �'     �'     �'  %   �'     �'     �'     (     (     '(  "   4(  4   W(     �(  .   �(     �(  ;   �(  3   +)  /   _)  +   �)  '   �)  #   �)     *     '*     C*  *   S*     ~*  )   �*  !   �*  '   �*  )   +     /+     F+      V+      w+     �+     �+  	   �+     �+     �+     �+     ,  1   ,  2   I,  0   |,     �,  #   �,     �,  )   -  1   2-  -   d-     �-     �-     �-     �-     �-     �-  "   .  %   3.     Y.     g.     s.     �.  	   �.     �.     �.     �.     �.  ,   �.     /     /     //  
   C/     N/  �  [/  �    1    �1  �  �4  V   �6  �   �6  3   �7  L   �7  $   8  �   -8     �8  g   S9  m   �9  ?   ):  �   i:  ?   X;  ~   �;  �   <  �   �<  �   e=  P   6>  ~   �>  k   ?  |   r?  �   �?  `   �@  j   9A  P   �A  r   �A  �   hB  S   �B  m   BC  ]   �C  �   D  �   �D  l   E  J   }E     �E  ~   HF  Q   �F  `   G  �   zG  F   ^H  u   �H  W   I  �  sI  {   _L  Z   �L  j   6M  C   �M  �   �M  b   rN  y   �N  ,   OO  t   |O  r   �O  m   dP  �   �P  J   [Q  U   �Q  �   �Q  Q   �R  h   �R  l   NS  b   �S  f   T  i   �T  A   �T  Q   1U  w   �U  d   �U  j   `V  �  �V  K   bX  C   �X  N   �X  :   AY  �   |Y  m   (Z  �   �Z  M   [  C   h[  2   �[  �   �[  {   j\  k   �\  &   R]  9   y]  >   �]  =   �]  O   0^  ,   �^  *   �^  $   �^  (   �^  j   &_  ;   �_     �_  ;   �_  5   !`  �   W`  m   Wa  Y   �a     b     0b  &   Bb  V   ib  0   �b     �b     c     )c     Ec  ?   \c  Q   �c  0   �c  ;   d  &   [d  Z   �d  L   �d  H   *e  D   se  @   �e  <   �e  8   6f  *   of     �f  \   �f  $   g  W   9g  J   �g  ^   �g  m   ;h  .   �h  -   �h  V   i  Q   ]i  S   �i  <   j     @j  8   Sj     �j  #   �j  9   �j  S   �j  `   Ck  `   �k  @   l  )   Fl  7   pl  T   �l  l   �l  L   jm  -   �m  3   �m     n  $   8n     ]n  2   yn  @   �n  o   �n  %   ]o  #   �o  "   �o     �o     �o  <   �o     :p  %   Ap     gp  U   �p  '   �p  F   q     Jq     ^q      |q        +   �               9   X          o   �   �       u   ~   �       q   $      �   �       a   �      d   r   0      |   j   W      e          �              F   .      �       �       
   c      H   R         Z           �   �   w   4   @         _   z   '   �   g       �      5   �   l          �   ^   �   �   �       �   �   �   G   !   ]                  m           y       �   J   *   �       "   �   I      �   8          (              Y   =          :   �   f   ?      [   �   2   �       k   7   �   �   A       {   Q   �   t   -   V               }   �       �      h       C      K   T      M   �       3   6   /   P                     `   B   O   b   >   �   ;           S   D   i   #   �   �   �   ,   \               U   s   )   <   �       1       E       N       �   �              �           %   x   &   �   L          �   �           	   �           v       p   �       n      Either GFMT or LFMT may contain:
    %%  %
    %c'C'  the single character C
    %c'\OOO'  the character with octal code OOO   GFMT may contain:
    %<  lines from FILE1
    %>  lines from FILE2
    %=  lines common to FILE1 and FILE2
    %[-][WIDTH][.[PREC]]{doxX}LETTER  printf-style spec for LETTER
      LETTERs are as follows for new group, lower case for old group:
        F  first line number
        L  last line number
        N  number of lines = L-F+1
        E  F-1
        M  L+1   LFMT may contain:
    %L  contents of line
    %l  contents of line, excluding any trailing newline
    %[-][WIDTH][.[PREC]]{doxX}n  printf-style spec for input line number   LTYPE is `old', `new', or `unchanged'.  GTYPE is LTYPE or `changed'.   Skip the first SKIP1 bytes of FILE1 and the first SKIP2 bytes of FILE2. %s %s differ: byte %s, line %s
 %s %s differ: byte %s, line %s is %3o %s %3o %s
 %s: diff failed:  --GTYPE-group-format=GFMT  Similar, but format GTYPE input groups with GFMT. --LTYPE-line-format=LFMT  Similar, but format LTYPE input lines with LFMT. --binary  Read and write data in binary mode. --diff-program=PROGRAM  Use PROGRAM to compare files. --from-file and --to-file both specified --from-file=FILE1  Compare FILE1 to all operands.  FILE1 can be a directory. --help  Output this help. --horizon-lines=NUM  Keep NUM lines of the common prefix and suffix. --ignore-file-name-case  Ignore case when comparing file names. --line-format=LFMT  Similar, but format all input lines with LFMT. --no-ignore-file-name-case  Consider case when comparing file names. --normal  Output a normal diff. --speed-large-files  Assume large files and many scattered small changes. --strip-trailing-cr  Strip trailing carriage return on input. --tabsize=NUM  Tab stops are every NUM (default 8) print columns. --to-file=FILE2  Compare all operands to FILE2.  FILE2 can be a directory. --unidirectional-new-file  Treat absent first files as empty. -3  --easy-only  Output unmerged nonoverlapping changes. -A  --show-all  Output all changes, bracketing conflicts. -B  --ignore-blank-lines  Ignore changes whose lines are all blank. -D NAME  --ifdef=NAME  Output merged file to show `#ifdef NAME' diffs. -D option not supported with directories -E  --ignore-tab-expansion  Ignore changes due to tab expansion. -E  --show-overlap  Output unmerged changes, bracketing conflicts. -H  --speed-large-files  Assume large files and many scattered small changes. -I RE  --ignore-matching-lines=RE  Ignore changes whose lines all match RE. -L LABEL  --label=LABEL  Use LABEL instead of file name. -N  --new-file  Treat absent files as empty. -S FILE  --starting-file=FILE  Start with FILE when comparing directories. -T  --initial-tab  Make tabs line up by prepending a tab. -W  --ignore-all-space  Ignore all white space. -X  Output overlapping changes, bracketing them. -X FILE  --exclude-from=FILE  Exclude files that match any pattern in FILE. -a  --text  Treat all files as text. -b  --ignore-space-change  Ignore changes in the amount of white space. -b  --print-bytes  Print differing bytes. -c  -C NUM  --context[=NUM]  Output NUM (default 3) lines of copied context.
-u  -U NUM  --unified[=NUM]  Output NUM (default 3) lines of unified context.
  --label LABEL  Use LABEL instead of file name.
  -p  --show-c-function  Show which C function each change is in.
  -F RE  --show-function-line=RE  Show the most recent line matching RE. -d  --minimal  Try hard to find a smaller set of changes. -e  --ed  Output an ed script. -e  --ed  Output unmerged changes from OLDFILE to YOURFILE into MYFILE. -i  --ignore-case  Consider upper- and lower-case to be the same. -i  --ignore-case  Ignore case differences in file contents. -i  Append `w' and `q' commands to ed scripts. -i SKIP  --ignore-initial=SKIP  Skip the first SKIP bytes of input. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column  Output only the left column of common lines. -l  --paginate  Pass the output through `pr' to paginate it. -l  --verbose  Output byte numbers and values of all differing bytes. -m  --merge  Output merged file instead of ed script (default -A). -n  --rcs  Output an RCS format diff. -n LIMIT  --bytes=LIMIT  Compare at most LIMIT bytes. -o FILE  --output=FILE  Operate interactively, sending output to FILE. -q  --brief  Output only whether files differ. -r  --recursive  Recursively compare any subdirectories found. -s  --quiet  --silent  Output nothing; yield exit status only. -s  --report-identical-files  Report when two files are the same. -s  --suppress-common-lines  Do not output common lines. -t  --expand-tabs  Expand tabs to spaces in output. -v  --version  Output version info. -w  --ignore-all-space  Ignore all white space. -w NUM  --width=NUM  Output at most NUM (default 130) print columns. -x  --overlap-only  Output overlapping changes. -x PAT  --exclude=PAT  Exclude files that match PAT. -y  --side-by-side  Output in two columns.
  -W NUM  --width=NUM  Output at most NUM (default 130) print columns.
  --left-column  Output only the left column of common lines.
  --suppress-common-lines  Do not output common lines. Common subdirectories: %s and %s
 Compare files line by line. Compare three files line by line. Compare two files byte by byte. Exit status is 0 if inputs are the same, 1 if different, 2 if trouble. Exit status is 0 if successful, 1 if conflicts, 2 if trouble. FILES are `FILE1 FILE2' or `DIR1 DIR2' or `DIR FILE...' or `FILE... DIR'. File %s is a %s while file %s is a %s
 Files %s and %s are identical
 Files %s and %s differ
 If --from-file or --to-file is given, there are no restrictions on FILES. If a FILE is `-' or missing, read standard input. If a FILE is `-', read standard input. Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Memory exhausted No match No newline at end of file No previous regular expression Only in %s: %s
 Premature end of regular expression Regular expression too big SKIP values may be followed by the following multiplicative suffixes:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, and so on for T, P, E, Z, Y. SKIP1 and SKIP2 are the number of bytes to skip in each file. Side-by-side merge of file differences. Success Torbjorn Granlund Trailing backslash Try `%s --help' for more information. Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... FILE1 [FILE2 [SKIP1 [SKIP2]]]
 Usage: %s [OPTION]... FILES
 Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 `-' specified for more than one input file block special file both files to be compared are directories cannot compare `-' to a directory cannot compare file names `%s' and `%s' cannot interactively merge standard input character special file cmp: EOF on %s
 conflicting %s option value `%s' conflicting output style options conflicting tabsize options conflicting width options directory extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid tabsize `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' could not be invoked symbolic link too many file label options typed memory object weird file write failed Project-Id-Version: diffutils-2.8.7
Report-Msgid-Bugs-To: bug-diffutils@gnu.org
POT-Creation-Date: 2010-05-03 17:01+0200
PO-Revision-Date: 2004-12-28 15:50+0000
Last-Translator: Lefteris Dimitroulakis <edimitro@tee.gr>
Language-Team: Greek <nls@tux.hellug.gr>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.3.1
Plural-Forms:  nplurals=2; plural=(n != 1);
 GFMT ή LFMT μπορούν να περιέχουν:
    %%  %
    %c'C'  τον ίδιο το χαρακτήρα C
    %c'\OOO'  το χαρακτήρα με οκταδικό κωδικό OOO GFMT μπορεί να περιέχει:
    %<  για να δηλώνει γραμμές από το ΑΡΧΕΙΟ1
    %>  για να δηλώνει γραμμές από το ΑΡΧΕΙΟ2
    %=  για να δηλώνει ταυτόσημες γραμμές μεταξύ των ΑΡΧΕΙΟ1 και ΑΡΧΕΙΟ2
    %[-][ΠΛΑΤΟΣ][.[PREC]]{doxX}ΓΡΑΜΜΑ, προδιαγραφές του ΓΡΑΜΜΑτος
        στο στύλ της printf(), ως ακολούθως γιά τη νέα ομάδα
        ενώ με πεζά για τη παλαιά ομάδα:
        F  αριθμός πρώτης γραμμής
        L  αριθμός τελευταίας γραμμής
        N  αριθμός γραμμών = L-F+1
        E  F-1
        M  L+1   LFMT μπορεί να περιέχει:
    %L              για το περιεχόμενο της γραμμής
    %l              για το περιεχόμενο της γραμμής χωρίς το τέλος γραμμής
    %[-][ΠΛΑΤΟΣ][.[PREC]]{doxX}n  την προδιαγραφή του αριθμού γραμμής
                                  εισόδου ανάλογα με τη μορφή της printf()   LTYPE είναι `old', `new', ή `unchanged'.  GTYPE είναι LTYPE ή `changed'. Παράβλεψη των πρώτων SKIP1 ψηφιολέξεων του ΑΡΧΕΙΟ1 και των πρώτων SKIP2 ψηφιολέξεων του ΑΡΧΕΙΟ2. %s %s διαφέρουν: byte %s, γραμμή %s
 %s %s διαφέρουν: byte %s, γραμμή %s είναι %3o %s %3o %s
 %s: αποτυχία του `diff':  --GTYPE-group-format=GFMT  Αντίστοιχο, αλλά μορφοποίηση ομάδων
                                        εισόδου GTYPE με GFMT. --LTYPE-line-format=LFMT  Αντίστοιχο, αλλά μορφοποίηση 
γραμμών εισόδου LTYPE με LFMT. --binary  Ανάγνωση και εγγραφή πληροφορίας σε δυαδική μορφή. --diff-program=ΠΡΟΓΡ  Χρήση του ΠΡΟΓΡάμματος στη σύγκριση αρχείων. --from-file και --to-file έχουν οριστεί μαζί --from-file=ΑΡΧΕΙΟ1
                                Σύγκριση ΑΡΧΕΙΟ1 με όλους τους τελεστέους.
                                        ΑΡΧΕΙΟ1 μπορεί να είναι κατάλογος. --help  Έξοδος αυτής εδώ της βοήθειας. --horizon-lines=ΑΡ  Διατηρεί ΑΡ γραμμές με ταυτόσημα προθέματα κι επιθέματα. --ignore-file-name-case  Αγνοεί τις διαφορές λόγω πεζών-κεφαλαίων
                                      κατά τη σύγκριση ονομάτων αρχείων. --line-format=LFMT  Αντίστοιχο, αλλά μορφοποίηση
όλων των γραμμών εισόδου με LFMT. --no-ignore-file-name-case  Λαμβάνει υπ' όψιν τις διαφορές λόγω
                      πεζών-κεφαλαίων κατά τη σύγκριση ονομάτων αρχείων. --normal  Δημιουργία ενός `diff' σε κανονική μορφή. --speed-large-files  Υποθέτει μεγάλα αρχεία και πολλές σκόρπιες μικροαλλαγές. --strip-trailing-cr  Απαλειφή του χαρακτήρα επιστροφής στην είσοδο. --tabsize=ΑΡ  Ο αριθμός διαστημάτων του στηλοθέτη είναι ΑΡ (προεπιλογή 8). --to-file=ΑΡΧΕΙΟ2
                                Σύγκριση όλων των τελεστέων στο ΑΡΧΕΙΟ2.
                                        ΑΡΧΕΙΟ2 μπορεί να είναι κατάλογος. --unidirectional-new-file  Θεωρεί τα απόντα πρώτα αρχεία ως κενά. -3  --easy-only  Έξοδος ασυγχώνευτων μη επικαλυπτόμενων αλλαγών. -A  --show-all  Έξοδος όλων των αλλαγών σε αγκύλες. -B  --ignore-blank-lines  Αγνοεί αλλαγές οφειλόμενες στις λευκές γραμμές. -D ΟΝΟΜΑ  --ifdef=ΟΝΟΜΑ  Έξοδος συγχωνευμένου αρχείου
με τις διαφορές `#ifdef NAME'. Η επιλογή -D δεν υποστηρίζεται για καταλόγους. -E  --ignore-tab-expansion  Αγνοεί αλλαγές οφειλόμενες στη στηλοθέτηση. -E  --show-overlap  Έξοδος ασυγχώνευτων αλλαγών σε αγκύλες. -H  --speed-large-files  Υποθέτει μεγάλα αρχεία με πολλές σκόρπιες μικροαλλαγές. -I RE  --ignore-matching-lines=RE  Αγνοεί αλλαγές που οι γραμμές τους ταιριάζουν με RE. -L ΕΤΙΚ  --label=ΕΤΙΚ  Χρήση  ΕΤΙΚέτας αντί του ονόματος αρχείου. -N  --new-file  Θεωρεί τα απόντα αρχεία ως κενά. -S ΑΡΧΕΙΟ  --starting-file=ΑΡΧΕΙΟ  Εκκίνηση σύγκρισης καταλόγων από το ΑΡΧΕΙΟ. -T  --initial-tab  Στοίχιση των στηλοθετών με την επιπρόσθεση ενός στην αρχή. -W  --ignore-all-space  Αγνοεί όλα τα λευκά διαστήματα. -X  Έξοδος των αλλαγών που επικαλύπτονται, σε αγκύλες. -X ΑΡΧΕΙΟ  --exclude-from=ΑΡΧΕΙΟ    Εξαίρεση αρχείων με όνομα που ταιράζει
                                  με τα ονόματα που βρίσκονται στο ΑΡΧΕΙΟ. -a  --text  Θεωρεί όλα τα αρχεία ως κείμενο. -b  --ignore-space-change  Αγνοεί αλλαγές οφειλόμενες στα λευκά διαστήματα. -b  --print-bytes  Εμφανίζει ψηφιολέξεις που διαφέρουν. -c  -C ΑΡ  --context[=ΑΡ]       Έξοδος ΑΡ (προεπιλογή 3) γραμμών
                                συμφραζομένων.
-u  -U ΑΡ  --unified[=ΑΡ]       Έξοδος ΑΡ (προεπιλογή 3) γραμμών
                                ενοποιημένων συμφραζομένων.
  --label LABEL                 Χρήση LABEL αντί όνοματος αρχείου.
  -p  --show-c-function         Δείχνει τη συνάρτηση της C
                                που περιέχει κάθε διαφορά.
-F RE  --show-function-line=RE  Δείχνει την πιο πρόσφατη γραμμή
                                που ταιριάζει με τη RE. -d  --minimal  Αν είναι δυνατόν εμφάνιση του μικρότερου συνόλου διαφορών. -e  --ed  Δημιουργία προγράμματος εντολών για τον `ed'. -e  --ed  Έξοδος ασυγχώνευτων αλλαγών από OLDFILE σε YOURFILE στο MYFILE. -i  --ignore-case  Θεωρεί πεζά-κεφαλαία ίδια. -i  --ignore-case  Αγνοεί τις διαφορές λόγω πεζών-κεφαλαίων
στα περιεχόμενα αρχείων. -i  Προσάρτηση των διαταγών `w' και `q' στα σενάρια του `ed'. -i SKIP  --ignore-initial=SKIP  Παράβλεψη των πρώτων SKIP ψηφιολέξεων της εισόδου. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column  Εμφάνιση στην αριστερή στήλη των ταυτόσημων γραμμών. -l  --paginate  Έξοδος δια μέσου του `pr' ώστε να αριθμιθούν οι σελίδες. -l  --verbose  Έξοδος αριθμού και τιμής όλων των bytes που διαφέρουν. -m  --merge  Έξοδος αρχείου συγχώνευσης αντί σεναρίου εντολών `ed' (προεπιλογή -A). -n  --rcs  Δημιουργία αρχείου `diff' σε μορφή RCS. -n ΟΡΙΟ  --bytes=ΟΡΙΟ  Σύγκριση αριθμού bytes ανά ΟΡΙΟ. -o ΑΡΧΕΙΟ  --output=ΑΡΧΕΙΟ  Αλληλεπιδραστική λειτουργία
 με αποστολή εξόδου στο ΑΡΧΕΙΟ. -q  --brief  Έξοδος μόνο όταν τα αρχεία διαφέρουν. -r  --recursive  Αναδρομική σύγκριση όσων υποκαταλόγων βρεθούν. -s  --quiet  --silent  Ουδεμία έξοδος, μόνο μήνυμα πέρατος εκτέλεσης. -s  --report-identical-files  Ειδοποιεί όταν δύο αρχεία είναι ίδια. -s  --suppress-common-lines  Οι ταυτόσημες γραμμές δεν εμφανίζονται. -t  --expand-tabs  Μετατροπή στηλοθετών σε διαστήματα στην έξοδο. -v  --version  Έξοδος ονόματος κι έκδοσης. -w  --ignore-all-space  Αγνοεί όλα τα λευκά διαστήματα. -w ΑΡ  --width=ΑΡ  Έξοδος με το πολύ ΑΡ στήλες εκτύπωσης (προεπιλογή 130). -x  --overlap-only  Έξοδος μόνο των αλλαγών που επικαλύπτονται. -x PAT  --exclude=PAT  Εξαίρεση αρχείων με όνομα που ταιριάζει με PAT. -y  --side-by-side  Έξοδος σε δύο στήλες.
  -W ΑΡ  --width=ΑΡ  Έξοδος με ΑΡ το πολύ χαρακτήρες ανά γραμμή (προεπιλογή 130).
  --left-column  Έξοδος μόνο αριστερής στήλης με τις ταυτόσημες γραμμές.
  --suppress-common-lines  Δεν εμφανίζει τις ταυτόσημες γραμμές. Οι υποκατάλογοι %s και %s είναι ταυτόσημοι
 Σύγκριση αρχείων γραμμή προς γραμμή. Σύγκριση τριών αρχείων γραμμή προς γραμμή. Σύγκριση δύο αρχείων byte προς byte. Η έξοδος είναι 0 αν τα δεδομένα αρχεία είναι ίδια, 1 αν είναι διαφορετικά,
2 αν υπάρχει πρόβλημα. Σε επιτυχία η έξοδος είναι 0, σε σύγκρουση 1 και σε πρόβλημα 2. ΑΡΧΕΙΑ είναι `ΑΡΧΕΙΟ1 ΑΡΧΕΙΟ2' ή `ΚΑΤ1 ΚΑΤ2' ή `ΚΑΤ ΑΡΧΕΙΟ...' ή `ΑΡΧΕΙΟ... ΚΑΤ'. Το αρχείο %s είναι %s ενώ το αρχείο %s είναι %s
 Τα αρχεία %s καί %s είναι πανομοιότυπα
 Τα αρχεία %s και %s διαφέρουν
 Αν το --from-file ή --to-file είναι δεδομένο, τότε δεν υπάρχει περιορισμός στα ΑΡΧΕΙΑ. Αν ένα ΑΡΧΕΙΟ είναι `-' ή απών, τότε ανάγνωση από την κανονική είσοδο. Αν ένα ΑΡΧΕΙΟ είναι `-', τότε ανάγνωση από την τυπική είσοδο. Άκυρη πίσω παραπομπή Άκυρο όνομα κλάσεως χαρακτήρων Άκυρος χαρακτήρας διαταξινόμησης Το περιεχόμενο του \{\} είναι άκυρο Η προηγούμενη κανονική έκφραση είναι άκυρη Άκυρο πέρας διαστήματος Άκυρη κανονική έκφραση Η μνήμη εξαντλήθηκε Δεν υπάρχει ταίριασμα Δεν υπάρχει χαρακτήρας νέας γραμμής στο τέλος του αρχείου Δεν προηγήθηκε κανονική έκφραση Μόνο στο %s: %s
 Πρόωρο τέλος κανονικής έκφρασης Πολύ μεγάλη κανονική έκφραση Οι τιμές SKIP μπορούν ν' ακολουθούνται
από τα παρακάτω πολαπλασιαστικά επιθέματα :
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, κτλ γιά T, P, E, Z, Y. SKIP1 και  SKIP2 είναι ο αριθμός των byte προς παράλειψη ανά αρχείο. Συγχώνευση δίπλα-δίπλα των διαφορών του αρχείου. Επιτυχία Torbjorn Granlund Αντιπλαγία στο τέλος Δοκιμάστε `%s --help' για περισσότερες πληροφορίες. Άγνωστο σφάλμα συστήματος Δε βρέθηκε ( ή \( Δε βρέθηκε ) ή \) Δε βρέθηκε [ ή [^ Δε βρέθηκε \{ Χρήση: %s [ΕΠΙΛΟΓΗ]... ΑΡΧΕΙΟ1 ΑΡΧΕΙΟ2
 Χρήση: %s [ΕΠΙΛΟΓΗ]... ΑΡΧΕΙΟ1 [ΑΡΧΕΙΟ2 [SKIP1 [SKIP2]]]
 Χρήση: %s [ΕΠΙΛΟΓΗ]... ΑΡΧΕΙΑ
 Χρήση: %s [ΕΠΙΛΟΓΗ]... MYFILE OLDFILE YOURFILE
 Γράφτηκε από %s και %s.
 Γράφτηκε από τους %s, %s, %s,
%s, %s, %s, %s,
%s, %s, και άλλους.
 Γράφτηκε από τους %s, %s, %s,
%s, %s, %s, %s,
%s, και %s.
 Γράφτηκε από τους %s, %s, %s,
%s, %s, %s, %s,
και %s.
 Γράφτηκε από τους %s, %s, %s,
%s, %s, %s, και %s.
 Γράφτηκε από τους %s, %s, %s,
%s, %s, και %s.
 Γράφτηκε από τους %s, %s, %s,
%s, και %s.
 Γράφτηκε από τους %s, %s, %s,
και %s.
 Γράφτηκε από %s, %s,και %s.
 Γράφτηκε από %s.
 `-' ορίστηκε για περισσότερα από ένα αρχεία εισόδου ειδικό αρχείο μπλοκ και τα δύο προς σύγκριση αρχεία είναι κατάλογοι Αδύνατη η σύγκριση του `-' με ένα κατάλογο αδύνατη η σύγκριση των ονομάτων αρχείων «%s» και «%s» αδυνατώ να συγχωνεύσω αλληλεπιδραστικά την πρότυπη είσοδο. ειδικό αρχείο χαρακτήρων cmp: Τέλος-Αρχείου (EOF) σε %s
 η επιλογή %s είναι αντικρουόμενη με την τιμή «%s» αντικρουόμενες επιλογές για τη μορφή εξόδου αντικρουόμενες επιλογές μήκους στηλοθέτησης αντικρουόμενες επιλογές πλάτους κατάλογος συμπληρωματικός τελεστέος «%s» fifo ασύμβατες επιλογές Το αρχείο εισόδου συρρικνώθηκε εσωτερικό σφάλμα: άκυρος τύπος `diff' στο process_diff εσωτερικό σφάλμα: άκυρος τύπος `diff' πέρασε στην έξοδο εσωτερικό σφάλμα: μπέρδεμα στις μορφές των μπλοκ `diff' άκυρη τιμή «%s» για την επιλογή --bytes  άκυρη τιμή --ignore-initial `%s' άκυρο μήκος συμφραζομένων «%s» άκυρη μορφή `diff': ασυμπλήρωτη τελευταία γραμμή άκυρη μορφή `diff': λάθος χαρακτήρες στη γραμμή αποτελεσμάτων άκυρη μορφή `diff': άκυρος οριοθέτης αλλαγής άκυρο μήκος ορίζοντα «%s» άκυρο μήκος στηλοθέτησης `%s' άκυρο πλάτος «%s» η μνήμη εξαντλήθηκε ουρά μηνύματος απών τελεστέος μετά από «%s» οι επιλογές -l και -s είναι ασύμβατες Η αρίθμιση σελίδων δεν υποστηρίζεται σ' αυτόν τον υπολογιστή σφάλμα προγράμματος αποτυχία ανάγνωσης τυπικό κενό αρχείο τυπικό αρχείο σηματοφορέας αντικείμενο κοινόχρηστης μνήμης socket υπερχείλιση στοίβας κανονική έξοδος το υποπρόγραμμα «%s» δεν ήταν δυνατόν να κληθεί συμβολικός σύνδεσμος πάρα πολλές επιλογές ετικέτας αρχείου typed memory object αλλόκοτο αρχείο η εγγραφή απέτυχε 