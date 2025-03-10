��    p      �  �         p	  �   q	  �   A
  0    �  =       /    %  M  ~  s  Q  �  g  D  k  �  G    %   `     �  0   �     �     �  ,     ,   1  '   ^  -   �      �  (   �  (   �     '     G     g     i     m     ~  Q   �     �  ?        B     Y     v     �  $   �     �     �  <   �  <   9     v     �     �     �  5   �  1   �  :   $     _     o  #   �     �     �  3   �            &   )     P     e     w     �     �  (   �     �  �   �     �  ;   �  3     /   K  +   {  '   �  #   �     �           /      ?   q   A      �   4   �      !  )   $!  Z   N!  F   �!     �!     "     '"     B"     Z"     z"     �"  $   �"     �"     �"     �"     �"  >   #     L#  M   e#  P   �#  ,   $     1$     >$     K$     X$     l$     �$     �$     �$     �$     �$  �  �$  �  �&  �  :(    �)  �  	,  @   �/  �  )0  �  �2  �  94  �  67  �  �9  �  ;<    �>  _   A  )   mA  F   �A  A   �A  7    B  i   XB  i   �B  L   ,C  j   yC  >   �C  M   #D  N   qD  1   �D  1   �D     $E     'E  ?   *E  A   jE  �   �E  /   7F  �   gF  8   G  ;   OG  8   �G  &   �G  N   �G  <   :H  5   wH  �   �H  �   8I      �I     �I     �I  R   J  �   ZJ  P   �J  ]   1K     �K     �K  O   �K  @   L  D   [L  �   �L  
   "M  7   -M  Y   eM  0   �M  C   �M  C   4N  C   xN  :   �N  N   �N  5   FO  �  |O     dQ  @   }Q  4   �Q  1   �Q  ,   %R  (   RR  $   {R      �R     �R     �R     �R  �   �R  3   �S  �   �S  P   �T  P   �T  �   5U  |   �U  C   bV  7   �V  /   �V  0   W  G   ?W  9   �W  <   �W  F   �W     EX  Q   ZX      �X  &   �X  D   �X  O   9Y  �   �Y  }   =Z  [   �Z  )   [  )   A[  )   k[  3   �[  ;   �[  9   \  H   ?\      �\     �\     �\     `   Q   k   <      D       /   Z   S   2       "       d   H           p   [         M   >       W                  a   o   8   P      j   \          .          A      5   @          $           4   '           K   =       i   O           F   ^   0   h           ?          )   b       9      T   3             L   1   !   &   :   _   N   E       ]      g   	   C       G       e   #   Y       -      R   +      7   c   %   *      f   ;       X   6      U                 V   m       B       I      ,               l       J                  (      
   n           
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
 
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             print version information and exit
      --help                display this help and exit
      --mmap                ignored for backwards compatibility
 
Output control:
  -m, --max-count=NUM       stop after NUM matches
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print the filename for each match
  -h, --no-filename         suppress the prefixing filename on output
      --label=LABEL         print LABEL as filename for standard input
 
Report bugs to: %s
       --include=FILE_PATTERN  search only files that match FILE_PATTERN
      --exclude=FILE_PATTERN  skip files and directories matching FILE_PATTERN
      --exclude-from=FILE   skip files matching any file pattern from FILE
      --exclude-dir=PATTERN  directories that match PATTERN will be skipped.
   -E, --extended-regexp     PATTERN is an extended regular expression (ERE)
  -F, --fixed-strings       PATTERN is a set of newline-separated fixed strings
  -G, --basic-regexp        PATTERN is a basic regular expression (BRE)
  -P, --perl-regexp         PATTERN is a Perl regular expression
   -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is `read', `recurse', or `skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is `read' or `skip'
  -R, -r, --recursive       equivalent to --directories=recurse
   -L, --files-without-match  print only names of FILEs containing no match
  -l, --files-with-matches  print only names of FILEs containing matches
  -c, --count               print only a count of matching lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
   -NUM                      same as --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is `always', `never', or `auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS)
  -u, --unix-byte-offsets   report offsets as if CRs were not there (MSDOS)

   -e, --regexp=PATTERN      use PATTERN for matching
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
   -o, --only-matching       show only the part of a line matching PATTERN
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is `binary', `text', or `without-match'
  -a, --text                equivalent to --binary-files=text
 %s can only use the %s pattern syntax %s home page: <%s>
 %s home page: <http://www.gnu.org/software/%s/>
 %s%s argument `%s' too large %s: invalid option -- '%c'
 %s: option '%c%s' doesn't allow an argument
 %s: option '--%s' doesn't allow an argument
 %s: option '--%s' requires an argument
 %s: option '-W %s' doesn't allow an argument
 %s: option '-W %s' is ambiguous
 %s: option '-W %s' requires an argument
 %s: option requires an argument -- '%c'
 %s: unrecognized option '%c%s'
 %s: unrecognized option '--%s'
 ' (C) (standard input) Binary file %s matches
 Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 GNU Grep home page: <%s>
 General help using GNU software: <http://www.gnu.org/gethelp/>
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression Invocation as `egrep' is deprecated; use `grep -E' instead.
 Invocation as `fgrep' is deprecated; use `grep -F' instead.
 Memory exhausted Mike Haertel No match No previous regular expression PATTERN is a set of newline-separated fixed strings.
 PATTERN is an extended regular expression (ERE).
 PATTERN is, by default, a basic regular expression (BRE).
 Packaged by %s
 Packaged by %s (%s)
 Premature end of regular expression Regular expression too big Report %s bugs to: %s
 Search for PATTERN in each FILE or standard input.
 Success Trailing backslash Try `%s --help' for more information.
 Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [ or [^ Unmatched \{ Usage: %s [OPTION]... PATTERN [FILE]...
 Valid arguments are: With no FILE, or when FILE is -, read standard input.  If less than two FILEs
are given, assume -h.  Exit status is 0 if any line was selected, 1 otherwise;
if any error occurs and -q was not given, the exit status is 2.
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
 ` `egrep' means `grep -E'.  `fgrep' means `grep -F'.
Direct invocation as either `egrep' or `fgrep' is deprecated.
 ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified in GREP_COLORS="%s", the "%s" capacity %s in GREP_COLORS="%s", the "%s" capacity is boolean and cannot take a value ("=%s"); skipped in GREP_COLORS="%s", the "%s" capacity needs a value ("=..."); skipped input is too large to count invalid %s%s argument `%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument `%s' lseek failed malformed repeat count memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop stopped processing of ill-formed GREP_COLORS="%s" at remaining substring "%s" support for the -P option is not compiled into this --disable-perl-regexp binary the -P option only supports a single pattern unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unfinished repeat count unknown binary-files type unknown devices method warning: %s: %s write error writing output Project-Id-Version: grep 2.7
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2011-06-21 20:06+0200
PO-Revision-Date: 2011-02-12 13:24+0200
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <translation-team-uk@lists.sourceforge.net>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 1.2
 
Керування контекстом:
  -B, --before-context=ЧИСЛО показати ЧИСЛО рядків перед рядком з відповідником
  -A, --after-context=ЧИСЛО  показати ЧИСЛО рядків після рядка з відповідником
  -C, --context=ЧИСЛО        показати ЧИСЛО рядків контексту виведених даних
 
Умови ліцензування викладено у GPLv3+: GNU GPL версії 3 або новішій, <http://gnu.org/licenses/gpl.html>
Це вільне програмне забезпечення: ви можете вільно змінювати і поширювати його.
Вам не надається ЖОДНИХ ГАРАНТІЙ, окрім гарантій передбачених законодавством.
 
Інше:
  -s, --no-messages         придушити повідомлення про помилки
  -v, --invert-match        вибирати рядки без збіжностей
  -V, --version             показати дані щодо версії і завершити роботу
      --help                показати ці довідкові дані і завершити роботу
      --mmap                ігнорується, призначено для зворотної сумісності
 
Керування виведенням даних:
  -m, --max-count=ЧИСЛО     зупинитися після виявлення кількості відповідників, що дорівнює ЧИСЛУ
  -b, --byte-offset         показувати позиції у байтах разом з виведеними рядками
  -n, --line-number         показувати номери рядків разом з виведеними рядками
      --line-buffered       спорожняти буфер після виведення кожного рядка
  -H, --with-filename       показувати для кожного відповідника назву файла
  -h, --no-filename         не показувати назв файлів у виведених даних
      --label=МІТКА         показувати МІТКУ замість назви файла для стандартного джерела вхідних даних
 
Повідомляйте про вади на адресу: %s
       --include=ШАБЛОН_НАЗВИ  шукати лише у файлах, назви яких відповідають виразу ШАБЛОН_НАЗВИ
      --exclude=ШАБЛОН_НАЗВИ  не шукати у файлах і каталогах, назви яких відповідають виразу ШАБЛОН_НАЗВИ
      --exclude-from=ФАЙЛ     пропустити файли, назви яких відповідають будь-якому з шаблонів з ФАЙЛа
      --exclude-dir=ШАБЛОН    пропустити каталоги, назви яких відповідають ШАБЛОНу.
   -E, --extended-regexp     ШАБЛОН є розширеним формальним виразом (ERE)
  -F, --fixed-strings       ШАБЛОН є набором рядків, розділених \n
  -G, --basic-regexp        ШАБЛОН є звичайним формальним виразом (BRE)
  -P, --perl-regexp         ШАБЛОН є формальним виразом Perl
   -I                        те саме, що і --binary-files=without-match
  -d, --directories=ДІЯ     визначити спосіб обробки каталогів;
                            ДІЄЮ може бути `read' (прочитати), `recurse'
                            (обробити рекурсивно) або `skip' (пропустити)
  -D, --devices=ДІЯ         визначити спосіб обробки файлів пристроїв, FIFO
                            та сокетів;
                            ДІЄЮ може бути `read' (прочитати) або `skip'

                            (пропустити)
  -R, -r, --recursive       те саме, що і --directories=recurse
   -L, --files-without-match показати назви лише тих файлів, у яких не виявлено відповідників
  -l, --files-with-matches  показати назви лише тих файлів, у яких виявлено відповідники
  -c, --count               показувати лише вказану кількість рядків-відповідників на ФАЙЛ
  -T, --initial-tab         вирівнювати результати табуляцією (якщо потрібно)
  -Z, --null                вивести байти 0 після назви ФАЙЛа
   -ЧИСЛО                     те саме, що і --context=ЧИСЛО
      --color[=ДЕ],
      --colour[=ДЕ]          використовувати маркери для позначення
                             рядків з відповідниками
                             ДЕ може приймати значення "always", "never" чи "auto".
  -U, --binary               не вилучати символи CR на кінці рядка (MSDOS)
  -u, --unix-byte-offsets    вказувати позицію без врахування символів
                             CR (MSDOS)

   -e, --regexp=ШАБЛОН       використовувати ШАБЛОН для встановлення відповідності
  -f, --file=ФАЙЛ           взяти ШАБЛОН із ФАЙЛа
  -i, --ignore-case         ігнорувати регістр літер
  -w, --word-regexp         використовувати ШАБЛОН лише для пошуку цілих слів
  -x, --line-regexp         використовувати ШАБЛОН лише для пошуку цілих рядків
  -z, --null-data           рядки даних закінчуються байтом "0", а не символом
                            кінця рядка (\n)
   -o, --only-matching       показувати лише частину рядка, яка збігається з ШАБЛОНом
  -q, --quiet, --silent     придушити виведення всіх звичайних даних
      --binary-files=ТИП    припускати, що всі бінарні файли належать до ТИПу;
                            ТИПом може бути `binary', `text' або `without-match'
  -a, --text                те саме, що і --binary-files=text
 У %s можна використовувати лише синтаксис шаблонів %s Домашня сторінка %s: <%s>
 Домашня сторінка %s: <http://www.gnu.org/software/%s/>
 %s%s, аргумент «%s» є занадто об’ємним %s: некоректний параметр — «%c»
 %s: додавання аргументів до параметра «%c%s» не передбачено
 %s: додавання аргументів до параметра «--%s» не передбачено
 %s: до параметра «--%s» слід додати аргумент
 %s: додавання аргументів до параметра «-W %s» не передбачено
 %s: параметр «-W %s» не є однозначним
 %s: до параметра «-W %s» слід додати аргумент
 %s: до параметра слід додати аргумент — «%c»
 %s: невідомий параметр «%c%s»
 %s: невідомий параметр «--%s»
 » © (стандартне джерело вхідних даних) Двійковий файл %s містить збіжність
 Приклад: %s -i 'hello world' menu.h main.c

Вибір за формальними виразами і інтерпретація:
 Домашня сторінка GNU Grep: <%s>
 Загальна довідкова інформація щодо використання програмного забезпечення GNU: <http://www.gnu.org/gethelp/>
 Некоректне зворотне посилання Некоректна назва класу символів Некоректний символ порівняння Некоректний вміст \{\} Помилка у попередньому формальному виразі Некоректне завершення діапазону Помилка у формальному виразі Виклик команди «egrep» вважається застарілим, скористайтеся командою «grep -E».
 Виклик команди «fgrep» вважається застарілим, скористайтеся командою «grep -F».
 Пам'ять вичерпано Mike Haertel Не знайдено Не виявлено попереднього формального виразу ШАБЛОН є набором незмінних рядків, відокремлених символом нового рядка.
 ШАБЛОНОМ є розширений формальний вираз (ERE).
 ШАБЛОНом, типово, є звичайний формальний вираз (BRE).
 Пакування — %s
 Пакування — %s (%s)
 Неочікуване завершення формального виразу Занадто об’ємний формальний вираз Про вади у %s повідомляйте на адресу %s
 Шукати ШАБЛОН у кожному ФАЙЛі або стандартному джерелі вхідних даних.
 Успіх Кінцевий символ похилої риски Виконайте команду «%s --help», щоб дізнатися більше.
 Невідома системна помилка Неврівноважена послідовність ( або \( Неврівноважена послідовність ) або \) Неврівноважена послідовність [ або [^ Неврівноважена послідовність \{ Використання: %s [ПАРАМЕТР]... ШАБЛОН [ФАЙЛ]...
 Список коректних аргументів: Якщо не вказано ФАЙЛ або ФАЙЛом є -, читати дані зі стандартного джерела вхідних
даних. Якщо вказано менше ніж два ФАЙЛи, буде використано -h.  Код завершення 0 —
якщо було виявлено відповідники, 1 — коли їх нема, 2 — якщо сталася помилка
і не було використано параметр -q.
 Автори: %s і %s.
 Автори: %s, %s, %s,
%s, %s, %s, %s,
%s, %s та інші.
 Автори: %s, %s, %s,
%s, %s, %s, %s,
%s і %s.
 Автори: %s, %s, %s,
%s, %s, %s, %s,
і %s.
 Автори: %s, %s, %s,
%s, %s, %s і %s.
 Автори: %s, %s, %s,
%s, %s і %s.
 Автори: %s, %s, %s,
%s і %s.
 Автори: %s, %s, %s
і %s.
 Автори: %s, %s і %s.
 Автор — %s.
 « «egrep» відповідає команді «grep -E». «fgrep» — «grep -F».
Безпосередній виклик команд «egrep» та «fgrep» використовувати не варто.
 неоднозначний аргумент, %s, %s синтаксичну конструкцію класу символів слід визначати так: [[:space:]], а не так: [:space:] задані умови відповідності є суперечливими у GREP_COLORS="%s" значення "%s" надано властивості %s у GREP_COLORS="%s" властивість "%s" може приймати лише булеві значення, а не інші значення ("=%s"); пропущено у GREP_COLORS="%s" для властивості "%s" слід вказати значення ("=..."); пропущено вхідні дані занадто довгі для обліку некоректний аргумент %s%s — «%s» некоректний аргумент, %s, %s некоректний клас символів помилковий аргумент довжини контексту некоректний вираз порівняння %s помилкова максимальна кількість некоректний суфікс у аргументі %s%s: «%s» помилка lseek помилкове форматування лічильника повторів пам'ять вичерпано не вказано синтаксис інші, див. <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> зациклення рекурсивного проходу каталогів припинено обробку виразу GREP_COLORS="%s" з помилковим форматуванням, залишковий підрядок з помилкою: "%s" цей виконуваний файл зібрано без підтримки параметра -P (--disable-perl-regexp) аргументом параметра -P може бути лише один шаблон неврівноважена дужка ( неврівноважена дужка ) неврівноважена дужка [ незавершена \-послідовність не завершено лічильник повторів невідомий тип двійкових файлів невідомий спосіб обробки для пристроїв попередження: %s: %s помилка запису запис до виводу 