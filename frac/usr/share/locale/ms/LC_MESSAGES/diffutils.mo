��    �      �  �         �  ~   �  p  0  �   �  F   P  I   �     �  0        2  L   D  J   �  -   �  5   
  (   @  L   i     �  D   �  ?     B   U  D   �     �  I   �  =   G  A   �  J   �  =     8   P  9   �  C   �  F     (   N  @   w  B   �  M   �  K   I  8   �  ,   �  J   �  9   F  /   �  0   �  K   �  $   -  G   R  )   �  V  �  9        U  G   t  A   �  <   �  .   ;  C   j  ,   �  ?   �  <     E   X  B   �  %   �  5     F   =  .   �  >   �  >   �  A   1   8   s   3   �   #   �   /   !  D   4!  /   y!  4   �!  �   �!  !   �"     �"  !   #     %#  F   E#  =   �#  I   �#  &   $     ;$     Z$  I   r$  1   �$  &   �$     %     ,%     I%     e%  $   }%     �%     �%     �%     �%     �%     &     "&  #   2&     V&  �   q&  =   #'  '   a'     �'     �'     �'  %   �'     �'     �'     (     (     '(  "   4(  4   W(     �(  .   �(     �(  ;   �(  3   +)  /   _)  +   �)  '   �)  #   �)     *     '*     C*  *   S*     ~*  )   �*  !   �*  '   �*  )   +     /+     F+      V+      w+     �+     �+  	   �+     �+     �+     �+     ,  1   ,  2   I,  0   |,     �,  #   �,     �,  )   -  1   2-  -   d-     �-     �-     �-     �-     �-     �-  "   .  %   3.     Y.     g.     s.     �.  	   �.     �.     �.     �.     �.  ,   �.     /     /     //  
   C/     N/  �  [/  y   �0  �  r1  �   3  R   �3  R   4  !   m4  6   �4     �4  \   �4  U   45  /   �5  ;   �5  1   �5  R   (6     {6  ?   �6  @   �6  O   7  H   k7      �7  K   �7  9   !8  @   [8  P   �8  B   �8  H   09  =   y9  O   �9  Y   :  *   a:  M   �:  J   �:  O   %;  P   u;  >   �;  7   <  M   =<  B   �<  /   �<  4   �<  P   3=  *   �=  C   �=  &   �=  e  >  ?   �?     �?  Y   �?  =   8@  <   v@  .   �@  K   �@  8   .A  >   gA  <   �A  B   �A  L   &B  %   sB  4   �B  K   �B  .   C  L   IC  G   �C  A   �C  9    D  ;   ZD  (   �D  /   �D  M   �D  2   =E  3   pE  �   �E     �F     �F  "   �F     �F  S   G  G   eG  V   �G  -   H     2H     PH  @   hH  5   �H  *   �H     
I     %I  !   AI     cI  #   |I     �I     �I     �I     �I  %   �I  "   J     ;J  "   OJ      rJ  �   �J  K   AK  $   �K     �K     �K     �K  '   �K     L     "L     :L     RL     jL  (   {L  @   �L  !   �L  4   M     <M  =   UM  5   �M  1   �M  -   �M  )   )N  %   SN  $   yN     �N     �N  5   �N     O  3   O  .   GO  4   vO  7   �O     �O     �O      P      'P     HP     dP  	   }P     �P     �P     �P     �P  6   �P  =   Q  /   BQ     rQ  %   �Q     �Q  0   �Q  4   R  4   :R     oR     �R     �R     �R     �R     �R     �R  &   S     <S     JS     XS  
   jS  	   uS     S     �S     �S     �S  0   �S     �S  !   �S     T  
   4T     ?T        +   �               9   X          o   �   �       u   ~   �       q   $      �   �       a   �      d   r   0      |   j   W      e          �              F   .      �       �       
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
PO-Revision-Date: 2005-03-29 19:43+0800
Last-Translator: Sharuzzaman Ahmat Raslan <sharuzzaman@myrealbox.com>
Language-Team: Malay <translation-team-ms@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 0.9.5
   Sama ada GFMT atau LFMT boleh mengandungi:
    %%  %
    %c'C'  satu aksara C
    %c'\OOO'  aksara dengan kod oktal OOO   GFMT boleh mengandungi:
    %<  baris dari FAIL1
    %>  baris dari FAIL2
    %=  baris yang sama pada FAIL1 dan FAIL2
    %[-][WIDTH][.[PREC]]{doxX}LETTER  spec gaya-printf untuk LETTER
      LETTER adalah seperti berikut untuk kumpulan baru, huruf kecil untuk kumpulan lama:
        F  nombor baris pertama
        L  nombor baris terakhir
        N  jumlah baris = L-F+1
        E  F-1
        M  L+1   LFMT boleh mengandungi:
    %L  kandungan baris
    %l  kandungan baris, tidak termasuk baris baru dipenghujung
    %[-][WIDTH][.[PREC]]{doxX}n  spec gaya-printf untuk nombor baris masukan   LTYPE adalah `old', `new', atau `unchanged'.  GTYPE adalah LTYPE atau `changed'.   Langkau LANGKAU1 byte pertama untuk FAIL1 dan LANGKAU2 byte pertama untuk FAIL2. %s %s berbeza: byte %s, baris %s
 %s %s berbeza: byte %s, baris %s adalah %3o %s %3o %s
 %s: diff gagal:  --GTYPE-group-format=GFMT  Hampir sama, tetapi format masukan GTYPE dikumpulkan dengan GFMT. --LTYPE-line-format=LFMT  Hampir sama, tetapi format baris masukan LTYPE dengan LFMT. --binary  Baca dan tulis data dalam mod binari. --diff-program=PROGRAM  Guna PROGRAM untuk membanding fail. --from-file dan --to-file kedua-duanya dinyatakan --from-file=FAIL1  Banding FAIL1 kepada semua operan.  FAIL1 boleh jadi direktori. --help  Keluarkan bantuan ini. --horizon-lines=NOM  Pastikan NOM baris prefix dan suffix sama. --ignore-file-name-case  Abai case apabila membanding nama fail. --line-format=LFMT  Hampir sama, tetapi format semua baris masukan dengan LFMT. --no-ignore-file-name-case  Ambil kira case ketika membanding nama fail. --normal  Keluarkan diff normal. --speed-large-files  Anggap fail besar dan banyak perubahan kecil tersebar. --strip-trailing-cr  Buang enter penghujung pada masukan. --tabsize=NOM  Hentian tab setial NOM (default 8) lajur cetakan. --to-file=FAIL2  Banding semua operan kepada FAIL2.  FAIL2 boleh jadi direktori. --unidirectional-new-file  Anggap fail tidak wujud sebagai kosong. -3  --easy-only  Keluarkan perubahan tidak digabung dan tidak bertindih. -A  --show-all  Keluarkan semua perubahan, kurungkan konflik. -B  --ignore-blank-lines  Abai perubahan dimana baris adalah kesemuanya kosong. -D NAMA  --ifdef=NAMA  Keluarkan fail tergabung untuk menunjukkan perbezaa `#ifdef NAMA'. pilihan -D tidak disokong dengan direktori -E  --ignore-tab-expansion  Abai perubahan diakibatkan oleh pengembangan tab. -E  --show-overlap  Keluarkan perubahan tidak digabung, kurungkan konflik. -H  --speed-large-files  Anggap fail besar dan banyak perubahan kecil tersebar. -I RE  --ignore-matching-lines=RE  Abai perubahan dimana baris semua sepadan RE. -L LABEL  --label=LABEL  Guna LABEL selain daripada nama fail. -N  --new-file  Anggap fail tidak wujud sebagai kosong. -S FAIL  --starting-file=FAIL  Mula dengan FAIL apabila membanding direktori. -T  --initial-tab  Jadikan tab sebaris dengan menambah awalan tab. -W  --ignore-all-space  Abai semua ruang putih. -X  Keluarkan perubahan bertindih, kurungkan mereka. -X FAIL  --exclude-from=FAIL  Asing fail yang sepadan sebarang corak dalam FAIL. -a  --text  Layan semua fail sebagai teks. -b  --ignore-space-change  Abai perubahan dalam jumlah ruang putih. -b  --print-bytes  Cetak byte berbeza. -c  -C NOM  --context[=NOM]  Keluarkan NOM (default 3) baris konteks yang disalin.
-u  -U NOM  --unified[=NOM]  Keluarkan NOM (default 3) baris konteks tergabung.
  --label LABEL  Guna LABEL selain daripada nama fail.
  -p  --show-c-function  Papar fungsi C yang mana dalam setiap perubahan.
  -F RE  --show-function-line=RE  Papar baris terbaru sepadan RE. -d  --minimal  Cuba cari dengan tekun set perbezaan yang kecil. -e  --ed  Keluarkan skrip ed. -e  --ed  Keluarkan perubahan tidak digabung daripada OLDFILE ke YOURFILE kedalam MYFILE. -i  --ignore-case  Anggap huruf besar dan kecil sebagai sama. -i  --ignore-case  Abai perbezaan case dalam kandungan fail. -i  Tambah arahan `w' dan `q' kepada skrip ed. -i LANGKAU  --ignore-initial=LANGKAU  Langkau LANGKAU byte pertama masukan. -i LANGKAU1:LANGKAU2  --ignore-initial=LANGKAU1:LANGKAU2 -l  --left-column  Keluarkan hanya lajur kiri baris yang sama. -l  --paginate  Salur keluaran menerusi `pr' untuk paginate. -l  --verbose  Keluarkan nombor byte dan nilai semua byte berbeza. -m  --merge  Keluarkan fail tergabung selain daripada skrip ed (default -A). -n  --rcs  Keluarkan diff format RCS. -n HAD  --bytes=HAD  Banding paling banyak HAD byte. -o FAIL  --output=FAIL  Operasi secara interaktif, hantar keluaran ke FAIL. -q  --brief  Keluaran hanya jika fail berbeza. -r  --recursive  Banding berulang-ulang sebarang subdirektori yang dijumpai. -s  --quiet  --silent  Tiada keluaran; hasilkan status keluaran sahaja. -s  --report-identical-files  Lapor apabila dua fail adalah sama. -s  --suppress-common-lines  Jangan keluarkan baris sama. -t  --expand-tabs  Kembang tab kepada ruang dalam keluaran. -v  --version  Keluarkan maklumat versi. -w  --ignore-all-space  Abai semua ruang putih. -w NOM  --width=NOM  Keluarkan paling banyak NOM (default 130) lajur cetakan. -x  --overlap-only  Keluarkan perubahan bertindih. -x PAT  --exclude=PAT  Asing fail yang sepadan PAT. -y  --side-by-side  Keluaran dalam dua lajur.
  -W NOM  --width=NOM  Keluarkan paling banyak NOM (default 130) lajur cetakan.
  --left-column  Keluarkan hanya lajur kiri pada baris sama.
  --suppress-common-lines  Jangan keluarkan baris sama. Subdirektori umum: %s dan %s
 Banding fail setiap baris. Banding tiga fail tiap-tiap baris. Banding dua fail setiap byte. Status keluar adalah 0 jika masukan adalah sama, 1 jika berbeza, 2 jika bermasalah. Status keluar adalah 0 jika berjaya, 1 jika konflik, 2 jika bermasalah. FAIL-FAIL adalah `FAIL1 FAIL2' atau `DIR1 DIR2' atau `DIR FAIL...' atau `FAIL... DIR'. Fail %s adalah %s manakala fail %s adalah %s
 Fail %s dan %s adalah serupa
 Fail %s dan %s berbeza
 Jika --from-file atau --to-file diberi, tiada sekatan pada FAIL. Jika FAIL adalah `-' atau tiada, baca masukan piawai. Jika FAIL adalah `-', baca masukan piawai. Rujukan belakang tidak sah Nama kelas aksara tidak sah Aksara pengumpulsemakan tidak sah Kandungan \{\} tidak sah Regular expression awalan tidak sah Julat akhir tidak sah Regular expression tidak sah Kehabisan memori Tiada padanan Tiada baris baru pada penghujung fail Tiada regular expression terdahulu Hanya dalam %s: %s
 Regular expression tamat tiba-tiba Regular expression terlalu besar Nilai LANGKAU boleh diikuti dengan akhiran pekali berikut:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, dan seterusnya untuk T, P, E, Z, Y. LANGKAU1 dan LANGKAU2 adalah jumlah byte untuk dilangkau dalam setiap fail. Gabung bersebelahan perbezaaan fail. Berjaya Torbjorn Granlund Slash dibelakang Cuba `%s --help' untuk maklumat lanjut. Ralat sistem tidak diketahui ( atau \( tidak sepadan ) atau \) tidak sepadan [ atau [^ tidak sepadan \{ tidak sepadan Penggunaan: %s [PILIHAN]... FAIL1 FAIL2
 Penggunaan: %s [PILIHAN]... FAIL1 [FAIL2 [LANGKAU1 [LANGKAU2]]]
 Penggunaan: %s [PILIHAN]... FAIL
 Penggunaan: %s [PILIHAN]... MYFILE OLDFILE YOURFILE
 Ditulis oleh %s and %s.
 Ditulis oleh %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Ditulis oleh %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Ditulis oleh %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Ditulis oleh %s, %s, %s,
%s, %s, %s, and %s.
 Ditulis oleh %s, %s, %s,
%s, %s, and %s.
 Ditulis oleh %s, %s, %s,
%s, and %s.
 Ditulis oleh by %s, %s, %s,
and %s.
 Ditulis oleh %s, %s, and %s.
 Ditulis oleh %s.
 `-' dinyatakan untuk lebih daripada satu fail masukan fail khas blok kedua-dua fail yang akan dibanding adalah direktori tidak dapat membandingkan `-' kepada direktori tidak dapat membandingkan fail bernama `%s' dan `%s' tidak dapat menggabung masukan piawai secara interaktif fail khas aksara cmp: EOF pada %s
 nilai pilihan %s berkonflik `%s' pilihan gaya keluaran berkonflik pilihan saiz tab berkonflik pilihan lebar berkonflik direktori operan tambahan `%s' fifo pilihan tidak sepadan fail masukan mengecil ralat dalaman: jenis diff tidak sah dalam process_diff ralat dalaman: jenis diff tidak sah diberikan kepada keluaran ralat dalaman: kerosakan dalam format blok diff nilai --bytes `%s' tidak sah nilai `%s' --ignore-initial tidak sah panjang konteks `%s' tidak sah format diff tidak sah; baris akhir tidak lengkap format diff tidak sah; aksara awal baris tidak betul format diff tidak sah; pengasing perbezaan tidak sah panjang horizon `%s' tidak sah saiz tab `%s' tidak sah lebar `%s' tidak sah kehabisan memori barisan mesej operan hilang selepas `%s' pilihan -l dan -s tidak sepadan pagination tidak disokong pada hos ini ralat program gagal membaca fail kosong biasa fail biasa semaphore objek ingatan dikongsi soket stack melimpah keluaran piawai program subsidiari `%s' tidak dapat dilaksanakan pautan simbolik terlalu banyak pilihan label fail objek memori berjenis fail pelik gagal menulis 