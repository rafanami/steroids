FasdUAS 1.101.10   ��   ��    k             l     ��  ��    h b Note: On both 10.8 and 10.9 it seems sufficient to merely LAUNCH Safari - no need to ACTIVATE it.     � 	 	 �   N o t e :   O n   b o t h   1 0 . 8   a n d   1 0 . 9   i t   s e e m s   s u f f i c i e n t   t o   m e r e l y   L A U N C H   S a f a r i   -   n o   n e e d   t o   A C T I V A T E   i t .   
  
 l    
 ����  O    
    I   	������
�� .ascrnoop****      � ****��  ��    m       �                                                                                  sfri  alis    6  Iron                       �iV1H+     k
Safari.app                                                       l�R�        ����  	                Applications    �i,      �6�       k  Iron:Applications: Safari.app    
 S a f a r i . a p p  
  I r o n  Applications/Safari.app   / ��  ��  ��        l     ��������  ��  ��     ��  l   � ����  O    �    k    �       l   ��������  ��  ��        O    �    k    �       l   ��������  ��  ��       !   l   �� " #��   " u o Try to obtain a reference to the `Developer > {iPhone|iPad} Simulator`submenu items; give up after a while.			    # � $ $ �   T r y   t o   o b t a i n   a   r e f e r e n c e   t o   t h e   ` D e v e l o p e r   >   { i P h o n e | i P a d }   S i m u l a t o r ` s u b m e n u   i t e m s ;   g i v e   u p   a f t e r   a   w h i l e . 	 	 	 !  % & % r     ' ( ' m    ��
�� 
msng ( o      ���� 0 
simsubmenu 
simSubMenu &  ) * ) Y    � +�� , -�� + k   $ � . .  / 0 / l  $ $�� 1 2��   1 Z T Note that we reference the Developer menu by *index*, as its name may be localized.    2 � 3 3 �   N o t e   t h a t   w e   r e f e r e n c e   t h e   D e v e l o p e r   m e n u   b y   * i n d e x * ,   a s   i t s   n a m e   m a y   b e   l o c a l i z e d . 0  4 5 4 l  $ $�� 6 7��   6 � � Furthermore, we search for the relevant menu item by the tokens "iPhone" or "iPad" only, since the "Simulator" part could be localized, too.    7 � 8 8   F u r t h e r m o r e ,   w e   s e a r c h   f o r   t h e   r e l e v a n t   m e n u   i t e m   b y   t h e   t o k e n s   " i P h o n e "   o r   " i P a d "   o n l y ,   s i n c e   t h e   " S i m u l a t o r "   p a r t   c o u l d   b e   l o c a l i z e d ,   t o o . 5  9 : 9 l  $ $�� ; <��   ; n h Note that the menu-item name reflects whether the simulator currently simulates the iPhone or the iPad.    < � = = �   N o t e   t h a t   t h e   m e n u - i t e m   n a m e   r e f l e c t s   w h e t h e r   t h e   s i m u l a t o r   c u r r e n t l y   s i m u l a t e s   t h e   i P h o n e   o r   t h e   i P a d . :  > ? > O   $ � @ A @ Z   D � B C���� B I  D I������
�� .coredoexbool       obj ��  ��   C l  L � D E F D k   L � G G  H I H l  L L�� J K��   J u o Simulate a click on the menu item so as to get it to populate its submenu with the currently debuggable pages.    K � L L �   S i m u l a t e   a   c l i c k   o n   t h e   m e n u   i t e m   s o   a s   t o   g e t   i t   t o   p o p u l a t e   i t s   s u b m e n u   w i t h   t h e   c u r r e n t l y   d e b u g g a b l e   p a g e s . I  M N M I  L Q�� O��
�� .prcsclicuiel    ��� uiel O  g   L M��   N  P Q P l  R R�� R S��   R 5 / Loop over submenu items and collect page URLs.    S � T T ^   L o o p   o v e r   s u b m e n u   i t e m s   a n d   c o l l e c t   p a g e   U R L s . Q  U V U r   R Y W X W m   R U Y Y � Z Z   X o      ���� 
0 output   V  [ \ [ r   Z _ ] ^ ] m   Z [��
�� 
msng ^ o      ���� 0 pageurl pageUrl \  _ ` _ X   ` � a�� b a k   x � c c  d e d l  x � f g h f r   x � i j i n   x } k l k 1   y }��
�� 
pALL l o   x y���� 0 itm   j o      ���� 	0 props   g  y !! Bizarrely, this intermediate step is needed - directly accessing `help of itm` leads to strange behavior on OSX 10.8.    h � m m �   ! !   B i z a r r e l y ,   t h i s   i n t e r m e d i a t e   s t e p   i s   n e e d e d   -   d i r e c t l y   a c c e s s i n g   ` h e l p   o f   i t m `   l e a d s   t o   s t r a n g e   b e h a v i o r   o n   O S X   1 0 . 8 . e  n o n l  � � p q r p r   � � s t s n   � � u v u 1   � ���
�� 
help v o   � ����� 	0 props   t o      ���� 0 pageurl pageUrl q &   Page URL is in `help` property.    r � w w @   P a g e   U R L   i s   i n   ` h e l p `   p r o p e r t y . o  x�� x Z   � � y z���� y F   � � { | { >  � � } ~ } o   � ����� 0 pageurl pageUrl ~ m   � ���
�� 
msng | H   � �   E   � � � � � o   � ����� 0 pageurl pageUrl � m   � � � � � � � 4 B a c k g r o u n d / b a c k g r o u n d . h t m l z r   � � � � � b   � � � � � b   � � � � � o   � ����� 
0 output   � o   � ����� 0 pageurl pageUrl � m   � � � � � � �  
 � o      ���� 
0 output  ��  ��  ��  �� 0 itm   b n   c h � � � 2  f h��
�� 
menI � n   c f � � � m   d f��
�� 
menE �  g   c d `  � � � l  � ��� � ���   �   Return URLs.    � � � �    R e t u r n   U R L s . �  ��� � L   � � � � o   � ����� 
0 output  ��   E   Menu item found?    F � � � "   M e n u   i t e m   f o u n d ?��  ��   A l  $ A ����� � 6  $ A � � � n   $ . � � � 4  + .�� �
�� 
menI � m   , -����  � n   $ + � � � 4   ( +�� �
�� 
menE � m   ) *������ � 4   $ (�� �
�� 
mbar � m   & '����  � G   / @ � � � E   0 7 � � � 1   1 3��
�� 
pnam � m   4 6 � � � � �  i P h o n e � E   8 ? � � � 1   9 ;��
�� 
pnam � m   < > � � � � �  i P a d��  ��   ?  ��� � l  � � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?ə�������   � 0 * Menu item not (yet) available; try again.    � � � � T   M e n u   i t e m   n o t   ( y e t )   a v a i l a b l e ;   t r y   a g a i n .��  �� 0 i   , m    ����  - m    ���� ��   *  ��� � l  � ���������  ��  ��  ��    4    �� �
�� 
prcs � m     � � � � �  S a f a r i   � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ^ X Getting here means that the simulator menu item wasn't found within the timeout period.    � � � � �   G e t t i n g   h e r e   m e a n s   t h a t   t h e   s i m u l a t o r   m e n u   i t e m   w a s n ' t   f o u n d   w i t h i n   t h e   t i m e o u t   p e r i o d . �  � � � l  � ��� � ���   �   Abort with an error.    � � � � *   A b o r t   w i t h   a n   e r r o r . �  � � � R   � ��� ���
�� .ascrerr ****      � **** � m   � � � � � � �� C a n n o t   d e t e r m i n e   d e b u g g a b l e   p a g e s :   i O S   S i m u l a t o r - r e l a t e d   m e n u   i t e m s   n o t   f o u n d   i n   S a f a r i . 
 M a k e   s u r e   t h a t   t h e   ` D e v e l o p e r `   m e n u   i s   a c t i v a t e d   i n   t h e   a d v a n c e d   p r e f e r e n c e s   a n d   t h a t   t h e   i O S   s i m u l a t o r   i s   r u n n i n g   a   U I W e b V i e w - b a s e d   a p p .��   �  ��� � l  � ���������  ��  ��  ��    m     � ��                                                                                  sevs  alis    z  Iron                       �iV1H+     NSystem Events.app                                               0��(�        ����  	                CoreServices    �i,      ���       N   H   G  5Iron:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  I r o n  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       
�� � ��� � � ���������   � ����������������
�� .aevtoappnull  �   � ****�� 0 
simsubmenu 
simSubMenu�� 
0 output  �� 0 pageurl pageUrl�� 	0 props  ��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  
 � �  ����  ��  ��   � ������ 0 i  �� 0 itm   � ! �� ��� ��������������� ��� � ����� Y������������~�} ��| � ��{ �
�� .ascrnoop****      � ****
�� 
prcs
�� 
msng�� 0 
simsubmenu 
simSubMenu�� 
�� 
mbar
�� 
menE����
�� 
menI �  
�� 
pnam
�� .coredoexbool       obj 
�� .prcsclicuiel    ��� uiel�� 
0 output  �� 0 pageurl pageUrl
�� 
kocl
�� 
cobj
�� .corecnte****       ****
� 
pALL�~ 	0 props  
�} 
help
�| 
bool
�{ .sysodelanull��� ��� nmbr�� �� *j UO� �*��/ ��E�O �k�kh  *�k/��/�k/�[[�,\Z�@\[�,\Z�@B1 �*j  {*j Oa E` O�E` O \*�,�-[a a l kh �a ,E` O_ a ,E` O_ �	 _ a a & _ _ %a %E` Y h[OY��O_ Y hUOa j [OY�OOPUO)ja  OPU
�� 
msng � � � � h t t p : / / l o c a l h o s t / a p p g y v e r / c o n t e x t m e n u / c o n t e x t m e n u . h t m l 
 h t t p : / / l o c a l h o s t / l o a d i n g . h t m l 
 h t t p : / / l o c a l h o s t / t a b 1 . h t m l 
 h t t p : / / l o c a l h o s t / t a b 2 . h t m l 
 � � � � 4 h t t p : / / l o c a l h o s t / t a b 2 . h t m l � �z � �
�z 
desc � � � �  m e n u   i t e m � �y�x �
�y 
orie
�x 
msng � �w � �
�w 
posn � �v ��v  �  �u�t�u  �t _ � �s�r �
�s 
pcls
�r 
menI � �q � �
�q 
rold � � � �  m e n u   i t e m � �p�o �
�p 
axds
�o 
msng � �n�m �
�n 
focu
�m 
msng � �l � �
�l 
titl � � � � * l o c a l h o s t      t a b 2 . h t m l � �k � �
�k 
ptsz � �j ��j  �  �i�h�i�h  � �g�f �
�g 
valL
�f 
msng � �e � �
�e 
help � �d�c �
�d 
enaB
�c boovtrue � �b�a �
�b 
maxV
�a 
msng � �` � �
�` 
role � � � �  A X M e n u I t e m � �_ � �
�_ 
ects � �^ ��^   �    � �]�\ �
�] 
sbrl
�\ 
msng � �[�Z �
�[ 
selE
�Z boovfals � �Y � �
�Y 
pnam � � � � * l o c a l h o s t      t a b 2 . h t m l � �X�W�V
�X 
minW
�W 
msng�V  ��  ��  ��  ascr  ��ޭ