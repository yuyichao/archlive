��    p      �  �         p	  �   q	  �   A
  0    �  =       /    %  M  ~  s  Q  �  g  D  k  �  G    %   `     �  0   �     �     �  ,     ,   1  '   ^  -   �      �  (   �  (   �     '     G     g     i     m     ~  Q   �     �  ?        B     Y     v     �  $   �     �     �  <   �  <   9     v     �     �     �  5   �  1   �  :   $     _     o  #   �     �     �  3   �            &   )     P     e     w     �     �  (   �     �  �   �     �  ;   �  3     /   K  +   {  '   �  #   �     �           /      ?   q   A      �   4   �      !  )   $!  Z   N!  F   �!     �!     "     '"     B"     Z"     z"     �"  $   �"     �"     �"     �"     �"  >   #     L#  M   e#  P   �#  ,   $     1$     >$     K$     X$     l$     �$     �$     �$     �$     �$  x  �$  �   Y&  �   '    �'  �  )     �*    �*  B  �+  �  +-  F  �.  l  0  m  n1  D  �2     !4     A4  -   R4     �4     �4  (   �4  (   �4  %   5  )   *5      T5  &   u5  )   �5     �5     �5      6     6     6     6  K   46     �6  9   �6     �6     �6     �6     7     +7     J7     `7  =   y7  >   �7     �7     8  	   8     8  9   98  ?   s8  C   �8     �8     9     9     99     O9  6   n9     �9     �9  .   �9     �9     :     :     *:     =:  )   J:     t:  	  �:     �;  >   �;  1   �;  -   <  )   C<  %   m<  !   �<     �<     �<     �<     �<  {   �<     z=  2   �=  $   �=  (   �=  s   >  U   �>     �>     �>     ?     5?     K?     g?     z?  "   �?     �?     �?     �?     �?  H   �?     E@  N   X@  ;   �@  $   �@     A     A     ,A     >A     QA     gA     �A     �A  	   �A     �A     `   Q   k   <      D       /   Z   S   2       "       d   H           p   [         M   >       W                  a   o   8   P      j   \          .          A      5   @          $           4   '           K   =       i   O           F   ^   0   h           ?          )   b       9      T   3             L   1   !   &   :   _   N   E       ]      g   	   C       G       e   #   Y       -      R   +      7   c   %   *      f   ;       X   6      U                 V   m       B       I      ,               l       J                  (      
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
 ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified in GREP_COLORS="%s", the "%s" capacity %s in GREP_COLORS="%s", the "%s" capacity is boolean and cannot take a value ("=%s"); skipped in GREP_COLORS="%s", the "%s" capacity needs a value ("=..."); skipped input is too large to count invalid %s%s argument `%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument `%s' lseek failed malformed repeat count memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop stopped processing of ill-formed GREP_COLORS="%s" at remaining substring "%s" support for the -P option is not compiled into this --disable-perl-regexp binary the -P option only supports a single pattern unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unfinished repeat count unknown binary-files type unknown devices method warning: %s: %s write error writing output Project-Id-Version: grep 2.7.30-pre1
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2011-06-21 20:06+0200
PO-Revision-Date: 2011-04-28 20:31+0800
Last-Translator: Ji ZhengYu <zhengyuji@gmail.com>
Language-Team: Chinese (simplified) <i18n-zh@googlegroups.com>
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
 
文件控制:
  -B, --before-context=NUM  打印以文本起始的NUM 行
  -A, --after-context=NUM   打印以文本结尾的NUM 行
  -C, --context=NUM         打印输出文本NUM 行
 
GPLv3+ 许可证: GNU 通用公共许可证第三版或更高版本 <http://gnu.org/licenses/gpl.html>。
这是自由软件: 您可自由更改并重新分发它。
在法律所允许的范围内,不附带任何担保条款。

 
杂项:
  -s, --no-messages         不显示错误信息
  -v, --invert-match        选中不匹配的行
  -V, --version             显示版本信息并退出
      --help                显示此帮助并退出
      --mmap                忽略向后兼容性
 
输出控制:
  -m, --max-count=NUM       NUM 次匹配后停止
  -b, --byte-offset         输出行的同时打印字节偏移
  -n, --line-number         输出行的同时打印行号
      --line-buffered       每行输出清空
  -H, --with-filename       为每一匹配项打印文件名
  -h, --no-filename         输出时不显示文件名前缀
      --label=LABEL         标准输入将LABEL 打印为文件名
 
请将错误报告给: %s
       --include=FILE_PATTERN  只查找匹配FILE_PATTERN 的文件
      --exclude=FILE_PATTERN  跳过匹配FILE_PATTERN 的文件和目录
      --exclude-from=FILE   跳过所有除FILE 以外的文件
      --exclude-dir=PATTERN  跳过所有匹配PATTERN 的目录。
   -E, --extended-regexp     PATTERN 是一个可扩展的正则表达式(缩写为 ERE)
  -F, --fixed-strings       PATTERN 是一组由断行符分隔的定长字符串。
  -G, --basic-regexp        PATTERN 是一个基本正则表达式(缩写为 BRE)
  -P, --perl-regexp         PATTERN 是一个 Perl 正则表达式
   -I                        等同于 --binary-files=without-match
  -d, --directories=ACTION  操作目录的方式；
                            ACTION 可以是`read', `recurse',或`skip'
  -D, --devices=ACTION      操作设备、先入先出队列、套接字的方式；
                            ACTION 可以是`read'或`skip'
  -R, -r, --recursive       等同于 --directories=recurse
   -L, --files-without-match  只打印不匹配FILEs 的文件名
  -l, --files-with-matches  只打印匹配FILES 的文件名
  -c, --count               只打印每个FILE 中的匹配行数目
  -T, --initial-tab         行首tabs 分隔（如有必要）
  -Z, --null                在FILE 文件最后打印空字符
   -NUM                      等同于 --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       使用标志高亮匹配字串；
                            WHEN 可以是`always', `never'或`auto'
  -U, --binary              不要清除行尾的CR 字符(MSDOS 模式)
  -u, --unix-byte-offsets   当CR 字符不存在，报告字节偏移(MSDOS 模式)

   -e, --regexp=PATTERN      用 PATTERN 来进行匹配操作
  -f, --file=FILE           从 FILE 中取得 PATTERN
  -i, --ignore-case         忽略大小写
  -w, --word-regexp         强制 PATTERN 仅完全匹配字词
  -x, --line-regexp         强制 PATTERN 仅完全匹配一行
  -z, --null-data           一个 0 字节的数据行，但不是空行
   -o, --only-matching       只显示一行中匹配PATTERN 的部分
  -q, --quiet, --silent     不显示所有输出
      --binary-files=TYPE   假定二进制文件的TYPE 类型；
                            TYPE 可以是`binary', `text', 或`without-match'
  -a, --text                等同于 --binary-files=text
 %s 只能使用 %s 匹配语法 %s 主页: <%s>
 %s 主页: <http://www.gnu.org/software/%s/>
 %s%s 参数‘%s’过多 %s: 无效选项 -- %c
 %s: 选项 ‘%c%s’不允许带参数
 %s: 选项 ‘--%s’不允许带参数
 %s: 选项 ‘--%s’必须带参数
 %s: 选项 ‘-W %s’不允许带参数
 %s: 选项 ‘-W %s’有歧义
 %s: 选项 ‘-W %s’必须带参数
 %s: 选项必须带有一个参数 -- %c
 %s: 未知选项 ‘%c%s’
 %s: 未知选项 ‘--%s’
 ’ (C) (标准输入) 匹配到二进制文件 %s
 例如: %s -i 'hello world' menu.h main.c

正则表达式选择与解释:
 GNU Grep 主页: <%s>
 GNU 软件的通用帮助: <http://www.gnu.org/gethelp/>
 无效的回退索引 无效的字符类名 无效的冲突字符 \{\} 中的内容无效 之前的正则表达式无效 无效的结束地址 无效的正则表达式 ‘egrep’已不再使用了；请用‘grep -E’代替。
 ‘fgrep’已不再使用了；请用 ‘grep -F’代替。
 内存耗尽 Mike Haertel 无匹配 没有之前的正则表达式 PATTERN 是一组由断行符分隔的定长字符串。
 PATTERN 是一个可扩展的正则表达式(缩写为 ERE)。
 默认的 PATTERN 是一个基本正则表达式(缩写为 BRE)。
 由 %s 打包
 由 %s (%s) 打包
 正则表达式非正常结束 正则表达式太大 请将 %s 错误报告给: %s
 在每个 FILE 或是标准输入中查找 PATTERN。
 成功 多余的反斜杠 试用‘%s --help’来获得更多信息。
 未知的系统错误 ( 或 \( 不匹配 ) 或 \) 不匹配 [ 或 [^ 不匹配 \{ 不匹配 用法: %s [选项]... PATTERN [FILE]...
 有效参数是: 不带 FILE 参数，或是 FILE 为 -，将读取标准输入。如果少于两个 FILE 参数
就要默认使用 -h 参数。如果选中任意一行，那退出状态为 0，否则为 1；
如果有错误产生，且未指定 -q 参数，那退出状态为 2。
 作者 %s 和 %s。
 作者 %s, %s, %s,
%s, %s, %s, %s,
%s, %s, 以及其他人。
 作者 %s, %s, %s,
%s, %s, %s, %s,
%s, 及 %s。
 作者 %s, %s, %s,
%s, %s, %s, %s,
及 %s。
 作者 %s, %s, %s,
%s, %s, %s, 及 %s。
 作者 %s, %s, %s,
%s, %s, 及 %s。
 作者 %s, %s, %s,
%s, 及 %s。
 作者 %s, %s, %s,
及 %s。
 作者 %s, %s 及 %s。
 作者 %s。
 ‘ ‘egrep’即‘grep -E’。‘fgrep’即‘grep -F’。
直接使用‘egrep’或是‘fgrep’均已不可行了。
 %2$s 的参数 %1$s 有歧义 字符类的语法是 [[:space:]],而非 [:space:] 指定了互相冲突的比较程序 在 GREP_COLORS="%s"中，"%s" 是 %s。 在 GREP_COLORS="%s"中，"%s" 要的是一个 boolean(布尔值) 不是一个数值("=%s")；已忽略此参数。 在 GREP_COLORS="%s"中， "%s" 需要指定一个值("=...")；已忽略此参数。 输入太多无法计数 无效的 %s%s 参数‘%s’ %2$s 的参数 %1$s 无效 无效的字符类名 无效的文本长度参数 无效的比较 %s 无效的最大计数 %s%s 参数‘%s’的后缀无效 lseek 失败 重复次数定义地不完整 内存耗尽 未指定语法 其余作者请参看 <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> 嵌套目录循环 在余下的子串 "%2$s" 中停止处理格式有误的 GREP_COLORS="%1$s"。 -P 选项的支持未编译入 --disable-perl-regexp binary -P 选项仅支持单一匹配字词 有未匹配的 ( 有未匹配的 ) 有未匹配的 [ 未做好 \ 转义 未定义重复次数 未知的二进制文件类型 未知的设备处理方法 警告: %s: %s 写错误 正在写输出 