Vim�UnDo� �/�t.F��>�����ԝ��k_z2Jb���   T   #!/usr/bin/env python2                             b���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b���     �                   5��                                                  �                                                �                                                �                                                �                         '                      �                          (                      �                         5                      �                       
   6               
       �       
                  @                      �                          A                      �                          B                      �                         M                      �                          N                      �                         m                      �                          n                      �    	                      o                      �    
                      p                      �    
                     �                      �                           �                       �                         �               	       �                      A   �               A       �       I                 �                      �                         �                     �                          �                      �                         �               	       �                          �                      �                         �               	       �                         �                      �                                      	       �                                             �                        '                     �                      L   (             L       �       L                 t                     �                         �                     �       .              $   �              %       �               $           �      $               �                      $   �              %       �               $           �      $               �                      $   �              %       �       $                  �                     �       3              $   �              %       �               $       2   �      $       2       �       2              ,                 -       �       ,                  9                     �       8              0   E              1       �       0                  v                     �       ?              4   �              5       �               4       M   �      4       M       �       M              @   �              A       �       @               8                 8       �       x              H   L              I       �               H       e   M      H       e       �       e              X   �              Y       �       X                                       �       o              d   "              e       �       d                  �                     �       z              l   �              m       �               l       �   �      l       �       �       �              |   '              }       �       |                  �                     �       �              �   �              �       �        �                  G                     �        �              �   T              �       �    !           �       �   U      �       �       �    !   �              �                 �       �    "   �                  �                     �    "   �              �   �              �       �    #   �               $   Y              $       �    #   �              �   }              �       �    $           �       �   ~      �       �       �    $           �           ~      �               �    $                  �   ~              �       �    %           �                 �               �    %                  �                 �       �    &   �               
   $	              
       �    &   �              �   .	              �       �    '           �           /	      �               �    '                  �   /	              �       �    (           �           0	      �               �    (                  �   0	              �       �    )   �                  �	                     �    )   �              �   �	              �       �    *           �       �   �	      �       �       �    *   �              �   �
              �       �    +   �               !   |              !       �    +   �              �   �              �       �    ,           �       �   �      �       �       �    ,           �           �      �               �    ,                  �   �              �       �    -           �           �      �               �    -                  �   �              �       �    .   �                  L                     �    .   �              �   [              �       �    /           �       �   \      �       �       �    /   �              �                 �       �    0   �                  �                     �    0   �              �   �              �       �    1   �                  �                     �    1   �              �   �              �       �    2           �       �   �      �       �       �    2   �              �   �              �       �    3           �       �   �      �       �       �    3   �              �   q              �       �    4   �               !   J              !       �    4   �              �   k              �       �    5           �         l      �             �    5                �   p              �       �    6           �         q      �             �    6                  �                    �    7                    �                     �    7                  �                    �    8                 T  �            T      �    8   T             $  �              %      �    9   $                                      �    9   ;             0  )              1      �    :   0                 Z                     �    :   D             8  n              9      �    ;           8      X  o      8      X      �    ;   X             H  �              I      �    <   H                                      �    <   U             P                Q      �    =           P      k        P      k      �    =   k             `  �              a      �    >   `                 �                     �    >   n             d  �              e      �    ?           d      �  �      d      �      �    ?   �             p  �              q      �    @   p                 
!                     �    @   �             t  "!              u      �    A   t                 �"                     �    A   �             x  �"              y      �    B           x      t  �"      x      t      �    B           t          �"      t              �    B                  t  �"              u      �    C           t          �"      t              �    C                  t  �"              u      �    D   t              (   *$              (       �    D   �             t  R$              u      �    E           t      �  S$      t      �      �    E   �             |  �%              }      �    F           |      �  �%      |      �      �    F   �             �  �'              �      �    G           �      �  �'      �      �      �    G           �          �'      �              �    G                  �  �'              �      �    H           �          �'      �              �    H                  �  �'              �      �    I   �              (   )              (       �    I   �             �  =)              �      �    J           �      �  >)      �      �      �    J   �             �  �*              �      �    K           �      �  �*      �      �      �    K   �             �  �,              �      �    L           �      �  �,      �      �      �    L           �          �,      �              �    L                  �  �,              �      �    M           �          �,      �              �    M                  �  �,              �      �    N   �                 0.                     �    N   �             �  F.              �      �    O           �      �  G.      �      �      �    O   �             �  �/              �      �    P           �      �  �/      �      �      �    P   �             �  �1              �      �    Q           �      �  �1      �      �      �    Q           �          �1      �              �    Q                  �  �1              �      �    R           �          �1      �              �    R                  �  �1              �      �    S   �                 �3                     5�_�                           ����                                                                                                                                                                                                                                                                                                                            T  �                 v  �    b���     �               T   #!/usr/bin/env python2       import binascii   import codecs   
import sys       reload(sys)   sys.setdefaultencoding("utf-8")           def modified_base64(s):            s = s.encode('utf-16be')   I            return binascii.b2a_base64(s).rstrip('\n=').replace('/', ',')                   def doB64(_in, r):                   if _in:   L                            r.append('&%s-' % modified_base64(''.join(_in)))   .                                    del _in[:]           3                                    def encoder(s):   2                                            r = []   8                                                _in = []   ?                                                    for c in s:   M                                                                ordC = ord(c)   x                                                                        if 0x20 <= ordC <= 0x25 or 0x27 <= ordC <= 0x7e:   e                                                                                        doB64(_in, r)   o                                                                                                    r.append(c)   z                                                                                                            elif c == '&':   �                                                                                                                            doB64(_in, r)   �                                                                                                                                        r.append('&-')   �                                                                                                                                                else:   �                                                                                                                                                                _in.append(c)   �                                                                                                                                                                    doB64(_in, r)   �                                                                                                                                                                        return (str(''.join(r)), len(s))           �                                                                                                                                                                    # decoding           �                                                                                                                                                                    def modified_unbase64(s):   �                                                                                                                                                                            b = binascii.a2b_base64(s.replace(',', '/') + '===')   �                                                                                                                                                                                return unicode(b, 'utf-16be')           �                                                                                                                                                                            def decoder(s):   �                                                                                                                                                                                    r = []   �                                                                                                                                                                                        decode = []   �                                                                                                                                                                                            for c in s:   �                                                                                                                                                                                                        if c == '&' and not decode:   �                                                                                                                                                                                                                        decode.append('&')   �                                                                                                                                                                                                                                elif c == '-' and decode:                                                                                                                                                                                                                                                  if len(decode) == 1:                                                                                                                                                                                                                                                                      r.append('&')                                                                                                                                                                                                                                                                                  else:  T                                                                                                                                                                                                                                                                                                    r.append(modified_unbase64(''.join(decode[1:])))  ;                                                                                                                                                                                                                                                                                                                decode = []  D                                                                                                                                                                                                                                                                                                                        elif decode:  X                                                                                                                                                                                                                                                                                                                                        decode.append(c)  U                                                                                                                                                                                                                                                                                                                                                else:  k                                                                                                                                                                                                                                                                                                                                                                r.append(c)  n                                                                                                                                                                                                                                                                                                                                                                    if decode:  �                                                                                                                                                                                                                                                                                                                                                                                r.append(modified_unbase64(''.join(decode[1:])))  �                                                                                                                                                                                                                                                                                                                                                                                    bin_str = ''.join(r)  �                                                                                                                                                                                                                                                                                                                                                                                        return (bin_str, len(s))          �                                                                                                                                                                                                                                                                                                                                                                                    class StreamReader(codecs.StreamReader):  �                                                                                                                                                                                                                                                                                                                                                                                            def decode(self, s, errors='strict'):  �                                                                                                                                                                                                                                                                                                                                                                                                        return decoder(s)          �                                                                                                                                                                                                                                                                                                                                                                                                    class StreamWriter(codecs.StreamWriter):  �                                                                                                                                                                                                                                                                                                                                                                                                            def decode(self, s, errors='strict'):  �                                                                                                                                                                                                                                                                                                                                                                                                                        return encoder(s)          �                                                                                                                                                                                                                                                                                                                                                                                                                    def imap4_utf_7(name):  �                                                                                                                                                                                                                                                                                                                                                                                                                            if name == 'imap4-utf-7':  �                                                                                                                                                                                                                                                                                                                                                                                                                                        return (encoder, decoder, StreamReader, StreamWriter)          �                                                                                                                                                                                                                                                                                                                                                                                                                                    codecs.register(imap4_utf_7)5��           S   �                 �3              5�_�                           ����                                                                                                                                                                                                                                                                                                                              �                 v  �    b���    �                  #!/usr/bin/env python2�               5��                                                  �                    S                      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                              �                 v  �    b���    �          T      #!/usr/bin/env python25��                                              5��