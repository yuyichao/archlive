��    Q      �  m   ,      �  Q  �  `   3
  b   �
  0   �
  p   (  k   �  #        )     F     ]  )   s  	   �  3   �     �  �   �      �  ,   �  $   �     �  #         2     S     s  #   �  !   �     �     �  <     <   B  <     %   �      �          "     =     T     c     w     �     �     �  �   �  &   �     �     �       �     d   �     a  $   x  u   �  C     =   W     �  &   �     �  )   �       H   *  (   s  E  �  �   �  �   �  .   �  F   �  "     -   0     ^  
   ~     �     �     �     �     �     �     �                      �  &  �  �  u   j  h   �  1   I   �   {   ~   !  $   �!      �!     �!     �!  3   "     H"  G   T"     �"  �   �"  (   i#  8   �#  1   �#  !   �#  ,   $  $   L$  -   q$     �$  1   �$  #   �$     %  '   2%  <   Z%  <   �%  <   �%  %   &      7&  !   X&      z&     �&     �&     �&     �&     �&  !   '     3'  �   P'  %   (  '   :(     b(  )   }(  �   �(  l   �)     �)  )   
*  u   4*  D   �*  B   �*     2+  -   R+     �+  0   �+     �+  Y   �+  .   ?,  f  n,    �-  �   �.  B   �/  M   �/  !   L0  7   n0  (   �0     �0     �0  
   �0     �0     1     $1     81  (   ?1     h1  
   n1  	   y1     �1         P       -            #   	   /   *       N   M       %               4   0      "              @      A            O   ?   Q                            
       $          3         J          &           !              8           ,      )       L   .            2          1   7   H   (      B          <   +   =          K   6       '   :                    ;   E   >   D   I   9   C   5   G   F           killall -l, --list
       killall -V, --version

  -e,--exact          require exact match for very long names
  -I,--ignore-case    case insensitive process name match
  -g,--process-group  kill process group instead of process
  -y,--younger-than   kill processes younger than TIME
  -o,--older-than     kill processes older than TIME
  -i,--interactive    ask for confirmation before killing
  -l,--list           list all known signal names
  -q,--quiet          don't print complaints
  -r,--regexp         interpret NAME as an extended regular expression
  -s,--signal SIGNAL  send this signal instead of SIGTERM
  -u,--user USER      kill only process(es) running as USER
  -v,--verbose        report if the signal was successfully sent
  -V,--version        display version information
  -w,--wait           wait for processes to die
   -                     reset options

  udp/tcp names: [local_port][,[rmt_host][,[rmt_port]]]

   -4,--ipv4             search IPv4 sockets only
  -6,--ipv6             search IPv6 sockets only
   -Z     show         SELinux security contexts
   -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
   PID    start at this PID; default is 1 (init)
  USER   show only trees rooted at processes of this user

 %*s USER        PID ACCESS COMMAND
 %s is empty (not mounted ?)
 %s: Invalid option %s
 %s: no process found
 %s: unknown signal; %s -l lists signals.
 (unknown) /proc is not mounted, cannot stat /proc/self/stat.
 Bad regular expression: %s
 CPU Times
  This Process    (user system guest blkio): %6.2f %6.2f %6.2f %6.2f
  Child processes (user system guest):       %6.2f %6.2f %6.2f
 Can't get terminal capabilities
 Cannot allocate memory for matched proc: %s
 Cannot find socket's device number.
 Cannot find user %s
 Cannot get UID from process status
 Cannot open /proc directory: %s
 Cannot open /proc/net/unix: %s
 Cannot open a network socket.
 Cannot open protocol file "%s": %s
 Cannot resolve local port %s: %s
 Cannot stat %s: %s
 Cannot stat file %s: %s
 Copyright (C) 1993-2005 Werner Almesberger and Craig Small

 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 1993-2010 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Copyright (C) 2009 Craig Small

 Could not kill process %d: %s
 Error attaching to pid %i
 Invalid namespace name Invalid option Invalid time format Kill %s(%s%d) ? (y/N)  Kill process %d ? (y/N)  Killed %s(%s%d) with signal %d
 Maximum number of names is %d
 Memory
  Vsize:       %-10s
  RSS:         %-10s 		 RSS Limit: %s
  Code Start:  %#-10lx		 Code Stop:  %#-10lx
  Stack Start: %#-10lx
  Stack Pointer (ESP): %#10lx	 Inst Pointer (EIP): %#10lx
 Namespace option requires an argument. No process specification given No processes found.
 No such user name: %s
 PSmisc comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under
the terms of the GNU General Public License.
For more information about these matters, see the files named COPYING.
 Page Faults
  This Process    (minor major): %8lu  %8lu
  Child Processes (minor major): %8lu  %8lu
 Press return to close
 Process with pid %d does not exist.
 Process, Group and Session IDs
  Process ID: %d		  Parent ID: %d
    Group ID: %d		 Session ID: %d
  T Group ID: %d

 Process: %-14s		State: %c (%s)
  CPU#:  %-3d		TTY: %s	Threads: %ld
 Scheduling
  Policy: %s
  Nice:   %ld 		 RT Priority: %ld %s
 Signal %s(%s%d) ? (y/N)  Specified filename %s does not exist.
 TERM is not set
 Unable to open stat file for pid %d (%s)
 Unknown local port AF %d
 Usage: killall [-Z CONTEXT] [-u USER] [ -eIgiqrvw ] [ -SIGNAL ] NAME...
 Usage: killall [OPTION]... [--] NAME...
 Usage: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 output 8 bit clean streams.
    -n don't display read/write from fd headers.
    -c peek at any new child processes too.
    -d remove duplicate read/writes from the output.
    -V prints version info.
    -h prints this help.

  Press CTRL-C to end output.
 Usage: pidof [ -eg ] NAME...
       pidof -V

    -e      require exact match for very long names;
            skip if the command line is unavailable
    -g      show process group ID instead of process ID
    -V      display version information

 Usage: prtstat [options] PID ...
       prtstat -V
Print information about a process
    -r,--raw       Raw display of information
    -V,--version   Display version information and exit
 You can only use files with mountpoint options You cannot search for only IPv4 and only IPv6 sockets at the same time You must provide at least one PID. all option cannot be used with silent option. asprintf in print_stat failed.
 disk sleep fuser (PSmisc) %s
 paging peekfd (PSmisc) %s
 prtstat (PSmisc) %s
 pstree (PSmisc) %s
 running skipping partial match %s(%d)
 sleeping traced unknown zombie Project-Id-Version: psmisc 22.11-pre1
Report-Msgid-Bugs-To: csmall@small.dropbear.id.au
POT-Creation-Date: 2011-06-20 21:47+1000
PO-Revision-Date: 2010-03-29 10:09+0100
Last-Translator: Mikel Olasagasti <hey_neken@mundurat.net>
Language-Team: Basque <translation-team-eu@lists.sourceforge.net>
Language: eu
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
        killall -l, --list
       killall -V --version

  -e,--exact          izen oso luzeentzat berdin-berdin idaztea behar da
  -I,--ignore-case    ez ezberdindu letra maiskula/minuskulak
  -g,--process-group  hil prozesu taldea prozesuaren ordez
  -y,--younger-than ORDUA baina berriagoak diren prozesuak hil
  -o, --older-than   ORDUA baina zaharragoak diren prozesuak hil
  -i,--interactive    konfirmazioa eskatu hil aurretik
  -l,--list           zerrendatu seinale ezagun guztien izenak
  -q,--quiet          ez erakutsi kexuak
  -r, --regexp       interpretatu IZENA luzatutako expresio erregular bat bezala
  -s,--signal SEINALEA         bidali seinalea SIGTERM-ren ordez
  -u, --user ERABILTZAILEA    hil ERABILTZAILEA bezela exekutatzen hari diren prozesuak
  -v,--verbose        informatu seinalea arrakasterekin bidali bada
  -V,--version        bertsioaren informazioa bistaratu
  -w,--wait           itxaron prozesuak hil arte

   -                     garbitu aukerak

  udp/tcp izenak: [ataka_lokala][,[urruneko_ostalaria][,[urruneko_ataka]]]

     -4,--ipv4        bilatu IPv4 socket-ak bakarrik
    -6,--ipv6        bilatu IPv6 socket-ak bakarrik
   -Z     SELinux segurtasun kontestuak bistaratu
   -Z,--context REGEXP hil kontestua duten prozesuak bakarrikkill only process(es)
                      (beste argumentu batzuk aurretik izan behar ditu)
     PID    zein PID-etan hasi, lehenetsia 1 (init)
    ERABILTZAILEA   erakutsi erabiltzaile honen zuahitz prozesuen adarrak

 %*s ERAB.      PID SARRERA KOMANDOA
 %s hutsik dago (muntatu gabea?)
 %s: %s baliogabeko aukera
 %s: ez da prozesurik aurkitu
 %s: seinale ezezaguna; %s -l seinaleak zerrendatu.
 (ezezaguna) /proc ez dago muntatua, ezin da stat egin /proc/self/stat fitxategian.
 Expresio erregular okerra: %s
 CPU denborak
  Prozesu hau    (erabiltzailea sistema gonbidatua blkio): %6.2f %6.2f %6.2f %6.2f
  Seme prozesuak (erabiltzailea sistema gonbidatua):       %6.2f %6.2f %6.2f
 Ezin dira terminalaren gaitasunak lortu
 Ezin da memoria esleitu aurkitutako prozesuarentzat: %s
 Ezin izan da socket-aren gailu zenbakia aurkitu.
 Ezin da %s erabiltzailea aurkitu
 Ezin da UID-a lortu prozesuaren egoeragatik
 Ezin da /proc direktorioa ireki: %s
 Ezin da /proc/net/unix direktorioa ireki: %s
 Ezin da sare socket bat ireki.
 Ezin izan da "%s" protokolo fitxategia ireki: %s
 Ezin da %s ataka lokala ebatzi: %s
 Ezin da %s identifikatu: %s
 Ezin da %s fitxategia identifikatu: %s
 Copyright (C) 1993-2005 Werner Almesberger eta Craig Small

 Copyright (C) 1993-2009 Werner Almesberger and Craig Small

 Copyright (C) 1993-2010 Werner Almesberger eta Craig Small

 Copyright (C) 2007 Trent Waddington

 Copyright (C) 2009 Craig Small

 Ezin izan da %d prozesua hil: %s
 Errorea %i prozesura atxikitzen
 Baliogabeko namespace izena Baliogabeko aukera Baliogabeko ordu formatua %s(%s%d) hil? (y/N)  %d prozesua hil? (y/N)  %s(%s%d) hil da %d seinalearekin
 Izen kopuru gehiengoa %d da
 Memoria
  Vsize:       %-10s
  RSS:         %-10s 		 RSS Limitea: %s
  Code Start:  %#-10lx		 Code Stop:  %#-10lx
  Stack Start: %#-10lx
  Stack Pointer (ESP): %#10lx	 Inst Pointer (EIP): %#10lx
 Namespace aukerak argumentua behar du Ez da prozesuaren espezifikaziorik eman Ez da prozesurik aurkitu.
 Ez dago honelako erabiltzaile izenik: %s
 PSmisc-k ez du INONGO BERMERIK.
Software librea da, eta berriro bana daiteke GNU Lizentzia Publiko Orokorrak
ezarritako baldintzak betez.
Gai honi buruzko informazio gehiagorako, ikusi COPYING izena duten fitxategiak.
 Orrikatze hutsegiteak
  Prozesu hau    (minor major): %8lu  %8lu
  Seme prozesuak (minor major): %8lu  %8lu
 Sakatu 'return' itxitzeko
 %d pid-a duen prozesua ez da existitzen.
 Prozesua, taldea eta saio IDak
  Prozesu IDa: %d		  Aita IDa: %d
    Talde IDa: %d		 Saio IDa: %d
  T Talde IDa: %d

 Prozesua: %-14s		Egoera: %c (%s)
  CPU#:  %-3d		TTY: %s	Hariak: %ld
 Antolaketa
  Politika: %s
  Nice:   %ld 		 RT Prioritatea: %ld %s
 Seinala bidali %s(%s%d)? (b/E)  Adierazitako %s fitxategia ez da existitzen.
 TERM ez dago ezarrita
 Ezin da stat fitxategia ireki %d (%s) pid-erako
 AF ataka lokal ezezaguna %d
 Erabilera: killall [-Z KONTESTUA] [-u ERABILTZAILEA] [ -egiqvw ] [ -SEINALEA ] IZENA ...
 erabilera: killall [AUKERAK ] [ -- ] IZENA...
 Erabilera: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8 8 bit-eko irteera jario garbiak.
    -n ez bistaratu fd goiburuen irakurketa/idazketak.
    -c seme-prozesu berriak ere begiratu.
    -d ezabatu irteerako irakurketa/idazketa bikoiztuak.
    -V bistaratu bertsioaren informazioa.
    -h laguntza hau bistaratu.

  Sakatu CTR-C amaitzeko.
 Erabilera: pidof [ -eg ] IZENA ...
       pidof -V

    -e      izen oso luzeentzat berdin-berdin idaztea behar da;
            jauzi komandoa-lerroa eskuragarri ez badago
    -g      erakutsi prozesu taldearen IDa prozesuearenaren ordez
    -V      bertsioaren informazioa bistaratu

 Erabilera: prtstat [aukerak] PID ...
       prtstat -V
Prozesu baten informazioa bistaratu
    -r,--raw       Informazioa gordinik bistaratu
    -V,--version   Erakutsi bertsio informazioa eta irten
 muntai-puntu aukerak dituzten fitxategiak erabil ditzazkezu soilik Ezin dituzu IPv4 socket-ak soilik eta IPv6 socket-ak soilik bilatu une berean Gutxienez PID bat eman behar duzu aukera guztiak ezin dira ixiltasun aukerarekin erabili. asprintf-ek print_stat-en huts egin du.
 lotan (diska) fuser (PSmisc) %s
 orrikatzen peekfd (PSmisc) %s
 prtstat (PSmisc) %s
 pstree (PSmisc) %s
 aktibo baterakuntza partziala saltatzen %s(%d)
 lotan trazeatuta ezezaguna zombie 