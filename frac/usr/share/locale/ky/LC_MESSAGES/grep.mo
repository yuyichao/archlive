��            )         �  %  �  k  �     C     E     V  Q   n  <   �  <   �     :  5   K  1   �  :   �  3   �  &   "     I  (   ^  �   �     e  q   g     �     �     	     4	     F	     ]	     n	     �	     �	     �	     �	  �  �	  �  �  m  d     �     �  ?   �  �   2  s   �  s   0  $   �  D   �  b     �   q  R   �  H   J  ,   �  F   �  �       �  �   �  H   l  [   �  2     (   D  <   m  $   �  F   �  <     "   S  (   v     �                                                                     
                       	                                              -E, --extended-regexp     PATTERN is an extended regular expression (ERE)
  -F, --fixed-strings       PATTERN is a set of newline-separated fixed strings
  -G, --basic-regexp        PATTERN is a basic regular expression (BRE)
  -P, --perl-regexp         PATTERN is a Perl regular expression
   -e, --regexp=PATTERN      use PATTERN for matching
  -f, --file=FILE           obtain PATTERN from FILE
  -i, --ignore-case         ignore case distinctions
  -w, --word-regexp         force PATTERN to match only whole words
  -x, --line-regexp         force PATTERN to match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
 ' (standard input) Binary file %s matches
 Example: %s -i 'hello world' menu.h main.c

Regexp selection and interpretation:
 Invocation as `egrep' is deprecated; use `grep -E' instead.
 Invocation as `fgrep' is deprecated; use `grep -F' instead.
 Memory exhausted PATTERN is a set of newline-separated fixed strings.
 PATTERN is an extended regular expression (ERE).
 PATTERN is, by default, a basic regular expression (BRE).
 Search for PATTERN in each FILE or standard input.
 Try `%s --help' for more information.
 Unknown system error Usage: %s [OPTION]... PATTERN [FILE]...
 With no FILE, or when FILE is -, read standard input.  If less than two FILEs
are given, assume -h.  Exit status is 0 if any line was selected, 1 otherwise;
if any error occurs and -q was not given, the exit status is 2.
 ` `egrep' means `grep -E'.  `fgrep' means `grep -F'.
Direct invocation as either `egrep' or `fgrep' is deprecated.
 conflicting matchers specified input is too large to count invalid context length argument invalid max count malformed repeat count memory exhausted recursive directory loop unfinished repeat count unknown binary-files type unknown devices method writing output Project-Id-Version: grep 2.5.3
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2011-06-21 20:06+0200
PO-Revision-Date: 2007-09-01 17:27+0100
Last-Translator: Azilet Beishenaliev <aziletb@gmail.com>
Language-Team: Kirghiz <i18n-team-ky-kyrgyz@lists.sourceforge.net>
Language: ky
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Poedit-Language: Kyrgyz
X-Poedit-Country: KYRGYZSTAN
   -E, --extended-regexp     ШАБЛОН кеңейтилген түрдөгү регулярдуу выражение
  -F, --fixed-strings       ШАБЛОН ар сапта бир сөз болгон жыйын
  -G, --basic-regexp        ШАБЛОН негизги түрдөгү регулярдуу выражение
  -P, --perl-regexp         ШАБЛОН Perl түрүндөгү регулярдуу выражение
   -e, --regexp=ШАБЛОН       ШАБЛОНду регулярдуу выражение катары колдон
  -f, --file=ФАЙЛ           ШАБЛОН ФАЙЛдан алынат
  -i, --ignore-case         тамгалардын чоң-кичинеси айырмаланбайт
  -w, --word-regexp         ШАБЛОН толук сөздөр менен гана уйкаштырылат
  -x, --line-regexp         ШАБЛОН толук сап менен гана уйкаштырылат
  -z, --null-data           дата(данный) саптары 0 байты(EOL эмес) менен бүтөт
 " (стандарт кирүү) Экилик форматтагы %s файлы уйкашат
 Мисалы: %s -i 'салам дүйнө' menu.h main.c

Регулярдуу выражение тандоо жана мааниси:
 `egrep' деген колдонулбай калды; анын ордуна `grep -E' деп колдонунуз.
 `fgrep' деген колдонулбай калды; анын ордуна `grep -F' деп колдонунуз.
 Память жетпей калды ШАБЛОН ар сапта бир сөз болгон жыйын.
 ШАБЛОН кеңейтилген түрдөгү регулярдуу выражение (ERE).
 ШАБЛОН, алдынала тандалгандай, негизги түрдөгү регулярдуу выражение (BRE)
 Ар ФАЙЛда же стандарт кирүүдө ШАБЛОНду изде.
 Толук маалымат үчүн `%s --help' деп жазгыла.
 Белгисиз система катасы Колдонулушу: %s [ОПЦИЯ]... ШАБЛОН [ФАЙЛ]...
 ФАЙЛ жазылбаса же ФАЙЛ - (тире) болсо, стандарт кирүү колдонулат. Экиден аз ФАЙЛ берилген болсо -h опциясы бар болот. Эгер сап тандалган болсо бүтүрүү статусу 0 болот, башка учурда 1; эгерде ката чыкса жана -q опциясы берилбеген болсо бүтүрүү статусу 2 болот.
 " `egrep' деген `grep -E'.  `fgrep' деген `grep -F'.
`egrep' же `fgrep'  деп туз иштетуу колдонулбай калды.
 уйкаштыруучуларда конфликттер табылды берилген данныйлардын саны саналбай турганча көп контекст узундугу жарабайт максимум сан жарабайт кайталоо саны туура эмес жазылды память жетпей калды бирибирине кирген папка айлампасы бар кайталоо саны толук эмес жазылды белгисиз файл түрү аспап методу белгисиз жооп жазыбатат 