��    �      �  �   ,      �  ~   �  p  h  �   �  F   �  I   �       0   9     j     |  L   �  J   �  -     5   F  (   |  L   �     �  D     ?   Q  B   �  D   �       I   9  =   �  A   �  J     =   N  8   �  9   �  C   �  F   C  (   �  @   �  B   �  M   7  K   �  8   �  ,   
  J   7  9   �  /   �  0   �  K     $   i  G   �  )   �  V     9   W     �  G   �  A   �  <   :  .   w  C   �  ,   �  ?     <   W  E   �  B   �  %     5   C  F   y  .   �  >   �  >   .   A   m   8   �   3   �   #   !  /   @!  D   p!  /   �!  4   �!  �   "     #  !    #     B#  !   ^#     �#  F   �#  =   �#  I   %$  &   o$     �$     �$  I   �$  1   %  &   I%     p%     �%     �%     �%  $   �%     �%     &     *&     ;&     D&     ^&     }&  #   �&     �&  �   �&  =   ~'  '   �'     �'     �'     �'  %   (     7(     L(     ^(     p(     �(  "   �(  4   �(     �(  .   )     3)  ;   J)  3   �)  /   �)  +   �)  '   *  #   >*     b*     �*     �*  *   �*     �*  )   �*  !   +  '   8+  )   `+     �+     �+      �+      �+     �+     ,  	   ),     3,     F,     K,     `,  1   r,  2   �,  0   �,     -  #   #-     G-  )   c-  1   �-  -   �-     �-     	.     .     1.     B.     P.  "   k.  %   �.     �.     �.     �.     �.  	   �.     �.     /     /     #/  ,   3/     `/     n/     �/  
   �/     �/  a  �/  �   1    �1    �3  Q   �4  �   =5  1   �5  D   �5     76     U6  o   X6  p   �6  Q   97  d   �7  @   �7  �   18  /   �8  q   �8  y   ]9  k   �9  |   C:  2   �:  w   �:  D   k;  d   �;  �   <  r   �<  [   
=  a   f=  a   �=  m   *>  O   �>  o   �>  q   X?  y   �?  u   D@  f   �@  ^   !A  s   �A  h   �A  ?   ]B  Z   �B  �   �B  G   �C  b   �C  O   -D  !  }D  T   �F  ,   �F  �   !G  Q   �G  c   �G  I   [H  g   �H  <   I  c   JI  P   �I  t   �I  i   tJ  8   �J  Z   K  f   rK  X   �K  p   2L  ^   �L  \   M  U   _M  W   �M  0   N  =   >N  r   |N  G   �N  Z   7O  R  �O  <   �P  @   "Q  5   cQ  <   �Q  @   �Q  q   R  [   �R  �   �R  W   sS  @   �S  -   T  v   :T  j   �T  O   U  8   lU  5   �U  0   �U  +   V  G   8V  *   �V  2   �V  #   �V     W  ;   W  7   XW     �W  A   �W  9   �W  �    X  w   �X  ?   \Y     �Y  !   �Y  /   �Y  L   �Y  2   JZ     }Z     �Z     �Z     �Z  L   �Z  e   =[  8   �[  ^   �[     ;\  E   X\  9   �\  5   �\  1   ]  -   @]  )   n]  %   �]      �]     �]  G   �]  4   <^  M   q^  H   �^  O   _  U   X_  2   �_     �_  E   �_  ;   9`  E   u`  ,   �`     �`  $   a     &a  !   +a  1   Ma  ]   a  a   �a  O   ?b  6   �b  ?   �b  7   c  H   >c  Y   �c  X   �c  =   :d  C   xd  *   �d  #   �d     e  7   e  0   We  P   �e     �e     �e  *   f     @f     ^f  8   mf  
   �f     �f     �f  T   �f     @g  >   ^g  0   �g     �g  )   �g     F       x      �   G   M   �      %          �   �          I   �   �   1       g   )   6   �   <   j                      �   �   �   (      =   '           y       r   E   u   �   R   b          d   *   w   �   `           >   B   &   0      U   Y   O       �           .      S   2       e              _   D   $                   �   V   i   ]          #       t   h       [      ,       �   k       -   "           Z   8   7              �   �               
   �           J   z   �   m      q   v       {       l   �       Q          �   :       L   �   T   @       �   9   �   �   3   �   A   o   K         c      �          �      �   /           	   a       �       �      �   �   C       �   �   �          ?   ;   �   �   �   X       �      4   P   �   W             �   !   N                   |      ^   H   ~   �   p      �       �               \   �   }   n   +       s   �   f   �       5   �      �         Either GFMT or LFMT may contain:
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
 %s: diff failed:  (C) --GTYPE-group-format=GFMT  Similar, but format GTYPE input groups with GFMT. --LTYPE-line-format=LFMT  Similar, but format LTYPE input lines with LFMT. --binary  Read and write data in binary mode. --diff-program=PROGRAM  Use PROGRAM to compare files. --from-file and --to-file both specified --from-file=FILE1  Compare FILE1 to all operands.  FILE1 can be a directory. --help  Output this help. --horizon-lines=NUM  Keep NUM lines of the common prefix and suffix. --ignore-file-name-case  Ignore case when comparing file names. --line-format=LFMT  Similar, but format all input lines with LFMT. --no-ignore-file-name-case  Consider case when comparing file names. --normal  Output a normal diff. --speed-large-files  Assume large files and many scattered small changes. --strip-trailing-cr  Strip trailing carriage return on input. --tabsize=NUM  Tab stops are every NUM (default 8) print columns. --to-file=FILE2  Compare all operands to FILE2.  FILE2 can be a directory. --unidirectional-new-file  Treat absent first files as empty. -3  --easy-only  Output unmerged nonoverlapping changes. -A  --show-all  Output all changes, bracketing conflicts. -B  --ignore-blank-lines  Ignore changes whose lines are all blank. -D NAME  --ifdef=NAME  Output merged file to show `#ifdef NAME' diffs. -D option not supported with directories -E  --ignore-tab-expansion  Ignore changes due to tab expansion. -E  --show-overlap  Output unmerged changes, bracketing conflicts. -H  --speed-large-files  Assume large files and many scattered small changes. -I RE  --ignore-matching-lines=RE  Ignore changes whose lines all match RE. -L LABEL  --label=LABEL  Use LABEL instead of file name. -N  --new-file  Treat absent files as empty. -S FILE  --starting-file=FILE  Start with FILE when comparing directories. -T  --initial-tab  Make tabs line up by prepending a tab. -W  --ignore-all-space  Ignore all white space. -X  Output overlapping changes, bracketing them. -X FILE  --exclude-from=FILE  Exclude files that match any pattern in FILE. -a  --text  Treat all files as text. -b  --ignore-space-change  Ignore changes in the amount of white space. -b  --print-bytes  Print differing bytes. -c  -C NUM  --context[=NUM]  Output NUM (default 3) lines of copied context.
-u  -U NUM  --unified[=NUM]  Output NUM (default 3) lines of unified context.
  --label LABEL  Use LABEL instead of file name.
  -p  --show-c-function  Show which C function each change is in.
  -F RE  --show-function-line=RE  Show the most recent line matching RE. -d  --minimal  Try hard to find a smaller set of changes. -e  --ed  Output an ed script. -e  --ed  Output unmerged changes from OLDFILE to YOURFILE into MYFILE. -i  --ignore-case  Consider upper- and lower-case to be the same. -i  --ignore-case  Ignore case differences in file contents. -i  Append `w' and `q' commands to ed scripts. -i SKIP  --ignore-initial=SKIP  Skip the first SKIP bytes of input. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column  Output only the left column of common lines. -l  --paginate  Pass the output through `pr' to paginate it. -l  --verbose  Output byte numbers and values of all differing bytes. -m  --merge  Output merged file instead of ed script (default -A). -n  --rcs  Output an RCS format diff. -n LIMIT  --bytes=LIMIT  Compare at most LIMIT bytes. -o FILE  --output=FILE  Operate interactively, sending output to FILE. -q  --brief  Output only whether files differ. -r  --recursive  Recursively compare any subdirectories found. -s  --quiet  --silent  Output nothing; yield exit status only. -s  --report-identical-files  Report when two files are the same. -s  --suppress-common-lines  Do not output common lines. -t  --expand-tabs  Expand tabs to spaces in output. -v  --version  Output version info. -w  --ignore-all-space  Ignore all white space. -w NUM  --width=NUM  Output at most NUM (default 130) print columns. -x  --overlap-only  Output overlapping changes. -x PAT  --exclude=PAT  Exclude files that match PAT. -y  --side-by-side  Output in two columns.
  -W NUM  --width=NUM  Output at most NUM (default 130) print columns.
  --left-column  Output only the left column of common lines.
  --suppress-common-lines  Do not output common lines. Binary files %s and %s differ
 Common subdirectories: %s and %s
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
 conflicting %s option value `%s' conflicting output style options conflicting tabsize options conflicting width options directory extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid tabsize `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' could not be invoked symbolic link too many file label options typed memory object weird file write failed Project-Id-Version: diffutils 2.8.7
Report-Msgid-Bugs-To: bug-diffutils@gnu.org
POT-Creation-Date: 2010-05-03 17:01+0200
PO-Revision-Date: 2004-04-15 21:46-0400
Last-Translator: Aleksandar Jelenak <jelenak@netlinkplus.net>
Language-Team: Serbian <gnu@prevod.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
   Било ГОБЛ или РОБЛ могу садржати:
    %%  %
    %c'З'  само један знак „З“
    %c'\OOO'  знак са окталним кодом OOO   ГОБЛ може садржати:
    %<  редове из ДАТОТЕКА1
    %>  редове из ДАТОТЕКА2
    %=  редове заједничке у ДАТОТЕКА1 и ДАТОТЕКА2
    %[-][ШИРН][.[ТАЧН]]{doxX}СЛОВО  printf-стил за СЛОВО
      СЛОВО за нову групу, мала слова за стару групу:
        F  број првог реда
        L  број задњег реда
        N  број редова = L-F+1
        E  F-1
        M  L+1   РОБЛ може садржати:
    %L  садржај реда
    %l  садржај реда, изузев пратећих знакова за нови ред
    %[-][ШИРН][.[ТАЧН]]{doxX}n  printf-стил за улазни број реда   LTYPE је `old', `new', или `unchanged'. GTYPE је LTYPE или `changed'.   Изостави првих БРОЈ1 бајтова ДАТОТЕКА1 и првих БРОЈ2 бајтова ДАТОТЕКА2. %s %s различити: бајт %s, ред %s
 %s %s различити: бајт %s, ред %s је %3o %s %3o %s
 %s: diff неуспешан:  © --GTYPE-group-format=ГОБЛ  Слично, али обликуј GTYPE улазне групе са ГОБЛ. --LTYPE-line-format=РОБЛ  Слично, али обликуј LTYPE улазне редове са РОБЛ. --binary  Читај и пиши податке у бинарном режиму. --diff-program=ПРОГРАМ  Користи ПРОГРАМ за поређење датотека. „--from-file“ и „--to-file“ обоје наведени --from-file=ТЕКА1  Упореди ТЕКА1 са свим оперантима. ТЕКА1 може бити директоријум. --help  Испиши ово објашњење. --horizon-lines=БРЈ  Чувај БРЈ редова заједничког префикса и суфикса. --ignore-file-name-case  Занемари словну величину поређујући имена датотека. --line-format=РОБЛ  Слично, али обликуј све улазне редове са РОБЛ. --no-ignore-file-name-case  Урачунај словну величину поређујући имена датотека. --normal  Излаз је обичан „diff“. --speed-large-files  За велике датотеке са много раштрканих малих промена. --strip-trailing-cr  Оголи пратеће <CR> на улазу. --tabsize=БРЈ  Величина табулатора је БРЈ (почетно 8) колона. --to-file=ТЕКА2  Упореди све операнте са ТЕКА2. ТЕКА2 може бири директоријум. --unidirectional-new-file  Прве недостајуће датотеке се узимају за празне. -3  --easy-only  Испиши неспојене непреклопљене промене. -A  --show-all  Испиши све промене, означи заградама сукобе. -B  --ignore-blank-lines  Занемари промене услед празних редова. -D ИМЕ   --ifdef=ИМЕ   Испиши „#ifdef ИМЕ“ разлике спојене датотеке. опција „-D“ није подржана за директоријуме -E  --ignore-tab-expansion  Занемари промене услед развијања табулатора. -E  --show-overlap  Испиши неспојене промене, означи заградама сукобе. -H  --speed-large-files  За велике датотеке за много раштрканих малих измена. -I РИ  --ignore-matching-lines=РИ  Занемари промене чији редови поклапају РИ. -L ОЗНКА  --label=ОЗНКА  Користи ОЗНКА уместо имена датотеке. -N  --new-file  Недостајуће датотеке се узимају за празне. -S ТЕКА  --starting-file=ТЕКА  Почни од ТЕКА при поређењу директоријума. -T  --initial-tab  Поравнај табулаторе додајући један табулатор. -W  --ignore-all-space  Занемари све размаке. -X  Испиши и означи заградама преклопљене промене. -X ТЕКА  --exclude-from=ТЕКА  Изузми датотеке које поклапа било који образац у ТЕКА. -a  --text  Прихвати све датотеке као текст. -b  --ignore-space-change  Занемари промене због количине белине. -b  --print-bytes  Испиши бајтове који се разликују -c  -C БРЈ  --context[=БРЈ]  Испиши БРЈ (почетно 3) редова копираног склопа.
-u  -U БРЈ  --unified[=БРЈ]  Испиши БРЈ (почетно 3) редова обједињеног склопа.
  --label ОЗНАКА  Користи ОЗНАКА уместо имена датотеке.
  -p  --show-c-function  Прикажи Це функцију у којој је промена.
  -F РИ  --show-function-line=РИ  Прикажи најскорији ред који РИ поклапа. -d  --minimal  Потруди се да нађеш мањи скуп промена. -e  --ed  Излаз је „ed“ спис. -e  --ed  Испиши неспојене промене између СТАРАТЕКА и ТВОЈАТЕКА у МОЈАТЕКА. -i  --ignore-case  Сматрај велика и мала слова истим. -i  --ignore-case  Занемари словну величину у склопу датотека. -i  Придодај „w“ и „q“ наредбе ed списима. -i БРОЈ  --ignore-initial=БРОЈ  Изостави првих БРОЈ бајтова улаза. -i БРОЈ1:БРОЈ2  --ignore-initial=БРОЈ1:БРОЈ2 -l  --left-column  Испиши само леву колону заједничких редова. -l  --paginate  Пропусти излаз кроз „pr“ за прелом. -l  --verbose  Испиши редни број и вредност бајтова који се разликују. -m  --merge  Испиши спојену датотеку уместо ed списа (почетно -A). -n  --rcs  Излаз је RCS облик „diff-а“. -n БРОЈ  --bytes=БРОЈ    Пореди до највише БРОЈ бајтова. -o ТЕКА  --output=ТЕКА  Интерактивни рад, излаз се шаље у ТЕКА. -q  --brief  Пријави само да ли се датотеке разликују. -r  --recursive  Рекурзивно упореди све пронађене поддиректоријуме. -s  --quiet  --silent  Без исписа; пријави само излазно стање. -s  --report-identical-files  Пријави када су две датотеке исте. -s  --suppress-common-lines  Не приказуј заједничке редове. -t  --expand-tabs  Развиј табулаторе у размаке за излаз. -v  --version  Извести о верзији. -w  --ignore-all-space  Занемари сву белину. -w БРЈ  --width=БРЈ  Ширина излаза је највише БРЈ (почетно 130) колона. -x  --overlap-only  Испиши преклопљене промене. -x ОБР  --exclude=ОБР  Изузми датотеке које поклапа ОБР. -y  --side-by-side  Испис у две колоне.
  -W БРЈ  --width=БРЈ  Испис највише БРЈ (почетно 130) знакова.
  --left-column  Испис само леве колоне код заједничких редова.
  --suppress-common-lines  Не исписуј заједничке редове. Бинарне датотеке %s и %s различите
 Заједнички поддиректоријуми: %s и %s
 Поређење датотека ред по ред. Поређење три датотеке ред по ред. Поређење две датотеке бајт по бајт. Излазно стање је 0 ако су улази исти, 1 за различите, 2 за грешку. Излазно стање је 0 за успех, 1 за сукобе, 2 за грешку. ДАТОТЕКЕ су „ТЕКА1 ТЕКА2“ или „ДИР1 ДИР2“ или „ДИР ТЕКА...“ или „ТЕКА... ДИР“. Датотека „%s“ је „%s“ док је датотека „%s“ „%s“
 Датотеке „%s“ и „%s“ се подударају
 Датотеке %s и %s различите
 Нема ограничења за ДАТОТЕКЕ ако је „--from-file“ или „--to-file“ задато. Читати стандардни улаз ако ДАТОТЕКА недостаје или је „-“. Ако је ДАТОТЕКА „-“, читај стандардни улаз. Неисправна повратна референца Неправилно име класе знакова Неисправан колациони знак Неисправан садржај у \{\} Неисправан претходећи регуларни израз Неисправан крај опсега Неисправан регуларни израз Меморија исцрпљена Без поклапања Без новог реда на крају датотеке Без прошлог регуларног израза Само у %s: %s
 Преран завршетак регуларног израза Регуларни израз исувише велики Уз БРОЈ могу ићи и следећи умножавајући суфикси:
kB 1000, K 1024, MB 1,000,000, M 1,048,576, GB 1,000,000,000, G 1,073,741,824,
итд. за T, P, E, Z, Y. БРОЈ1 и БРОЈ2 су бројеви бајтова за изостављање у свакој датотеци. Упоредно стапање разлика датотека Успешно Торбјорн Гранлунд Пратећа обрнута коса црта Покушајте `%s --help' за подробније објашњење. Непозната системска грешка Неупарено ( или \( Неупарено ) или \) Неупарено [ или [^ Неупарено \{ Употреба: %s [ОПЦИЈА]... ДАТОТЕКА1 ДАТОТЕКА22
 Употреба: %s [ОПЦИЈА]... ДАТОТЕКА1 [ДАТОТЕКА2 [БРОЈ1 [БРОЈ2]]]
 Употреба: %s [ОПЦИЈА]... ДАТОТЕКЕ
 Употреба: %s [ОПЦИЈА]... МОЈАТЕКА СТАРАТЕКА ТВОЈАТЕКА
 Написали: %s и %s.
 Написали: %s, %s, %s,
%s, %s, %s, %s,
%s, %s, и други.
 Написали: %s, %s, %s,
%s, %s, %s, %s,
%s, и %s.
 Написали: %s, %s, %s,
%s, %s, %s, %s,
и %s.
 Написали: %s, %s, %s,
%s, %s, %s, и %s.
 Написали: %s, %s, %s,
%s, %s, и %s.
 Написали: %s, %s, %s,
%s, и %s.
 Написали: %s, %s, %s,
и %s.
 Написали: %s, %s и %s.
 Написао: %s.
 „-“ наведено за више од једне датотеке датотека блоковског уређаја обе датотеке за поређење су директоријуми не може поредити „-“ са директоријумом не може поредити имена датотека „%s“ и „%s“ не може интерактивно уклопити стандардни улаз датотека знаковног уређаја cmp: EOF на %s
 сукоб због вредности „%s“ опције „%s“ сукобљене опције излазног стила сукобљене опције величине табулатора сукобљене опције ширине директоријум вишак оператор „%s“ fifo несагласне опције улазна датотека се скупила интерна грешка: неисправна „diff“ врста у „process_diff“ унутрашња грешка: неисправан diff тип прослеђен излазу интерна грешка: зез у формату „diff“ блокова неисправна --bytes вредност „%s“ неисправна --ignore-initial вредност „%s“ неисправна дужина склопа „%s“ неисправан diff облик; непотпун задњи ред неисправан diff облик; нетачни водећи знакови реда неисправан diff облик; неважећи раздвојник измена неисправна дужина видокруга „%s“ неисправна величина табулатора „%s“ неисправна дужина „%s“ меморија исцрпљена ред порука недостаје оператор после „%s“ опције -l и -s не иду заједно прелом страна није подржан на овом рачунару грешка програма неуспело читање обична празна датотека обична датотека семафор заједнички меморијски објекат сокет стек препуњен стандардни излаз помоћни програм „%s“ није могао бити покренут симболичка веза исувише опција за ознаку датотека типски меморијски објекат чудна датотека записивање неуспешано 