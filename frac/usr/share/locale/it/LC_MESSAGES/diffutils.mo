��    �      �  �         �  ~   �  p  0  �   �  F   P  I   �     �  0        2  L   D  J   �  -   �  5   
  (   @  L   i     �  D   �  ?     B   U  D   �     �  I   �  =   G  A   �  J   �  =     8   P  9   �  C   �  F     (   N  @   w  B   �  M   �  K   I  8   �  ,   �  J   �  9   F  /   �  0   �  K   �  $   -  G   R  )   �  V  �  9        U  G   t  A   �  <   �  .   ;  C   j  ,   �  ?   �  <     E   X  B   �  %   �  5     F   =  .   �  >   �  >   �  A   1   8   s   3   �   #   �   /   !  D   4!  /   y!  4   �!  �   �!  !   �"     �"  !   #     %#  F   E#  =   �#  I   �#  &   $     ;$     Z$  I   r$  1   �$  &   �$     %     ,%     I%     e%  $   }%     �%     �%     �%     �%     �%     &     "&  #   2&     V&  �   q&  =   #'  '   a'     �'     �'     �'  %   �'     �'     �'     (     (     '(  "   4(  4   W(     �(  .   �(     �(  ;   �(  3   +)  /   _)  +   �)  '   �)  #   �)     *     '*     C*  *   S*     ~*  )   �*  !   �*  '   �*  )   +     /+     F+      V+      w+     �+     �+  	   �+     �+     �+     �+     ,  1   ,  2   I,  0   |,     �,  #   �,     �,  )   -  1   2-  -   d-     �-     �-     �-     �-     �-     �-  "   .  %   3.     Y.     g.     s.     �.  	   �.     �.     �.     �.     �.  ,   �.     /     /     //  
   C/     N/  Z  [/  u   �0  �  ,1  �   �2  C   �3  z   4  #   �4  4   �4     �4  m   �4  m   `5  .   �5  A   �5  ,   ?6  �   l6  0   �6  M   7  }   l7  m   �7  �   X8  4   �8  J   9  J   Y9  m   �9  �   :  p   �:  J   ;  s   O;  =   �;  s   <  '   u<  t   �<  O   =  J   b=  �   �=  H   4>  A   }>  p   �>  J   0?  3   {?  x   �?  v   (@  >   �@  B   �@  5   !A  �  WA  >   SC  5   �C  q   �C  G   :D  z   �D  L   �D  A   JE  ,   �E  t   �E  K   .F  p   zF  �   �F  ;   }G  :   �G  o   �G  @   dH  p   �H  O   I  E   fI  ;   �I  H   �I  B   1J  3   tJ  L   �J  F   �J  K   <K  -  �K  "   �L     �L  !   �L  !   M  v   =M  g   �M  G   N  )   dN     �N     �N  I   �N  9   O  +   MO  #   yO  )   �O  "   �O     �O  /   P     7P     WP     wP     �P      �P  ,   �P     �P  (   �P  '   &Q  �   NQ  =   
R  %   HR     nR     wR     �R  ,   �R     �R     �R     �R     S     'S  !   9S  3   [S     �S  1   �S     �S  8   �S  1   +T  -   ]T  )   �T  %   �T  !   �T     �T     U     5U  ,   EU     rU  -   �U  -   �U  3   �U  ?   V     ZV     tV  &   �V  '   �V  0   �V  !   W  	   &W     0W     DW     IW  !   _W  7   �W  @   �W  8   �W  "   3X  +   VX  %   �X  2   �X  >   �X  =   Y  &   XY  (   Y     �Y     �Y     �Y     �Y  %    Z  )   &Z     PZ     eZ     uZ     �Z     �Z     �Z     �Z     �Z     �Z  2   �Z     [     )[     E[     b[     n[        +   �               9   X          o   �   �       u   ~   �       q   $      �   �       a   �      d   r   0      |   j   W      e          �              F   .      �       �       
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
PO-Revision-Date: 2005-02-08 07:55+0000
Last-Translator: Marco Colombo <m.colombo@ed.ac.uk>
Language-Team: Italian <tp@lists.linux.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
   GFMT o LFMT possono contenere:
    %%  %
    %c'C'  il carattere C
    %c'\OOO'  il carattere con codice ottale OOO   GFMT può contenere:
    %<  righe dal FILE1
    %>  righe dal FILE2
    %=  righe comuni a FILE1 e FILE2
    %[-][LARGHEZZA][.[PREC]]{doxX}LETTERA  formato in stile printf per LETTERA
      LETTERA può contenere (in maiuscolo per nuovi gruppi o in minuscolo
      per vecchi):
        F  numero della prima riga
        L  numero dell'ultima riga
        N  numero di righe = L-F+1
        E  F-1
        M  L+1   LFMT può contenere:
    %L  contenuto della riga
    %l  contenuto della riga, ad esclusione di ogni andata a capo finale
    %[-][LARGHEZZA][.[PREC]]{doxX}n  formato in stile printf del
                                     numero di riga di input   LTYPE è 'old', 'new', o 'unchanged'. GTYPE è LTYPE o 'changed'.                             Salta i primi SKIP1 byte di FILE1 e i primi SKIP2
                              byte di FILE2. %s %s differenza: byte %s, riga %s
 %s %s differenza: byte %s, riga %s è %3o %s %3o %s
 %s: diff fallita:  --GTYPE-group-format=GFMT   Simile, ma formatta i gruppi di input GTYPE
                            con GFMT. --LTYPE-line-format=LFMT    Simile, ma formatta le righe di input LTYPE
                            con LFMT. --binary  Leggi e scrivi in modalità binaria. --diff-program=PROGRAMMA    Usa PROGRAMMA per confrontare i file. --from-file e --to-file specificati entrambi --from-file=FILE1           Confronta FILE1 con tutti gli operandi.
                            FILE1 può essere una directory. --help                      Mostra questo aiuto. --horizon-lines=NUM         Mantiene NUM righe di prefisso e suffisso comune. --ignore-file-name-case     Ignora differenze in maiuscole e minuscole
                            confrontando nomi di file. --line-format=LFMT          Simile, ma formatta tutte le righe di input
                            con LFMT. --no-ignore-file-name-case  Considera differenze in maiuscole e minuscole
                            confrontando nomi di file. --normal                    Mostra una diff normale. --speed-large-files         Assume file grandi e tante piccole differenze. --strip-trailing-cr         Elimina i ritorni a capo a fine riga in input. --tabsize=NUM               Stop di tabulazione ogni NUM colonne
                            (predefinito 8). --to-file=FILE2             Confronta tutti gli operandi con FILE2.
                            FILE2 può essere una directory. --unidirectional-new-file   Considera i file mancanti in prima posizione
                            come vuoti. -3  --easy-only             Mostra le differenze che non si sovrappongono. -A  --show-all              Mostra tutte le differenze, tenendo separati
                              i conflitti. -B  --ignore-blank-lines    Ignora differenze in righe vuote. -D NOME  --ifdef=NOME       Mostra le differenze in un unico file usando
                            '#ifdef NOME'. opzione -D non supportata con directory -E  --ignore-tab-expansion  Ignora differenze causate dall'espansione
                            delle tabulazioni. -E  --show-overlap          Mostra le differenze, tenendo separati i conflitti. -H  --speed-large-files     Assume file grandi e tante piccole differenze. -I ER  --ignore-matching-lines=ER  Ignora differenze che corrispondono
                                   all'espressione regolare ER. -L ETICHETTA  --label=ETICHETTA  Usa ETICHETTA invece del nome del file. -N  --new-file              Considera i file mancanti come vuoti. -S FILE  --starting-file=FILE  Comincia con FILE quando si confrontano
                               directory. -T  --initial-tab           Allinea le tabulazioni usando una tabulazione. -W  --ignore-all-space      Ignora tutti gli spazi. -X                          Mostra le differenze che si sovrappongono,
                              tenendole separate. -X FILE  --exclude-from=FILE   Esclude i file che corrispondono a ogni
                               modello in FILE. -a  --text                  Considera tutti i file come testo. -b  --ignore-space-change   Ignora differenze nel numero di spazi. -b  --print-bytes           Stampa i byte differenti. -c  -C NUM  --context[=NUM] Mostra NUM righe (predefinito 3) di contesto
                            copiato.
-u  -U NUM  --unified[=NUM] Mostra NUM righe (predefinito 3) di contesto
                            unificato.
  --label ETICHETTA         Usa ETICHETTA invece del nome del file.
  -p  --show-c-function     Mostra in quale funzione C appare il cambiamento.
  -F ER  --show-function-line=ER  Mostra la più vicina riga che corrisponde
                                  all'espressione regolare ER. -d  --minimal               Minimizza il numero di differenze. -e  --ed                    Mostra uno script per ed. -e  --ed                    Mostra cambiamenti da VECCHIOFILE a TUOFILE
                              in MIOFILE. -i  --ignore-case           Ignora differenze in maiuscole e minuscole. -i  --ignore-case           Ignora differenze in maiuscole e minuscole nel
                            contenuto del file. -i                          Aggiunge i comandi 'w' e 'q' agli script per ed. -i SKIP  --ignore-initial=SKIP  Salta i primi SKIP byte di input. -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column           Mostra solo la colonna di sinistra per le righe
                              in comune. -l  --paginate              Passa l'output attraverso 'pr' per impaginarlo. -l  --verbose               Mostra i numeri e i valori di tutti i byte
                              differenti. -m  --merge                 Mostra le differenze in un file unico invece
                              che in uno script per ed (predefinito -A). -n  --rcs                   Mostra una diff in formato RCS. -n NUM  --bytes=NUM         Confronta al massimo NUM byte. -o FILE  --output=FILE     Lavora in modo interattivo, scrivendo l'output
                             in FILE. -q  --brief                 Segnala solo se i file sono diversi. -r  --recursive             Confronta ricorsivamente ogni sottodirectory
                            incontrata. -s  --quiet  --silent       Non mostra niente; fornisce solo lo stato d'uscita. -s  --report-identical-files   Segnala quando due file sono identici. -s  --suppress-common-lines  Non mostra le righe in comune. -t  --expand-tabs           Espande le tabulazioni in spazi nell'output. -v  --version               Stampa le informazioni sulla versione. -w  --ignore-all-space      Ignora tutti gli spazi. -w NUM  --width=NUM         Mostra al massimo NUM colonne (predefinito 130). -x  --overlap-only          Mostra le differenze che si sovrappongono. -x MODELLO  --exclude=MODELLO  Esclude i file che corrispondono al MODELLO. -y  --side-by-side          Mostra in due colonne.
  -W NUM  --width=NUM       Mostra al massimo NUM colonne (predefinito 130).
  --left-column             Mostra solo la colonna di sinistra per le righe
                            in comune.
  --suppress-common-lines   Non mostra le righe in comune. Sottodirectory in comune: %s e %s
 Confronta i file riga per riga. Confronta tre file riga per riga. Confronta due file byte per byte. Lo stato d'uscita è 0 quando gli input sono identici, 1 quando sono differenti, 2 quando si riscontrano dei problemi. Lo stato d'uscita è 0 se c'è successo, 1 se c'è conflitto, 2 se sono stati
riscontrati dei problemi. FILES sono 'FILE1 FILE2' o 'DIR1 DIR2' o 'DIR FILE...' o 'FILE... DIR'. File %s è un %s mentre file %s è un %s
 I file %s e %s sono identici
 I file %s e %s sono diversi
 Se --from-file o --to-file sono usati, non ci sono restrizioni per FILES. Se un FILE è '-' o è mancante, legge lo standard input. Se un FILE è '-', legge lo standard input. Riferimento all'indietro non valido Nome della classe di caratteri non valido Carattere di collazione non valido Contenuto di \{\} non valido L'espressione regolare precedente non è valida Fine dell'intervallo non valida Espressione regolare non valida Memoria esaurita Nessuna corrispondenza Manca newline alla fine del file Non c'è una espressione regolare precedente Solo in %s: %s
 Fine prematura dell'espressione regolare L'espressione regolare è troppo grande I valori di SKIP possono essere seguiti dai seguenti suffissi moltiplicativi:
kB 1000, K 1024, MB 1,000,000, M 1,048,576,
GB 1,000,000,000, G 1,073,741,824, e così via per T, P, E, Z, Y. SKIP1 e SKIP2 sono il numero di byte da saltare in ogni file. Mostra le differenze fianco a fianco. Successo Torbjorn Granlund Backslash finale Usare '%s --help' per maggiori informazioni. Errore di sistema sconosciuto ( o \( non accoppiata ) o \) non accoppiata [ o [^ non accoppiata \{ non accoppiata Uso: %s [OPZIONE]... FILE1 FILE2
 Uso: %s [OPZIONE]... FILE1 [FILE2 [SKIP1 [SKIP2]]]
 Uso: %s [OPZIONE]... FILES
 Uso: %s [OPZIONE]... MIOFILE VECCHIOFILE TUOFILE
 Scritto da %s e %s.
 Scritto da %s, %s, %s,
%s, %s, %s, %s,
%s, %s, e altri.
 Scritto da %s, %s, %s,
%s, %s, %s, %s,
%s, e %s.
 Scritto da %s, %s, %s,
%s, %s, %s, %s,
e %s.
 Scritto da %s, %s, %s,
%s, %s, %s, e %s.
 Scritto da %s, %s, %s,
%s, %s, e %s.
 Scritto da %s, %s, %s,
%s, e %s.
 Scritto da %s, %s, %s,
e %s.
 Scritto da %s, %s, e %s.
 Scritto da %s.
 '-' specificato per più di un file di input file speciale a blocchi entrambi i file da confrontare sono directory impossibile confrontare '-' con una directory impossibile confrontare i nomi dei file '%s' e '%s' impossibile combinare in modo interattivo con lo standard input file speciale a caratteri cmp: EOF in %s
 conflitto nell'opzione %s: valore '%s' opzioni di stile di output in conflitto opzioni di lunghezza di tabulazione in conflitto opzioni di larghezza in conflitto directory extra operando '%s' fifo opzioni incompatibili il file di input è rimpicciolito errore interno: tipo di diff non valido in process_diff errore interno: il tipo di diff passato all'output non è valido errore interno: problema nel formato dei blocchi di diff valore '%s' non valido per --bytes Valore '%s' non valido per --ignore-initial lunghezza di contesto '%s' non valida formato di diff non valido; ultima riga incompleta formato di diff non valido; caratteri incorretti a inizio riga formato di diff non valido; separatore di modifica non valido lunghezza di orizzonte '%s' non valida lunghezza di tabulazione '%s' non valida larghezza '%s' non valida memoria esaurita coda di messaggi operando mancante dopo '%s' le opzioni -l e -s sono incompatibili paginazione non supportata su questo host errore del programma lettura fallita file normale vuoto file normale semaforo oggetto di memoria condivisa socket overflow dello stack standard output programma accessorio '%s' non può essere chiamato link simbolico troppe opzioni di etichetta oggetto di memoria tipizzata file strano scrittura non riuscita 