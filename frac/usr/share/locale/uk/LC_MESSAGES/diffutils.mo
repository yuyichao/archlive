��    �      �  �         �  ~   �  p  0  �   �  F   P  I   �     �  0        2  L   D  J   �  -   �  5   
  (   @  L   i     �  D   �  ?     B   U  D   �     �  I   �  =   G  A   �  J   �  =     8   P  9   �  C   �  F     (   N  @   w  B   �  M   �  K   I  8   �  ,   �  J   �  9   F  /   �  0   �  K   �  $   -  G   R  )   �  V  �  9        U  G   t  A   �  <   �  .   ;  C   j  ,   �  ?   �  <     E   X  B   �  %   �  5     F   =  .   �  >   �  >   �  A   1   8   s   3   �   #   �   /   !  D   4!  /   y!  4   �!  �   �!  !   �"     �"  !   #     %#  F   E#  =   �#  I   �#  &   $     ;$     Z$  I   r$  1   �$  &   �$     %     ,%     I%     e%  $   }%     �%     �%     �%     �%     �%     &     "&  #   2&     V&  �   q&  =   #'  '   a'     �'     �'     �'  %   �'     �'     �'     (     (     '(  "   4(  4   W(     �(  .   �(     �(  ;   �(  3   +)  /   _)  +   �)  '   �)  #   �)     *     '*     C*  *   S*     ~*  )   �*  !   �*  '   �*  )   +     /+     F+      V+      w+     �+     �+  	   �+     �+     �+     �+     ,  1   ,  2   I,  0   |,     �,  #   �,     �,  )   -  1   2-  -   d-     �-     �-     �-     �-     �-     �-  "   .  %   3.     Y.     g.     s.     �.  	   �.     �.     �.     �.     �.  ,   �.     /     /     //  
   C/     N/  ~  [/  �   �0  P  �1    �3  j   5  t   n5  =   �5  \   !6  A   ~6  �   �6  �   �7  ]   f8  |   �8  G   A9  �   �9  ;   :     M:  e   �:  w   3;  j   �;  G   <  �   ^<  o   �<  l   Z=  �   �=  d   J>  l   �>  o   ?  k   �?  �   �?  M   �@  x   �@     RA  �   �A  �   {B  g   QC  N   �C  q   D  �   zD  N   �D  K   JE  �   �E  B   [F  _   �F  P   �F  �  OG  X   �I  /   PJ  �   �J  B   K  _   KK  O   �K  s   �K  $   oL  c   �L  r   �L  l   kM  p   �M  2   IN  u   |N  s   �N  Q   fO  T   �O  j   P  T   xP  M   �P  p   Q  W   �Q  C   �Q  �   (R  S   �R  �   (S  a  �S  2   U  5   BU  <   xU  5   �U  �   �U  �   �V  �   YW  5   �W  )   'X  1   QX  `   �X  �   �X  m   mY  )   �Y  ;   Z  ?   AZ  (   �Z  M   �Z  *   �Z  8   #[  5   \[  '   �[  B   �[  I   �[     G\  G   [\  9   �\  �   �\  r   �]  M   C^     �^     �^  D   �^  ]   �^  0   U_     �_     �_     �_     �_  ?   �_  U   #`  6   y`  a   �`  -   a  S   @a  I   �a  E   �a  A   $b  =   fb  9   �b  5   �b  1   c  #   Fc  T   jc  B   �c  N   d  ?   Qd  L   �d  k   �d  H   Je  #   �e  A   �e  N   �e  ^   Hf  K   �f     �f      g  
   #g     .g  *   Lg  s   wg  m   �g  X   Yh  6   �h  ?   �h  ?   )i  c   ii  g   �i  m   5j  ?   �j  =   �j  *   !k      Lk  !   mk  1   �k  0   �k  _   �k     Rl     rl  ,   �l     �l     �l  -   �l  
   m  #   !m  !   Em  Q   gm  %   �m  a   �m  )   An     kn     �n        +   �               9   X          o   �   �       u   ~   �       q   $      �   �       a   �      d   r   0      |   j   W      e          �              F   .      �       �       
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
 conflicting %s option value `%s' conflicting output style options conflicting tabsize options conflicting width options directory extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid tabsize `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' could not be invoked symbolic link too many file label options typed memory object weird file write failed Project-Id-Version: diffutils 2.8.7
Report-Msgid-Bugs-To: bug-diffutils@gnu.org
POT-Creation-Date: 2010-05-03 17:01+0200
PO-Revision-Date: 2007-01-03 13:55+0300
Last-Translator: Maxim V. Dziumanenko <dziumanenko@gmail.com>
Language-Team: Ukrainian <translation-team-uk@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
   Обидва ГФМТ та СФМТ можуть містити:
    %%  %
    %c'С'  один символ С
    %c'\OOO'  один символ з вісімковим кодом OOO   ГФМТ може містити:
    %<  рядки з ФАЙЛУ1
    %>  рядки з ФАЙЛУ2
    %=  рядки, спільні для ФАЙЛА1 та ФАЙЛА2
    %[-][ШИРИНА][.[ТОЧН]]{doxX}ЛІТЕРА  формат для ЛІТЕРА у стилі printf
      ЛІТКРА має наступні значення для нових груп, маленькі для старих:
        F  номер першого рядка
        L  номер останнього рядка
        N  кількість рядків = L-F+1
        E  F-1
        M  L+1   СФМТ може містити:
    %L  вміст рядка
    %l  вміст рядка, за винятком нових рядків наприкінці
    %[-][ШИРИНА][.[ТОЧН]]{doxX}n  формат номеру вхідного рядка у стилі printf   СТИП може бути `old', `new', чи `unchanged', ГТИП - те ж саме або `changed'. Пропустити перші Н1 байт файлу ФАЙЛ1 та перші Н2 байт файлу ФАЙЛ2. %s %s відрізняються: байт %s, рядок %s
 %s %s відрізняються: байт %s, рядок %s дорівнює %3o %s %3o %s
 %s: помилка при пошуку відмінностей:  --ГТИП-group-format=ГФМТ  Аналогічно, але форматувати вхідні групи типу ГТИП
                          у відповідності до формату ГФМТ. --СТИП-group-format=СФМТ  Аналогічно, але форматувати вхідні рядки типу СТИП
                          у відповідно до формату СФМТ. --binary  Читати та записувати файли у двійковій формі. --diff-program=ПРОГРАМА  Використовувати для порівняння вказану ПРОГРАМУ. необхідно вказати як --from-file, так і --to-file --from-file=ФАЙЛ1  Порівняти ФАЙЛ1 з усіма операндами. ФАЙЛ1 може бути каталогом. --help  Вивести цю довідку та вийти. --horizon-lines=ЧИСЛО  Виводити ЧИСЛО спільних рядків, до та після відмінних. --ignore-file-name-case  Ігнорувати регістр літер у назвах файлів. --line-format=СФМТ  Аналогічно, але форматувати всі вхідні рядки з СФМТ. --no-ignore-file-name-case  Враховувати регістр літер у іменах файлів. --normal  Виводити у звичайному форматі diff. --speed-large-files  Вважати файли великими з багатьма розкиданими дрібними змінами. --strip-trailing-cr  Видалити на виводі заключне переведення каретки. --tabsize=ЧИСЛО  Табуляція через вказане ЧИСЛО знаків (типово 8). --to-file=ФАЙЛ2  Порівняти всі операнди з ФАЙЛОМ 2. ФАЙЛ2 може бути каталогом. --unidirectional-new-file  Вважати відсутні перші файли порожніми. -3  --easy-only  Виводити не об'еднані зміни, що не перекриваються. -A  --show-all  Виводити всі зміни, беручи конфліктні місця у дужки. -B  --ignore-blank-lines  Ігнорувати зміни кількості порожніх рядків. -D НАЗВА  --ifdef=НАЗВА  Виводити dsff-блоки, що використовують конструкцію `#ifdef НАЗВА'. -D параметр не підтримується для каталогів -E  --ignore-tab-expansion  Ігнорувати зміни, викликані розкриттям табуляції. -E  --show-overlap  Вивести необ'єднані зміни, беручи конфліктні місця у дужки -H  --speed-large-files  Вважати файли великими з багатьма розкиданими
                         дрібними змінами. -I РВ  --ignore-matching-lines=РВ  Ігнорувати зміни, рядки яких повністю
                        відповідають вказаному регулярному виразу. -L МІТКА  --label=МІТКА  Використовувати МІТКУ замість файлу. -N  --new-file  Вважати відсутні файли порожніми. -S ФАЙЛ  --starting-file=ФАЙЛ  При порівнянні каталогів почати з ФАЙЛУ. -T  --initial-tab  Вирівнювати табуляцію додаючи на початок символ табуляції. -W  --ignore-all-space  Ігнорувати усі типи пробілів. -X  Брати у дужки зміни, що перекриваються. -X ФАЙЛ  --exclude-from=ФАЙЛ  Виключити файли, назви яких збігаються з якимось
                              із записаних у ФАЙЛІ. -a  --text  Вважати усі файли текстовими. -b  --ignore-space-change  Ігнорувати зміни кількості пробілів. -b  --print-bytes  Виводити байти, що відрізняються. -c  -C ЧИСЛО  --context[=ЧИСЛО]  Копіювати ЧИСЛО (типово 3) рядків контексту.
-u  -U ЧИСЛО  --unified[=ЧИСЛО]  Виводити ЧИСЛО (типово 3) рядків об'єднаного контексту.
  -L МІТКА  --label МІТКА  Використовувати МІТКУ замість імені файлу.
  -p  --show-c-function  Виводити C-функцію, що містить зміну.
  -F РВ  --show-function-line=РВ  Показувати останній рядок, що збігається
                                  із заданим регулярним виразом. -d  --minimal  Намагатись знайти найменший набір змін. -e  --ed  Виводити сценарій ed. -e  --ed  Виводить необ'еднані зміни у СТАРОМУ-ФАЙЛІ з ВАШОГО-ФАЙЛУ у МІЙ-ФАЙЛ. -i  --ignore-case  Ігнорувати регістр літер. -i  --ignore-case  Ігнорувати регістр літер у вмісті файлів. -i  Додати команди `w' и `q' в кінець сценарію ed. -i Н  --ignore-initial=Н  ігнорувати розбіжності у перших Н байтах вводу. -i Н1:Н2  --ignore-initial=Н1:Н2 -l  --left-column  Виводити лише ліву колонку спільних рядків. -l  --paginate  Направити вивід програми `pr' для розбиття на сторінки. -l  --verbose  Виводити номери та значення усіх відмінних байтів. -m  --merge  Виводити об'еднаний файл замість сценарію ed (типово -A). -n  --rcs  Виводити у форматі RCS. -n МЕЖА  --bytes=МЕЖА  Порівнювати не більше вказаної кількості байт. -o ФАЙЛ  --output=ФАЙЛ  Інтерактивний режим із записом виводу у ФАЙЛ. -q  --brief  Вивести лише, чи відрізняються файли. -r  --recursive  Рекурсивно порівнювати підкаталоги. -s  --quiet  --silent  Не виводити, лише повернути значення статусу. -s  --report-identical-files  Сповіщати про однакові файли. -s  --suppress-common-lines  Не виводити спільні рядки. -t  --expand-tabs  Розкривати при виводі символи табуляції у пробіли. -v  --version  Вивести інформацію про версію та вийти. -w  --ignore-all-space  Ігнорувати усі пробіли. -w ЧИСЛО  --width=ЧИСЛО  Виводити не більше вказаного ЧИСЛА знаків у рядку.
                         (типово 130) -x  --overlap-only  Виводити зміни, що перекриваються. -x ЗРАЗОК --exclude=ЗРАЗОК  Виключити файли, назви яких збігаються зі ЗРАЗКОМ. -y  --side-by-side  Виводити у дві колонки.
  -W ЧИСЛО  --width=ЧИСЛО  Не більше ЧИСЛО знаків у рядку. (типово 130)
  --left-column  Виводити лише ліву колонку загальних рядків.
  --suppress-common-lines  Не виводити загальні рядки. Спільні підкаталоги: %s та %s
 Порівнює два файли по рядках. Порівняння трьох файлів рядками. Порівнює два файли по байтах. Код завершення дорівнює 0, якщо вхідні файли ідентичні, 1 -- якщо
відрізняються, та 2 при виникненні помилок. Код завершення дорівнює 0 при нормальному завершенні, 1 при конфліктах
 та 2 при несправностях. ФАЙЛИ  - це `ФАЙЛ1 ФАЙЛ2', чи `КАТАЛОГ1 КАТАЛОГ2', чи `КАТАЛОГ ФАЙЛ...',
чи `ФАЙЛ... КАТАЛОГ'. Файл %s це %s, тоді як файл %s -- %s
 Файли %s та %s ідентичні
 Файли %s та %s відрізняються
 Якщо вказано --from-file чи --to-file, на ФАЙЛИ обмежень немає. Якщо ФАЙЛ не вказаний чи вказаний як `-', читається стандартний потік вводу. Якщо ФАЙЛ вказаний як `-', читається стандартний потік вводу. Неправильне посилання Неправильна назва класу символу Некоректний символ для сортування Неправильний вміст \{\} Неправильний попередній регулярний вираз Неправильна нижня межа Неправильний регулярний вираз Оперативну пам'ять вичерпано Немає відповідностей Наприкінці файлу немає нового рядка Регулярний вираз не було вказано раніше Лише у %s: %s
 Передчасний кінець регулярного виразу Регулярний вираз надто великий До значень Н можна приписувати один з наступних суфіксів множення:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, і так далі для T, P, E, Z, Y. Н1 та Н2 - кількість байтів, які слід пропустити у кожному файлі. Інтерактивно об'єднує відмінності файлів. Успішно Torbjorn Granlund Зворотна коса риска стоїть останньою Спробуйте `%s --help' для отримання докладнішого опису. Невідома системна помилка Непарна ( чи \( Непарна ) чи \) Непарна [ чи [^ Непарна \{ Використання: %s [КЛЮЧ]... ФАЙЛ1 ФАЙЛ2
 Використання: %s [ПАРАМЕТР]... ФАЙЛ1 [ФАЙЛ2 [Н1 [Н2]]]
 Використання: %s [КЛЮЧ]... ФАЙЛИ
 Використання: %s [КЛЮЧ]... МІЙ-ФАЙЛ СТАРИЙ-ФАЙЛ ВАШ-ФАЙЛ
 Автори програми -- %s та %s.
 Автори програми -- %s, %s, %s,
%s, %s, %s, %s,
%s, %s та інші.
 Автори програми -- %s, %s, %s,
%s, %s, %s, %s,
%s та %s.
 Автори програми -- %s, %s, %s,
%s, %s, %s, %s
та %s.
 Автори програми -- %s, %s, %s,
%s, %s, %s та %s.
 Автори програми -- %s, %s, %s,
%s, %s та %s.
 Автори програми -- %s, %s, %s,
%s та %s.
 Автори програми -- %s, %s, %s
та %s.
 Автори програми -- %s, %s та %s.
 Автор програми -- %s.
 `-' вказано для більш ніж одного вхідного файлу спеціальний файл з блочним доступом обидва файли, що порівнюються є каталогами неможливо порівняти `-' з каталогом неможливо порівняти назви файлів `%s' та `%s' не можна інтерактивно об'єднувати стандартний потік вводу спеціальний файл з символьним доступом cmp: кінець файлу у %s
 суперечливі значення %s для ключа `%s' суперечливі ключі визначення стилю виводу суперечливі параметри визначення ширини табуляції суперечливі параметри визначення ширини каталог зайвий операнд `%s' черга несумісні ключі вхідний файл зменшився внутрішня помилка: неправильний тип diff-блоку у функції `process_diff' внутрішня помилка: на вхід подано неправильний тип diff-файлу внутрішня помилка: пошкоджений формат diff-блоків неприпустиме значення --bytes `%s' неприпустиме значення --ignore-initial `%s' неприпустима довжина контексту `%s' неправильний формат diff-файлу; неповний останній рядок неправильний diff-формат; неправильні перші символи рядка неправильний формат diff-файлу; неправильний розділювач змін неприпустима довжина горизонту `%s' неприпустима ширина табуляції `%s' неприпустима ширина `%s' па'мять вичерпано черга повідомлень пропущено операнд після `%s' параметри -l та -s несумісні розбиття на сторінки не підтримується на цій машині помилка програми помилка читання звичайний порожній файл звичайний файл семафор об'ект у спільній пам'яті сокет переповнення стеку стандартний вивід не вдається запустити допоміжну програму `%s' символьне посилання надто багато параметрів, що вказують позначки файлів об'ект пам'яті з типами дивний файл запис невдалий 