��    �      T  �   �
        �  	  �   �  9   x  t  �  �   '  �     H     7   [  �   �  ,   �  5   �  }   �  �  a  \  �  �  N    �  �   �  �   �  u   d  �   �  
  j  �   u  �   <   �   �   �   �!  �   `"  I   4#  ?   ~#  �  �#  �  Y%  �   '    �'      )     :)  /   J)     z)     �)  #   �)  B   �)  8   *     I*     [*     n*     �*     �*  ;   �*     �*     +     "+     >+     \+  "   p+  )   �+     �+  1   �+     ,  )   ,     E,  x   G,     �,  I   �,     -  N   -  2   c-  B   �-  �   �-  *   �.  $   �.  &   �.     /  '    /  �   H/  &   �/  "   
0  "   -0      P0  '   q0  Z   �0     �0  X   	1  l   b1  t   �1  �   D2     �2  <   3     ?3     E3  1   G3     y3  #   �3     �3  ,   �3     4  &   "4  !   I4     k4     �4     �4  "   �4     �4     �4     �4     �4     5     +5  *   F5  -   q5     �5     �5     �5     �5     �5     6     .6      N6     o6  G   �6     �6     �6  /   �6  -   7  #   K7  &   o7  *   �7     �7     �7     �7  -   8     38     C8  4   S8  &   �8     �8     �8  >   �8  B   9  
   S9     ^9     j9     �9     �9     �9     �9     �9     �9     �9  J   :     Y:     n:  H   �:  ?   �:  =   ;  >   Q;  3   �;  (   �;  /   �;     <  2   #<  =   V<  ,   �<  3   �<  j   �<  _   `=     �=     �=  7   �=  z  >  �  �?  �   JA  <   �A  �  6B    �C    �D  W   �E  ;   @F  �   |F  3   G  /   PG  �   �G  �  H  �  �I  �  qK    iM  �   N  �   IO  z   �O  �   bP  �   �P  �   �Q  u   �R  �   S  �   T  �   �T  C   �U  L   �U  �  <V  �  �W    �Y  O  �Z  $   !\     F\  0   U\     �\  "   �\  ,   �\  C   �\  6   .]     e]     v]  !   �]     �]     �]  Z   �]     /^     B^     [^     u^     �^  !   �^  ,   �^  (   �^  5   _     T_  )   a_     �_  �   �_     $`  J   )`     t`  I   w`  3   �`  ?   �`  �   5a  '   �a  4   b  -   Gb     ub  %   �b  �   �b  $   Tc     yc  "   �c     �c     �c  K   �c     Ed  C   Zd  �   �d  �   !e  �   �e     of  9   f     �f     �f  6   �f     �f  (   g  !   ?g  .   ag     �g  3   �g  '   �g     	h     h     7h  !   Ih     kh     �h     �h     �h     �h     �h  -   �h  2   %i     Xi     gi     �i     �i     �i     �i  %   �i  !   j     (j  D   >j     �j     �j  7   �j  1   �j      k  -   5k  %   ck     �k     �k     �k  3   �k     �k     l  7   l  #   Kl     ol     �l  H   �l  ?   �l     "m     +m     ;m     Zm     mm     zm     �m     �m      �m     �m  T   �m  $   :n  '   _n  K   �n  ?   �n  =   o  :   Qo  6   �o  &   �o  3   �o     p  7   %p  B   ]p  /   �p  :   �p  _   q  X   kq     �q     �q  5   �q     ?   )          \       &   A   F   |   �   %      	   @                             Y   "   {   }      �           N   ~   �       P   l   K   !   ;   �   =   �          
   i       �   j       :          -       �   �   E   �       C   W   �   U   h   �       [       �   ,       �   m   �          4   �   `   p           L       �              (   ]   �           g   X   u   '   R       �   y       �          S       +          �   r      B       b             �       f       �   Z   o   /       �       D   ^           1       d          q   6   3   G       $             O   2   H   �      5   �   a   <   Q              �   �   �       I   s   v   �   �       �   >              e       k      T       �   z          �   x   �   7   *   �   0                 M   V   �   c         J   #       .   �          �   w      8   9   t   �   n      _   �    
  INTEGER            copy up to but not including specified line number
  /REGEXP/[OFFSET]   copy up to but not including a matching line
  %REGEXP%[OFFSET]   skip to, but not including a matching line
  {INTEGER}          repeat the previous pattern specified number of times
  {*}                repeat the previous pattern as many times as possible

A line OFFSET is a required `+' or `-' followed by a positive integer.
 
By default, selects -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC are
two delimiter characters for separating logical pages, a missing
second character implies :.  Type \\ for \.  STYLE is one of:
 
Read standard input if FILE is -.  Each PATTERN may be:
 
SETs are specified as strings of characters.  Most represent themselves.
Interpreted sequences are:

  \NNN            character with octal value NNN (1 to 3 octal digits)
  \\              backslash
  \a              audible BEL
  \b              backspace
  \f              form feed
  \n              new line
  \r              return
  \t              horizontal tab
 
SIZE is a number.  For TYPE in doux, SIZE may also be C for
sizeof(char), S for sizeof(short), I for sizeof(int) or L for
sizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D
for sizeof(double) or L for sizeof(long double).
 
The sums are computed as described in %s.  When checking, the input
should be a former output of this program.  The default mode is to print
a line with checksum, a character indicating type (`*' for binary, ` ' for
text), and name for each FILE.
 
With no FILE or if FILE is -, read Standard Input.  `-F /' by default.
 
With no FILE, or when FILE is -, read standard input.
 
Write an unambiguous representation, octal bytes by default,
of FILE to standard output.  With more than one FILE argument,
concatenate them in the listed order to form the input.
With no FILE, or when FILE is -, read standard input.

       --help     display this help and exit
       --version  output version information and exit
   -A, --address-radix=RADIX   decide how file offsets are printed
  -j, --skip-bytes=BYTES      skip BYTES input bytes first
   -D, --date-format=FORMAT
                    use FORMAT for the header date
  -e[CHAR[WIDTH]], --expand-tabs[=CHAR[WIDTH]]
                    expand input CHARs (TABs) to tab WIDTH (8)
  -F, -f, --form-feed
                    use form feeds instead of newlines to separate pages
                    (by a 3-line page header with -F or a 5-line header
                    and trailer without -F)
   -M, --macro-name=STRING        macro name to use instead of `xx'
  -O, --format=roff              generate output as roff directives
  -R, --right-side-refs          put references at right, not counted in -w
  -S, --sentence-regexp=REGEXP   for end of lines or end of sentences
  -T, --format=tex               generate output as TeX directives
   -W, --word-regexp=REGEXP       use REGEXP to match each keyword
  -b, --break-file=FILE          word break characters in this FILE
  -f, --ignore-case              fold lower case to upper case for sorting
  -g, --gap-size=NUMBER          gap size in columns between output fields
  -i, --ignore-file=FILE         read ignore word list from FILE
  -o, --only-file=FILE           read only word list from this FILE
   -a, --across      print columns across rather than down, used together
                    with -COLUMN
  -c, --show-control-chars
                    use hat notation (^G) and octal backslash notation
  -d, --double-space
                    double space the output
   -b, --body-numbering=STYLE      use STYLE for numbering body lines
  -d, --section-delimiter=CC      use CC for separating logical pages
  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines
   -b, --bytes         count bytes rather than columns
  -s, --spaces        break at spaces
  -w, --width=WIDTH   use WIDTH columns instead of 80
   -c, --count           prefix lines by the number of occurrences
  -d, --repeated        only print duplicate lines
   -d, --delimiters=LIST   reuse characters from LIST instead of TABs
  -s, --serial            paste one file at a time instead of in parallel
   -f, --follow[={name|descriptor}]
                           output appended data as the file grows;
                           -f, --follow, and --follow=descriptor are
                           equivalent
  -F                       same as --follow=name --retry
   -n, --digits=DIGITS        use specified number of digits instead of 2
  -s, --quiet, --silent      do not print counts of output file sizes
  -z, --elide-empty-files    remove empty output files
   -q, --quiet, --silent    never print headers giving file names
  -v, --verbose            always print headers giving file names
   -r, --references               first field of each line is a reference
  -t, --typeset-mode               - not implemented -
  -w, --width=NUMBER             output width in columns, reference excluded
   -s, --only-delimited    do not print lines not containing delimiters
      --output-delimiter=STRING  use STRING as the output delimiter
                            the default is to use the input delimiter
   -t                       equivalent to -vT
  -T, --show-tabs          display TAB characters as ^I
  -u                       (ignored)
  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB
   -t, --tabs=LIST     use comma separated list of explicit tab positions
   -z, --zero-terminated     end lines with 0 byte, not newline
   [:graph:]       all printable characters, not including space
  [:lower:]       all lower case letters
  [:print:]       all printable characters, including space
  [:punct:]       all punctuation characters
  [:space:]       all horizontal or vertical whitespace
  [:upper:]       all upper case letters
  [:xdigit:]      all hexadecimal digits
  [=CHAR=]        all characters which are equivalent to CHAR
   \v              vertical tab
  CHAR1-CHAR2     all characters from CHAR1 to CHAR2 in ascending order
  [CHAR*]         in SET2, copies of CHAR until length of SET1
  [CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0
  [:alnum:]       all letters and digits
  [:alpha:]       all letters
  [:blank:]       all horizontal whitespace
  [:cntrl:]       all control characters
  [:digit:]       all digits
   d[SIZE]    signed decimal, SIZE bytes per integer
  f[SIZE]    floating point, SIZE bytes per integer
  o[SIZE]    octal, SIZE bytes per integer
  u[SIZE]    unsigned decimal, SIZE bytes per integer
  x[SIZE]    hexadecimal, SIZE bytes per integer
 % 1% of memory, b 1, K 1024 (default), and so on for M, G, T, P, E, Z, Y.

With no FILE, or when FILE is -, read standard input.

*** WARNING ***
The locale specified by the environment affects sort order.
Set LC_ALL=C to get the traditional sort order that uses
native byte values.
 %s exists but is not a directory %s is too large %s: %s is so large that it is not representable %s: %s:%s: disorder:  %s: FAILED open or read
 %s: `}' is required in repeat count %s: cannot follow end of this type of file; giving up on this name %s: equivalence class operand must be a single character %s: file too long %s: file truncated %s: input contains a loop: %s: input file is output file %s: invalid PID %s: invalid maximum number of unchanged stats between opens %s: invalid number %s: invalid number of bytes %s: invalid number of lines %s: invalid number of seconds %s: invalid pattern %s: invalid regular expression: %s %s: line number must be greater than zero %s: line number out of range %s: no properly formatted %s checksum lines found %s: read error %s}: integer required between `{' and `}' ' Convert tabs in each FILE to spaces, writing to standard output.
With no FILE, or when FILE is -, read standard input.

 FAILED Mandatory arguments to long options are mandatory for short options too.
 OK Output a permuted index, including context, of the words in the input files.

 Print CRC checksum and byte counts of each FILE.

 Print selected parts of lines from each FILE to standard output.

 Print the last %d lines of each FILE to standard output.
With more than one FILE, precede each with a header giving the file name.
With no FILE, or when FILE is -, read standard input.

 Set LC_ALL='C' to work around the problem. The strings compared were %s and %s. Try `%s --help' for more information.
 Unknown system error Usage: %s [FILE]...
  or:  %s [OPTION]
 Usage: %s [OPTION] [FILE]
Write totally ordered list consistent with the partial ordering in FILE.
With no FILE, or when FILE is -, read standard input.

 Usage: %s [OPTION]... FILE PATTERN...
 Usage: %s [OPTION]... FILE1 FILE2
 Usage: %s [OPTION]... SET1 [SET2]
 Usage: %s [OPTION]... [FILE]...
 Usage: %s [OPTION]... [INPUT [OUTPUT]]
 Usage: %s [OPTION]... [INPUT]...   (without -G)
  or:  %s -G [OPTION]... [INPUT [OUTPUT]]
 Valid arguments are: Wrap input lines in each FILE (standard input by default), writing to
standard output.

 Write each FILE to standard output, last line first.
With no FILE, or when FILE is -, read standard input.

 Write each FILE to standard output, with line numbers added.
With no FILE, or when FILE is -, read standard input.

 Write lines consisting of the sequentially corresponding lines from
each FILE, separated by TABs, to standard output.
With no FILE, or when FILE is -, read standard input.

 Written by %s.
 [=c=] expressions may not appear in string2 when translating ^[nN] ` `--pages=FIRST_PAGE[:LAST_PAGE]' missing argument ambiguous argument %s for %s both files cannot be standard input cannot change permissions of %s cannot convert U+%04X to local character set cannot create directory %s cannot skip past end of combined input cannot split in more than one way character offset is zero close failed closing %s (fd=%d) error in regular expression search error reading %s error writing %s field number is zero input disappeared invalid argument %s for %s invalid byte or field list invalid conversion specifier in suffix: %c invalid conversion specifier in suffix: \%.3o invalid group invalid number after `,' invalid number after `-' invalid number after `.' invalid number at field start invalid number of bytes invalid number of bytes to skip invalid number of fields to skip invalid number of lines invalid output address radix `%c'; it must be one character from [doxn] invalid user memory exhausted misaligned [:upper:] and/or [:lower:] construct missing %% conversion specification in suffix missing character class name `[::]' missing conversion specifier in suffix missing equivalence class character `[==]' missing list of fields missing list of positions no files remaining no type may be specified when dumping strings number of bytes number of lines only one [c*] repeat construct may appear in string2 only one type of list may be specified open failed page width too narrow printing all duplicated lines and repeat counts is meaningless range-endpoints of `%s-%s' are in reverse collating sequence order read error read failed separator cannot be empty standard error standard input standard input is closed standard output stat failed stray character in field spec string comparison failed suppressing non-delimited lines makes sense
	only when operating on fields tab size cannot be 0 tab sizes must be ascending the --binary and --text options are meaningless when verifying checksums the --status option is meaningful only when verifying checksums the --warn option is meaningful only when verifying checksums the [c*] construct may appear in string2 only when translating the [c*] repeat construct may not appear in string1 the delimiter must be a single character too many %% conversion specifications in suffix total warning: --pid=PID is not supported on this system warning: PID ignored; --pid=PID is useful only when following warning: invalid width %lu; using %d instead when not truncating set1, string2 must be non-empty when translating with complemented character classes,
string2 must map all characters in the domain to one when translating, the only character classes that may appear in
string2 are `upper' and `lower' write error write failed you must specify a list of bytes, characters, or fields Project-Id-Version: GNU textutils 2.0.20
Report-Msgid-Bugs-To: bug-coreutils@gnu.org
POT-Creation-Date: 2011-04-26 16:10+0200
PO-Revision-Date: 2002-01-27 21:35+0100
Last-Translator: Eivind Tagseth <eivindt@multinet.no>
Language-Team: Norwegian <i18n-nb@lister.ping.uio.no>
Language: no
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8-bit
 
  HELTALL            kopiér opp til, men ikke inkludert spesifisert linjenummer
  /REGEXP/[POSISJON] kopiér opp til, men ikke inkludert passende linje
  %REGEXP%[POSISJON] hopp over fram til, men ikke inkludert passende linje
  {HELTALL}          gjenta forrige mønster spesifisert antall ganger
  {*}                gjenta forrige mønster så mange ganger som mulig

En linje-POSISJON er en «+» eller «-» fulgt av et positivt heltall.
 
Forvalgt er -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.  CC er
to skilletegn for å skille logiske sider, et manglende andretegn
impliserer «:». Bruk \\ for \. STIL er en av:
 
Les standard inn hvis FIL er -.  Hvert MØNSTER må være:
 
SETT er spesifisert med strenger av tegn.  De fleste tegnene står for seg
selv.  Følgende sekvenser tolkes spesielt:

  \NNN            tegn med oktalverdi NNN (1 til 3 oktale siffer)
  \\              backslash
  \a              beep
  \b              backspace
  \f              sideskift (FF)
  \n              linjeskift (LF)
  \r              vognretur (CR)
  \t              horisontal tabulator
 
STØRRELSE er et tall. For TYPE lik d, o, u eller x, kan STØRRELSE også være
C for sizeof(char), S for sizeof(short), I for sizeof(int) eller L for 
sizeof(long).  Når TYPE er f, kan STØRRELSE være F for sizeof(float), 
D for sizeof(double) eller L for sizeof(long double).
 
Summene blir beregnet som beskrevet i %s. Ved sjekking skal
inndata være tidligere utdata fra dette programmet.  Forvalgt 
modus er å skrive ut en linje med sjekksum, et tegn som indikerer
type («*» for binær, « » for tekst), og navnet til hver FIL
 
Ved ingen FIL eller hvis FIL er -, leses det fra standard inn.  «-F /» er
forvalgt.
 
Når ingen FIL eller når FIL er -, les fra standard inn.
 
Skriv en entydig representasjon, oktale bytes forvalgt, av FIL
til standard ut. Dersom ingen FIL er spesifisert, eller FIL er -,
leses det fra standard inn.

       --help     vis denne hjelpteksten og avslutt
       --version  vis programversjon og avslutt
   -A, --address-radix=RADIX   bestem hvordan filoffset'er skrives
  -j, --skip-bytes=BYTES      hopp over første BYTES fra hver fil
   -D, --date-format=FORMAT
                    bruk FORMAT for topptekst-dato
  -e[TEGN[BREDDE]], --expand-tabs[=TEGN[BREDDE]]
                    ekspander inn-TEGN (TAB) til tabulator-BREDDE (8)
  -F, -f, --form-feed
                    bruk sideskift isteden for linjeskift for å separere
                    sider. (ved en 3-linjers topptekst med -F eller en
                    5-linjers topptekst og bunntekst uten -F)
   -M, --macro-name=STRENG        makronavn å bruke istedenfor «xx»
  -O, --format=roff              generer utskrift som roff-direktiver
  -R, --right-side-refs          plassér referansene på høyre side, ikke
                                 telt med i -w
  -S, --sentence-regexp=REGEXP   for slutten av linjer eller slutten av
                                 setninger
  -T, --format=tex               generer utskrift som TeX-direktiver
   -W, --word-regexp=REGEXP       bruk REGEXP for å treffe hvert nøkkelord
  -b, --break-file=FIL           tegn for orddeling i denne FILen
  -f, --ignore-case              gjør om små bokstaver til store for sortering
  -g, --gap-size=TALL            størrelse på mellomrom mellom spalter i utfelt
  -i, --ignore-file=FIL          les liste over ord som skal ignoreres fra FIL
  -o, --only-file=FIL            les liste over ord som *ikke* skal ignoreres
                                 fra FIL
   -a, --across      skriv kolonner på tvers isteden for nedover, brukes sammen
                    med -KOLONNE
  -c, --show-control-chars
                    bruk hatt-notasjon (^G) og oktal backslah-notasjon
  -d, --double-space
                    bruk dobbel linjeavstand
   -b, --body-numbering=STIL       bruk STIL for nummerering
  -d, --section-delimiter=CC      bruk CC for å skille logiske sider
  -f, --footer-numbering=STIL     bruk STIL for å nummerere bunntekst
   -b, --bytes         tell bytes istedet for kolonner
  -s, --spaces        brekk om ved mellomrom
  -w, --width=BREDDE  bruk BREDDE kolonner istedet for 80
   -c, --count           begynn linjer med antall forekomster
  -d, --repeated        skriv bare ut linjer det er flere av
   -d, --delimiters=LISTE  bruk tegn fra LISTE istedet for tabulatorer
  -s, --serial            ta en fil om gangen i steder for i parallell
   -f, --follow[={name|descriptor}]
                           skriv ut mer data etter hvert som filen vokser;
                           -f, --follow og --follow=descriptot er de samme
  -F                       samme som --follow=name --retry
   -n, --digits=SIFFER        bruk spesifisert antall siffer isteden for 2
  -s, --quiet, --silent      ikke skriv ut utfil-størrelser
  -z, --elide-empty-files    fjern tomme ut-filer
   -q, --quiet, --silent    ikke skriv ut filnavnene først
  -v, --verbose            skriv alltid filnavnene først
   -r, --references               første felt av hver linje er en referanse
  -t, --typeset-mode               - ikke implementert -
  -w, --width=BREDDE             utskriftbredde for spalter, eksklusive
                                 referanser
   -s, --only-delimited    skriv ikke ut linjer som ikke inneholder skilletegn
      --output-delimiter=STRENG  bruk STRENG som ut-skilletegn
                            forvalgt er å bruke inn-skilletegnet
   -t                       samme som -vT
  -T, --show-tabs          vis tabulatortegn som ^I
  -u                       (ignorert)
  -v, --show-nonprinting   bruk ^ og M-notasjon, unntatt for LFD og TAB
   -t, --tabs=LISTE    bruk komma-separert LISTE med tab-posisjoner
   -z, --zero-terminated     avslutt linjer med en 0-oktett, ikke linjeskift
   [:graph:]       alle skrivbare tegn, unntatt blanke tegn
  [:lower:]       alle små bokstaver
  [:print:]       alle skrivbare tegn, inkludert blanke tegn
  [:punct:]       alle tegnsettingstegn
  [:space:]       alle horisontale og vertikale blanke tegn
  [:upper:]       alle store bokstaver
  [:xdigit:]      alle hexadesimale siffer
  [=TEGN=]        alle tegn som er like TEGN
   \v              vertikal tabulator
  TEGN1-TEGN2     alle tegn fra TEGN1 til TEGN2, stigende
  [TEGN1-TEGN2]   samme som TEGN1-TEGN2, dersom begge sett bruker dette
  [TEGN*]         i SETT2, kopier av TEGN inntil samme lengde til SETT1
  [TEGN*ANT]      ANT kopier av TEGN, ANT er oktal, hvis det begynner med 0
  [:alnum:]       alle bokstaver og tall
  [:alpha:]       alle bokstaver
  [:blank:]       alle horisontale blanke tegn
  [:cntrl:]       alle kontrolltegn
  [:digit:]       alle siffer
   d[STØRRELSE] desimal med fortegn, STØRRELSE bytes per tall
  f[STØRRELSE] flyttall, STØRRELSE bytes per tall
  o[STØRRELSE] oktal, STØRRELSE bytes per tall
  u[STØRRELSE] desimal uten fortegn, STØRRELSE bytes per tall
  x[STØRRELSE] hexadesimal, STØRRELSE bytes per tall
 % 1% av minne, b 1, K 1024 (forvalgt) og så videre for M, G, T, P, E, Z, Y.

Dersom ingen FIL er oppgitt eller FIL er -, leses det fra standard inn.

*** ADVARSEL ***
Lokalet spesifisert av miljøet påvirker sorteringsrekkefølge.
Sett LC_ALL=C for å få den tradisjonelle sorteringsrekkefølgen som
bruker negative oktett-verdier.
 %s eksisterer men er ikke en katalog %s er for stor %s: %s er så stor at den ikke kan representeres %s: %s:%s: uorden:  %s: FEIL ved åpning eller lesing
 %s: «}» er nødvendig i gjentagelsesantall %s: kan ikke følge slutten av en fil av denne typen; gir opp denne %s: ekvivalensklasseoperanden må være et enkelt tegn %s: fil for lang %s: fil trunkert %s: inndata inneholder en løkke: %s: innfil er utfil %s: ugyldig prosess-id %s: ugyldig maksimum antall av uendrete resultat av kall til stat() mellom kall til open() %s: ugyldig nummer %s: ugyldig antall bytes %s: ugyldig antall linjer %s: ugyldig antall sekunder %s: ugyldig mønster %s: ugyldig regulært uttrykk: %s %s: linjenummeret må være større enn null %s: linjenummer utenfor tillatte verdier %s: ingen riktig formatterte %s-sjekksumlinjer funnet %s: lesefeil %s}: heltall kreves mellom «{» og «}» » Konverter tabulatorer i hver FIL til mellomrom, skriv til standard ut.
Dersom ingen FIL er spesifisert, eller FIL er -, leses det fra standard inn.

 FEIL Obligatoriske argmenter til lange flagg er obligatoriske også for korte.
 OK Skriv ut en permutert indeks, inkludert kontekst, av ordene i innfilene

 Skriv CRC-sjekksum og oktett-antall for hver FIL.

 Skriv ut valgte deler av linjer fra hver FIL til standard ut.

 Skriv de siste %d linjene av hver FIL til standard ut.
Med mer enn én FIL, innled hver med en topptekst med filnavnet.
Med ingen FILer eller hvis FIL er -, les fra standard inn.

 Sett LC_ALL='C' for å omgå problemet. Strengene som ble sammenlignet var «%s» og «%s». Prøv med «%s --help» for mer informasjon.
 Ukjent systemfeil Bruk:  %s [FIL]...
eller: %s [FLAGG]
 Bruk: %s [FLAGG] [FIL]
Skriv en fullstendig sortert liste konsistent med den delvise sorteringen
i FIL.  Hvis ingen FIL eller hvis FIL er -, leses fra standard inn.

 Bruk: %s [FLAGG]... FIL MØNSTER...
 Bruk: %s [FLAGG]... FIL1 FIL2
 Bruk: %s [FLAGG]... SETT1 [SETT2]
 Bruk: %s [FLAGG]... [FIL]...
 Bruk: %s [FLAGG]... [INN [UT]]
 Bruk : %s [FLAGG]... [INN]... (uten -G)
eller: %s -G [FLAGG]... [INN [UT]]
 Gyldige argument er: Brekk om linjene i hver FIL (standard inn), skriv til standard ut

 Skriv hver FIL til standard ut, siste linje først.
Dersom ingen FIL er spesifisert, eller FIL er -, leses det fra standard inn.

 Skriv hver fil til standard ut, med linjenummer lagt til.
Dersom ingen FIL er spesifisert, eller FIL er -, leses det fra standard inn.

 Skriv linjer som består av de sekvensielt tilsvarende linjene fra hver
FIL separert med tabulatorer til standard ut.
Dersom ingen FIL er spesifisert, eller FIL er -, leses det fra standard inn.

 Skrevet av %s.
 [=c=]-uttrykk kan ikke opptre i streng2 under oversetting ^[nN] « «--pages=FØRSTE_SIZE[:SISTE_SIDE]» mangler argument flertydig argument %s for %s begge filene kan ikke være standard inn kan ikke endre rettigheter til %s kan ikke konvertere U+%04X til lokalt tegnsett kan ikke opprette katalog %s kan ikke hoppe til bak slutten av kombinert inndata kan ikke dele opp på mer enn én måte tegn-posisjon er null feil ved lukking av fil lukker %s (fd=%d) feil i søk med regulært uttrykk feil ved lesing av %s feil ved skriving til %s felt-nummer er null input forsvant ugyldig argument %s for %s ugyldig byte- eller felt-liste ugyldig konvertingsspesifikator i suffiks: %c ugyldig konverteringsspesifikator i suffiks: \%.3o ugyldig gruppe ugyldig tall etter «,» ugyldig tall etter «-» ugyldig tall etter «.» ugyldig tall i feltstart ugyldig antall bytes ugyldig antall oktetter å hoppe over ugyldig antall felt å hoppe over ugyldig antall linjer ugyldig ut-adresse radix «%c»; det må være ett av tegnene [doxn] ugyldig bruker virtuelt minne oppbrukt feilplassert [:upper:]- og/eller [:lower:]-konstruksjon manglende %%-konverteringsspesifikasjon i suffiks mangler tegn-klassenavn «[::]» manglende konverteringsspesifikator i suffiks mangler ekvivalensklassetegn «[==]» feltliste mangler posisjonsliste mangler ingen filer igjen ingen type kan spesifiseres ved dumping av strenger antall bytes antall linjer kun ett [c*] gjentagelseskonstrukt kan opptre i streng2 bare en liste-type kan spesifiseres åpning av fil feilet sidebredde for smal å skrive alle dupliserte linjer *og* gjentagelsesantall er meningsløst rekke-sluttpunkt i «%s-%s» er i omvendt sorteringsrekkefølge lesefeil feil ved lesing separatoren kan ikke være tom standard feilkanal standard inn standard inn er lukket standard ut stat feilet ugyldig tegn i feltspesifikasjon strengsammenligning feilet fjerning av linjer uten skilletegn er meningsløst dersom en ikke opererer
	med felt tabulatorstørrelse kan ikke være 0 tabulatorstørrelser må være stigende flaggene --binary og --text er meningsløse ved verifisering av sjekksummer flagget --status har bare betydning ved sjekking av sjekksummer flagget --warn har bare betydning ved sjekking av sjekksummer [c*]-konstruktet kan bare opptre i streng2 ved oversetting gjentagelseskonstruktet [c*] kan ikke opptre i streng1 skilletegnet må være ett enkelt tegn for mange %%-konverteringsspesifikasjoner i suffiks totalt advarsel: --pid=PID er ikke støttet på dette systemet advarsel: PID ignoreres; --pid=PID er bare nyttid når man følger advarsel: ugyldig bredde %lu; bruker %d istedet når sett1 ikke blir forkortet, kan ikke streng2 være tom når det oversettes med komlementerte tegnklasser
må streng2 mappe alle tegn i domenet til én ved oversetting er de eneste tegnklassene som kan være i streng2
«upper» og «lower» feil ved skriving feil ved skriving du må spesifisere en liste av bytes, tegn eller felt 