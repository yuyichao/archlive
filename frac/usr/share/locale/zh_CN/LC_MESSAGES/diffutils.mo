��    �      �  �   �
      �  ~   �  p     �   �  F   @  I   �     �  0   �     "  L   4  J   �  -   �  5   �  (   0  L   Y     �  D   �  ?     B   E  D   �     �  I   �  =   7  A   u  J   �  =     8   @  9   y  C   �  F   �  (   >  @   g  B   �  M   �  K   9  8   �  ,   �  J   �  9   6  /   p  0   �  K   �  $     G   B  )   �  V  �  9        E  G   d  A   �  <   �  .   +  C   Z  ,   �  ?   �  <     E   H  B   �  %   �  5   �  F   -  .   t  >   �  >   �  A   !   8   c   3   �   #   �   /   �   D   $!  /   i!  4   �!  �   �!  !   �"     �"  !   �"     #  F   5#  =   |#  I   �#  &   $     +$     J$  I   b$  1   �$  &   �$     %     %     9%     U%  $   m%     �%     �%     �%     �%     �%     �%     &  #   "&     F&  �   a&  =   '  '   Q'     y'     �'     �'  %   �'     �'     �'     �'     (     (  "   $(  4   G(     |(  .   �(     �(  ;   �(  3   )  /   O)  +   )  '   �)  #   �)     �)     *     3*  *   C*     n*  )   �*  !   �*  '   �*  )   �*     +     6+      F+     g+     �+  	   �+     �+     �+     �+     �+  1   �+  2   ,  0   K,     |,  #   �,     �,  )   �,  1   -  -   3-     a-     }-     �-     �-     �-     �-  "   �-  %   .     (.     6.     B.     U.  	   b.     l.     �.     �.     �.  ,   �.     �.     �.     �.  
   /     /  n  */  x   �0    1  �   3  s   �3  O   H4  *   �4  K   �4     5  [   #5  [   5  !   �5  4   �5  /   26  f   b6     �6  0   �6  =   7  P   S7  C   �7  *   �7  W   8  P   k8  I   �8  f   9  N   m9  B   �9  W   �9  D   W:  O   �:     �:  F   ;  W   R;  [   �;  k   <  =   r<  =   �<  L   �<  M   ;=  7   �=  4   �=  X   �=  3   O>  E   �>  3   �>  �  �>  0   �@  &   �@  �   A  4   �A  :   �A  5   B  G   KB  ,   �B  L   �B  8   C  ?   FC  N   �C  '   �C  8   �C  R   6D  +   �D  5   �D  A   �D  F   -E  >   tE  9   �E  $   �E  .   F  N   AF  6   �F  4   �F    �F      H     2H     HH     dH  ]   �H  L   �H  k   .I  "   �I     �I     �I  Q   �I  H   AJ  :   �J     �J     �J     �J     K     %K     DK     ]K     vK     �K     �K  !   �K     �K     �K     L  �   L  <   �L  -   �L     !M     (M     :M  4   VM     �M     �M     �M     �M     �M  (   �M  9   'N     aN  0   �N     �N  F   �N  ;   O  6   IO  0   �O  )   �O  $   �O  !    P     "P     >P  '   LP     tP  '   �P      �P  +   �P  3   �P     -Q     @Q  1   TQ     �Q     �Q     �Q     �Q     �Q     �Q     �Q  4    R  3   5R  )   iR     �R  '   �R  !   �R  -   �R  0   &S  B   WS     �S  !   �S     �S     �S     T  "   T     1T     LT     eT     rT     �T     �T  	   �T     �T  	   �T  	   �T     �T  !   �T     �T     U     (U     ;U     KU        +   �               9   X          o   �   �       u   ~   �       q   $      �   �       a   �      d   r   0      |   j   W      e          �              F   .      �       �       
   c      H   R         Z           �   �   w   4   @         _   z   '   �   g       �      5   �   l          �   ^   �   �   �       �   �   �   G   !   ]                  m           y       �   J   *   �       "   �   I      �   8          (              Y   =          :   �   f   ?      [   �   2   �       k   7   �   �   A       {   Q   �   t   -   V               }   �       �      h       C      K   T      M   �       3   6   /   P                     `   B   O   b   >   �   ;           S   D   i   #   �   �   �   ,   \               U   s   )   <   �       1       E       N       �   �              �           %   x   &   �   L              �           	   �           v       p   �       n      Either GFMT or LFMT may contain:
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
 conflicting %s option value `%s' conflicting tabsize options conflicting width options directory extra operand `%s' fifo incompatible options input file shrank internal error: invalid diff type in process_diff internal error: invalid diff type passed to output internal error: screwup in format of diff blocks invalid --bytes value `%s' invalid --ignore-initial value `%s' invalid context length `%s' invalid diff format; incomplete last line invalid diff format; incorrect leading line chars invalid diff format; invalid change separator invalid horizon length `%s' invalid tabsize `%s' invalid width `%s' memory exhausted message queue missing operand after `%s' options -l and -s are incompatible pagination not supported on this host program error read failed regular empty file regular file semaphore shared memory object socket stack overflow standard output subsidiary program `%s' could not be invoked symbolic link too many file label options typed memory object weird file write failed Project-Id-Version: diffutils 2.8.7
Report-Msgid-Bugs-To: bug-diffutils@gnu.org
POT-Creation-Date: 2010-05-03 17:01+0200
PO-Revision-Date: 2004-06-05 11:37+0800
Last-Translator: Yingxin Zhou <eerd003@dlut.edu.cn>
Language-Team: Chinese (simplified) <i18n-zh@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
   GFMT 或 LFMT 可包括：
    %%        %
    %c'C'     字符 C
    %c'\OOO'  八进制数字 OOO 所代表的字符   GFMT 可包括：
    %<  该组中每行属于 FILE1 的差异
    %>  该组中每行属于 FILE2 的差异
    %=  该组中同时在 FILE1 和 FILE2 出现的每一行
    %[-][宽度][.[精确度]]{doxX}字符  以 printf 格式表示该<字符>代表的内容
      大写<字符>表示属于新的文件，小写表示属于旧的文件。<字符>的意义如下：
        F  行组中第一行的行号
        L  行组中最后一行的行号
        N  行数 ( =L-F+1 )
        E  F-1
        M  L+1   LFMT 可包括：
    %L  该行的内容
    %l  该行的内容，但不包括结束的 newline 字符
    %[-][宽度][.[精确度]]{doxX}n  以 printf 格式表示的输入资料行号   LTYPE 可以是‘old’、‘new’或‘unchanged’。GTYPE 可以是 LTYPE 的选择
  或是‘changed’。 略过文件 FILE1 的前 SKIP1 个字节和文件 FILE2 前 SKIP2 个字节。 %s %s 不同：第 %s 字节，第 %s 行
 %1$s %2$s 不同：第 %4$s 行，第 %3$s 字节为 %5$3o %6$s %7$3o %8$s
 %s：diff 失败： --GTYPE-group-format=GFMT  效果类似，但会以 GFMT 格式处理 GTYPE 输入的行。 --LTYPE-line-format=LFMT   效果类似，但会以 LFMT 格式处理 LTYPE 输入的行。 以二进制方式读写数据。 --diff-program=程序  用<程序>来比较文件。 同时指定了选项 --from-file 和 --to-file --from-file=FILE1  将 FILE1 和操作数中的所有文件/目录作比较。FILE1 可以是目录。 --help  输入本帮助。 --horizon-lines=NUM      (此选项不做处理) --ignore-file-name-case  忽略文件名大小写的区别。 --line-format=LFMT  效果类似，但会以 LFMT 格式处理每一行资料。 --no-ignore-file-name-case  不忽略文件名大小写的区别。 --normal 以正常的 diff 方式输出。 --speed-large-files     假设文件十分大而且其中含有许多微小的差异。 --strip-trailing-cr  去除输入内容每行末端的 carriage return 字符。 --tabsize=NUM  定位字符 (tab) 的宽度，默认为 8 个空格宽。 --to-file=FILE2    将操作数中的所有文件/目录和 FILE2 作比较。FILE2 可以是目录。 --unidirectional-new-file  若第一文件案不存在，以空文件处理。 -3  --easy-only   输出未合并而且不重叠的更改部份。 -A  --show-all       输出所有要更改的部份，并括上互相冲突的地方。 -B  --ignore-blank-lines  忽略任何因空行而造成的差异。 -D NAME  --ifdef=NAME  输出的内容以‘#ifdef NAME’方式标明差异。 -D 选项不支持目录使用 -E  --ignore-tab-expansion  忽略由制表符宽度造成的差异。 -E  --show-overlap   输出未合并的更改部份，并括上互相冲突的地方。 -H  --speed-large-files  假设文件十分大而且文件中含有许多微小的差异。 -I RE  --ignore-matching-lines=RE  如果某行匹配正则表达式，则忽略由该行造成的差异。 -L 标识  --label=标识    以<标识>代替文件名称。 -N  --new-file  不存在的文件以空文件方式处理。 -S FILE  --starting-file=FILE  当比较目录時，由 FILE 开始比较。 -T  --initial-tab  每行先加上 tab 字符，使 tab 字符可以对齐。 -W  --ignore-all-space      忽略所有空白字符。 -X  输出重叠的更改部份，并加上括号。 -X FILE  --exclude-from=FILE   排除所有匹配在 FILE 中列出的模式的文件。 -a  --text  所有文件都以文本方式处理。 -b  --ignore-space-change  忽略由空格数不同造成的差异。 -b  --print-bytes 打印出内容相异的字节。 -c  -C 行数  --context[=行数]  显示指定<行数>(默认 3 行)copied 格式的上下文
-u  -U 行数  --unified[=行数]  显示指定<行数>(默认 3 行)unified 格式的上下文
   --label 标识                       使用<标识>代替文件名称。
   -p  --show-c-function           显示和每个差异有关的 C 函数名称。
   -F RE  --show-function-line=RE  显示最接近而符合<正则表示式>的一行。 -d  --minimal  尽可能找出最小的差异。 -e  --ed 以 ed script 方式输出。 -e  --ed             取出由 OLDFILE 至 YOURFILE 的更改部份，并输出可将此
                       改变套用至 MYFILE 的 ed script。 -i  --ignore-case  忽略大写和小写的区别。 -i  --ignore-case  忽略文件内容大小写的区别。 -i  在 ed script 中附加‘w’和‘q’指令。 -i SKIP  --ignore-initial=SKIP  略过输入内容的前 SKIP 字节。 -i SKIP1:SKIP2  --ignore-initial=SKIP1:SKIP2 -l  --left-column           当有两行相同时只显示左边的一行。 -l  --paginate 将输出送至‘pr’指令来分页。 -l  --verbose  输出所有相异字节的字节数和内容。 -m  --merge   显示合并后的文件而不是 ed script (默认加上 -A)。 -n  --rcs  以 RCS diff 格式输出。 -n LIMIT  --bytes=LIMIT  最多比较 LIMIT 个字节。 -o 文件  --output=文件      交互式操作，并将结果写入至<文件>。 -q  --brief  只显示文件是否不同。 -r  --recursive  连同所有子目录一起比较。 -s  --quiet  --silent  无任何输出；只产生退出状态。 -s  --report-identical-files   当两个一样时仍然显示结果。 -s  --suppress-common-lines  当有两行相同时不显示。 -t  --expand-tabs  将输出中的 tab 转换成空格。 -v  --version  输出版本信息。 -w  --ignore-all-space   忽略所有空格。 -w NUM  --width=NUM         每行显示最多 NUM（默认 130）个字符。 -x  --overlap-only   只输出重叠的更改部份。 -x PAT  --exclude=PAT  排除匹配 PAT 的文件。 -y  --side-by-side         以两列并排的方式显示。
  -W NUM  --width=NUM      每行显示最多 NUM (默认 130) 个字符。
  --left-column            当有两行相同时只显示左边的一行。
  --suppress-common-lines  当有两行相同时不会显示。 %s 和 %s 有共同的子目录
 逐行比较文件。 逐行比较三个文件。 逐字节比较两个文件。 如果输入相同，则退出状态为 0；1 表示输入不同；2 表示有错误产生。 退出状态为 0 表示成功，1 表示冲突，2 表示有错误发生。 FILES 的格式可以是‘FILE1 FILE2’、‘DIR1 DIR2’、‘DIR FILE...’或
    ‘FILE... DIR’。 文件 %s 是%s而文件 %s 是%s
 檔案 %s 和 %s 相同
 文件 %s 和 %s 不同
 如果使用 --from-file 或 --to-file 选项，FILES 的格式则不受限制。 如果文件是 “-” 或没给出，则从标准输入读入内容。 如果 FILE 是‘-’，则由标准输入读取内容。 无效的向后引用 无效的字符种类名称 无效的对照字符 \{\} 中的内容无效 无效的前导正则表达式 范围末端字符无效 无效的正则表达式 内存耗尽 没有匹配 文件尾没有 newline 字符 之前没有任何正则表达式 只在 %s 存在：%s
 正则表达式过旱结束 正则表达式过大 SKIP 值可以加上以下的单位：
kB=1000、K=1024、MB=1000000、M=1048576、GB=1000000000、G=1073741824，
还有 T、P、E、Z、Y 如此类推。 SKIP1 和 SKIP2分别是每个文件要略过的字节数。 以并排方式合并文件之间的差异。 成功 Torbjorn Granlund 末端有多余的反斜号 请尝试 “%s --help”，以获得更多信息。 未知的系统错误 没有匹配的 ( 或 \( 没有匹配的 ) 或 \ 没有匹配的 [ 或 [^ 没有匹配的 \{ 用法：%s [选项]... 文件1 文件2
 用法: %s [选项]... 文件1 [文件2 [SKIP1 [SKIP2]]]
 用法：%s [选项]... FILES
 用法：%s [选项]... MYFILE OLDFILE YOURFILE
 作者 %s 和 %s。
 作者 %s，%s，%s，
%s，%s，%s，%s，
%s，%s，和其他人。
 作者 %s，%s，%s，
%s，%s，%s，%s，
%s，和 %s。
 作者 %s，%s，%s，
%s，%s，%s，%s，
和 %s。
 作者 %s，%s，%s，
%s，%s，%s，和 %s。
 作者 %s，%s，%s，
%s，%s 和 %s。
 作者 %s，%s，%s，
%s 和 %s。
 作者 %s，%s，%s，
和 %s。
 作者 %s，%s，和 %s。
 作者 %s。
 输入文件 “-” 不可多於一个 特殊块文件 两个要被比较的文件都是目录 “-” 无法与目录作比较 无法比较文件名 “%s“ 和 ”%s“ 不允許以交互方式合并标准输入的内容 特殊字符文件 cmp：%s 已结束
 互相冲突的 %s 选项，参数值为 “%s” 的制表符选项冲突 宽度选项冲突 目录 多余的操作数 “%s” fifo 不兼容的选项 输入文件缩小 内部错误：process_diff 中的 diff 类型无效 内部错误：传递给输出的 diff 类型无效 内部错误：diff 区段的格式出错 无效的 --bytes 值 `%s' 无效的 --ignore-initial 值 “%s” 无效的上下文行数 “%s” 无效的 diff 格式；最后一行不完整 无效的 diff 格式；错误的行前导字符 无效的 diff 格式；表示内容改变的分隔字符串无效 无效的水平长度 “%s” 无效的制表符宽度 “%s” 无效的宽度 “%s” 内存耗尽 消息队列 操作数 “%s” 后缺少参数 选项 -l 和 -s 不兼容 此系统不支持分页 程序错误 读取时失败 常规空文件 常规文件 信号量 共享内存目标 套接字 栈溢出 标准输出 无法调用辅助程序 “%s” 符号链接 过多的文件标号选项 分类内存目标 奇怪的文件 写入失败 