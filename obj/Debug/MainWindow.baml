   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��462��6   $	��819��6)   .��5	      � .+�5
   
   �� .@�5      �� $��Курс валют��6   .��5      � .+�5      �� $��Обновить��6<   $��	0,10,67,0q�6O   $��1q�6b   $��1q�6v   $��Right=�6�   $��87��6�   $	��Top=�6�   $��36��6�   ��6   ��  �� Path$ Renew���5      �� 5       �� EndPoint$ 1,0.5&�62    �� 
StartPoint$ 0,0.5&�6C   .��5   "   �  � Color$ 	#FF0AA6F0��6/    � Offset$ 0Q�6A   � 5   "   $ 	#FF0062D8��6/   $ 1Q�6A   5      5      &   System.Windows.Controls.DataGrid  5      $��10,10,222,10q�5         RowBackground �	#D8FFFFFF   AlternatingRowBackground �	#D8F3F3F3 � UseLayoutRounding .  $��1q�6�   $��Stretch=�6�   $��Stretch=�6�   ��5      �� $ ExchangeRates���5      �� 5      	 �� ImageSource$	 
Stonks.png��6)   5      �� 5      $��Right=�6@   $��0,46,0,0q�6\   $	��Top=�6n   
������ ���	#FF878787$	��217��6�   $��Center=�6�   ��6   �� $ 
UpdateDate�6�   5      5      �� 5       $��Перевод Валют��6   .��5!      � .+�5"      �� $	��Top=�5#      $	��193��66   $��108,157,485,0q�6B   
 �� TextWrapping$

 Wrap=�6Y   $��23��6m   $
��Left=�6y   ��5"      �� $ LeftNum� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5#   y   �� 5%      $��23��6o   $��410,157,183,0q�6{   $

 Wrap=�6�   $	��Top=�6�   $	��193��6�   $
��Left=�6�   ��6   �� $ RightNum�$ TwoWay=�$ PropertyChanged=�6�   �� 5'      $��108,103,485,255q�5(   |   $	��193��6�   $��33��6�   $	��Top=�6�   $
��Left=�6�   ��5'      �� $ ExchangeRates�$ OneWay=�$ PropertyChanged=� �� SelectedItem 5(      �� $ comboBoxLeft�$ TwoWay=�$ PropertyChanged=�6�   �� 5*      $��410,103,183,0q�5+   }   $	��Top=�6�   $	��193��6�   $��33��6�   $
��Left=�6�   ��5*      �� $ ExchangeRates�$ OneWay=�$ PropertyChanged=� 5+      �� $ comboBoxRight�$ TwoWay=�$ PropertyChanged=�6�   �� 5,      $��306,103,381,211q�6   $��
Arrows.png��65   $
��Left=�6I   $	��Top=�6d   $��99��6|   $��77��6�   5-      5.      5/      50      51      