��    o      �  �         `	  �   a	  �   1
  0  �
  �  -     �  /    %  =  Q  c  g  �  k    G  �  %   �     �  0        <     Y  ,   u  ,   �  '   �  -   �      %  (   F  (   o     �     �     �     �     �     �  Q        Y  ?   s     �     �     �       $        @     R  <   m  <   �     �     �            5   -  1   c  :   �     �     �  #   �          4  3   K          �  &   �     �     �     �     �       (        B  �   W     5  ;   L  3   �  /   �  +   �  '     #   @     d     �     �     �  q   �     $  4   A     v  )   �  Z   �  F         a      }      �      �      �      �      �   $   !     5!     B!     Y!     j!  >   ~!     �!  M   �!  P   $"  ,   u"     �"     �"     �"     �"     �"     �"     #     &#     6#     B#  �  Q#  �   �$  �   �%  G  �&    �'  '   *  D  .*  6  s+  �  �,  �  5.  �  �/  o  �1  0   �2     "3  0   63     g3  &   �3  /   �3  /   �3  )   4  .   64  "   e4  )   �4  ,   �4  (   �4  (   5     15     35     75     I5  c   h5     �5  @   �5     '6  &   D6  "   k6     �6  *   �6     �6     �6  O   7  O   a7     �7     �7     �7  %   �7  I   8  +   R8  7   ~8     �8     �8  %   �8      9  %   &9  D   L9     �9     �9  1   �9     �9     �9     :  !   5:     W:  )   r:     �:  �   �:     �;  ;   �;  1    <  -   2<  )   `<  %   �<  !   �<     �<     �<     	=     =  <   =     W=  D   r=  .   �=  *   �=  g   >  O   y>  9   �>     ?      ?     ??  +   _?  "   �?     �?  +   �?     �?      @     %@     5@  H   N@     �@  Q   �@  \   A  (   eA     �A     �A     �A  %   �A  #   �A     
B  +   *B     VB     jB     }B     _   P   j   ;      C       .   Y   R   1       !       c   G           o   Z         L   =       V      
            `   n   7   O      i   [          -          @      4   ?          #           3   &           J   <       h   N           E   ]   /   g           >          (   a       8      S   2             K   0       %   9   ^   M   D       \      f      B       F       d   "   X       ,          *      6   b   $   )      e   :       W   5      T                 U   l       A       H      +               k       I                 '   Q   	   m           
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
 ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified in GREP_COLORS="%s", the "%s" capacity %s in GREP_COLORS="%s", the "%s" capacity is boolean and cannot take a value ("=%s"); skipped in GREP_COLORS="%s", the "%s" capacity needs a value ("=..."); skipped input is too large to count invalid %s%s argument `%s' invalid argument %s for %s invalid character class invalid context length argument invalid matcher %s invalid max count invalid suffix in %s%s argument `%s' lseek failed malformed repeat count memory exhausted no syntax specified others, see <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> recursive directory loop stopped processing of ill-formed GREP_COLORS="%s" at remaining substring "%s" support for the -P option is not compiled into this --disable-perl-regexp binary the -P option only supports a single pattern unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unfinished repeat count unknown binary-files type unknown devices method warning: %s: %s write error writing output Project-Id-Version: GNU grep 2.7
Report-Msgid-Bugs-To: bug-grep@gnu.org
POT-Creation-Date: 2011-06-21 20:06+0200
PO-Revision-Date: 2010-12-21 17:21+0100
Last-Translator: Nicolas Provost <nprovost@quadriv.com>
Language-Team: French <traduc@traduc.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 
Contr�le de contexte :
  -B, --before-context=NUM  affiche NUM lignes de contexte avant
  -A, --after-context=NUM   affiche NUM lignes de contexte apr�s
  -C, --context=NUM         affiche NUM lignes de contexte en sortie
 
Licence GPLv3+: GNU GPL version 3 ou ult�rieure <http://gnu.org/licenses/gpl.html>.
Logiciel libre : vous �tes libre de le modifier ou de le redistribuer.
Il n'y a AUCUNE GARANTIE, dans les limites autoris�es par la loi.

 
Divers :
  -s, --no-messages         supprimer les messages d'erreur
  -v, --invert-match        s�lectionner les lignes sans concordance
  -V, --version             afficher le nom et la version du logiciel
      --help                afficher l'aide et quitter
      --mmap                ignor�e (pour r�tro-compatibilit�)
 
Contr�le de la sortie :
  -m, --max-count=NUM       arr�te apr�s NUM correspondances
  -b, --byte-offset         affiche le d�calage en octets avec les lignes en sortie
  -n, --line-number         affiche les num�ros de lignes avec la sortie
      --line-buffered       vide le tampon apr�s chaque ligne
  -H, --with-filename       affiche le nom de fichier pour chaque concordance
  -h, --no-filename         supprime le pr�fixe nom de fichier en sortie
      --label=LABEL         affiche LABEL comme nom de fichier en entr�e standard
 
Rapporter toutes les anomalies � : %s
       --include=MOTIF_FIC  cherche dans les fichiers concordants avec MOTIF_FIC
      --exclude=MOTIF_FIC  ignore fichiers et r�p. concordants avec MOTIF_FIC
      --exclude-from=FIC   ignore les fichiers concordants avec les motifs contenus dans FIC
      --exclude-dir=MOTIF  ignore les r�pertoires concordants avec MOTIF
   -E, --extended-regexp     MOTIF est une expression reguli�re �tendue
  -F, --fixed-regexp        MOTIF est un ensemble cha�nes fixes s�par�es par des retours chariot
  -G, --basic-regexp        MOTIF est une expression r�guli�re de base
  -P, --perl-regexp         MOTIF est une expression r�guli�re en Perl
   -L, --files-without-match  affiche seulement les noms de fichiers sans concordances
  -l, --files-with-matches  affiche seulement les noms de fichiers avec concordances
  -c, --count               affiche seulement le compte des lignes concordantes par fichier
  -T, --initial-tab         ins�rer des tabulations (si besoin)
  -Z, --null                sort l'octet 0 apr�s le nom de fichier
   -NUM                      comme --context=NUM
      --color[=QUAND],
      --colour[=QUAND]     met en �vidence les concordances;
                            QUAND vaut "always" (toujours), "nevers" (jamais) ou "auto"
  -U, --binary              ne pas enlever les sauts de lignes � la fin (MSDOS)
  -u, --unix-byte-offsets   afficher les d�calages sans tenir compte des sauts de ligne (MSDOS)

   -e, --regexp=MOTIF        utiliser MOTIF comme expression r�guli�re
  -f, --file=FICHIER        charger le MOTIF depuis ce FICHIER
  -i, --ignore-case         ignorer la distinction de la casse
  -w, --word-regexp         forcer la concordance du MOTIF � des mots entiers
  -x, --line-regexp         forcer la concordance du MOTIF � des lignes enti�res
  -z, --null-data           ligne de donn�es finissant par 0 et pas par un retour chariot
   -o, --only-matching       affiche la partie de ligne seule concordant avec MOTIF
  -q, --quiet, --silent     supprime toute la sortie standard
      --binary-files=TYPE   consid�re que les fichiers binaires sont de type
                            "TYPE" : soit `binary', soit `text', soit `without-match'
  -a, --text                �quivaut � --binary-files=text
 %s requiert exclusivement la syntaxe de motif %s %s page web : <%s>
 %s page web : <http://www.gnu.org/software/%s/>
 argument %s%s "%s" trop grand %s : l'option --'%c' n'est pas valide
 %s : l'option "%c%s" ne prend pas de param�tre
 %s : l'option "--%s" ne prend pas de param�tre
 %s : l'option "%s" requiert un param�tre
 %s : l'option "-W %s" ne prend pas d'argument
 %s : l'option "-W %s" est ambigu�
 %s : l'option "%s" requiert un param�tre
 %s : l'option  --'%c' requiert un param�tre
 %s : l'option "%c%s" n'est pas reconnue
 %s : l'option "--%s" n'est pas reconnue
 " (c) (entr�e standard) Fichier binaire %s concordant
 Exemple: %s -i 'hello world� menu.h main.c

S�lection et interpr�tation de l'expression r�guli�re:
 Page web GNU Grep : <%s>
 Aide g�n�rale des logiciels GNU : <http://www.gnu.org/gethelp/>
 R�f�rence arri�re non valide Nom de classe de caract�res non valide Caract�re de comparaison incorrect Contenu incorrect dans \{\} Expression r�guli�re pr�c�dente incorrecte Fin d'intervalle non valide Expression r�guli�re non valide L'utilisation de "egrep" doit �tre abandonn�e ; utilisez "grep -E" � la place.
 L'utilisation de "fgrep" doit �tre abandonn�e ; utilisez "grep -F" � la place.
 M�moire �puis�e. Mike Haertel Aucune concordance Pas d'expression r�guli�re pr�c�dente MOTIF est un ensemble de chaines fixes s�par�es par des retours chariot.
 MOTIF est une expression r�guli�re �tendue
 MOTIF est, par d�faut, une expression r�guli�re simple
 Empaquet� par %s
 Empaquet� par %s (%s)
 Fin pr�matur�e d'expression r�guli�re Expression r�guli�re trop grande Rapporter les anomalies de %s � : %s
 Cherche MOTIF dans chaque FICHIER ou � partir de l'entr�e standard.
 Succ�s Anti-slash en trop Pour en savoir davantage, faites: � %s --help �.
 Erreur syst�me inconnue Pas de concordance pour ( ou \( Pas de concordance pour ) ou \) Mauvaise association pour [ ou [^ Pas de concordance pour \{ Usage: %s [OPTION]... MOTIF [FICHIER]...
 Les arguments valables sont : Sans FICHIER, ou si FICHIER vaut -, lit l'entr�e standard. Si moins de 2 fichiers
sont donn�s, utilise -h. Code de sortie 0 si une ligne est s�lectionn�e, 1 sinon;
en cas d'erreur et si l'option -q n'est pas pr�sente, le code de sortie vaut 2.
 Con�u par %s et %s.
 Con�u par %s, %s, %s,
%s, %s, %s, %s,
%s, %s, et d'autres.
 Con�u par %s, %s, %s,
%s, %s, %s, %s,
%s, et %s.
 Con�u par %s, %s, %s,
%s, %s, %s, %s,
et %s.
 Con�u par %s, %s, %s,
%s, %s, %s, et %s.
 Con�u par %s, %s, %s,
%s, %s, et %s.
 Con�u par %s, %s, %s,
%s, et %s.
 Con�u par %s, %s, %s,
et %s.
 Con�u par %s, %s et %s.
 Con�u par %s.
 " "egrep" �quivaut � "grep -E". "fgrep" �quivaut � "grep -F".
 argument ambigu %s pour %s la syntaxe d'une classe de caract�res est [[:space:]], pas [:space:] op�rateurs de concordance sp�cifi�s en conflit dans GREP_COLORS="%s", la grandeur "%s" %s dans GREP_COLORS="%s", la grandeur "%s" est un bool�en et ne peut pas avoir une valeur ("=%s"); ignor�e dans GREP_COLORS="%s", la grandeur "%s" doit avoir une valeur ("=..."); ignor�e taille des donn�es en entr�e trop importante pour compter Argument %s%s incorrect "%s" argument non valide %s pour %s classe de caract�res incorrecte argument de longueur de contexte non valide motif de concordance non valide %s d�compte maximal invalide. suffixe incorrect dans l'argument %s%s "%s" �chec de lseek d�compte de r�p�tition mal form� m�moire �puis�e aucune syntaxe sp�cifi�e pour les autres, voir <http://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS> boucle de r�pertoire r�cursive arr�t de l'utilisation de GREP_COLORS="%s", mal form�e, sous-chaine restante "%s" l'option -P n'est pas support�e par ce programme compil� avec l'option --disable-perl-regexp l'option -P ne supporte qu'un seul motif "(" non referm�e ")" non appari�e "[" non referm� s�quence d'�chappement \ non termin�e d�compte de r�p�tition non termin�. type de fichier binaire inconnu m�thode d'examen des p�riph�riques inconnue ATTENTION : %s : %s erreur en �criture g�n�ration du r�sultat 