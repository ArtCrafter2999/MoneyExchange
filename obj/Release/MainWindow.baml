   M S B A M L   `   `   `  ���� B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1      WpfApp1.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:WpfApp1       � Title$  
MainWindow��$	��462��$	��819��.��� .+��� .@��� $��Курс валют��.��� .+��� $��Обновить��$��	0,10,67,0q�$��1q�$��1q�$��Right=�$��87��$	��Top=�$��36������  �� Path$ Renew�����  �� EndPoint$ 1,0.5&� �� 
StartPoint$ 0,0.5&�.���  � Color$ 	#FF0AA6F0�� � Offset$ 0Q�� $ 	#FF0062D8��$ 1Q�&   System.Windows.Controls.DataGrid  $��10,10,222,10q�   RowBackground �	#D8FFFFFF   AlternatingRowBackground �	#D8F3F3F3 � UseLayoutRounding .  $��1q�$��Stretch=�$��Stretch=����� $ ExchangeRates����� 	 �� ImageSource$	 
Stonks.png���� $��Right=�$��0,46,0,0q�$	��Top=�
������ ���	#FF878787$	��217��$��Center=����� $ 
UpdateDate��� $��Перевод Валют��.��� .+��� $	��Top=�$	��193��$��108,157,485,0q�
 �� TextWrapping$

 Wrap=�$��23��$
��Left=����� $ LeftNum� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� $��23��$��410,157,183,0q�$

 Wrap=�$	��Top=�$	��193��$
��Left=����� $ RightNum�$ TwoWay=�$ PropertyChanged=��� $��108,103,485,255q�$	��193��$��33��$	��Top=�$
��Left=����� $ ExchangeRates�$ OneWay=�$ PropertyChanged=� �� SelectedItem �� $ comboBoxLeft�$ TwoWay=�$ PropertyChanged=��� $��410,103,183,0q�$	��Top=�$	��193��$��33��$
��Left=����� $ ExchangeRates�$ OneWay=�$ PropertyChanged=� �� $ comboBoxRight�$ TwoWay=�$ PropertyChanged=��� $��306,103,381,211q�$��
Arrows.png��$
��Left=�$	��Top=�$��99��$��77��