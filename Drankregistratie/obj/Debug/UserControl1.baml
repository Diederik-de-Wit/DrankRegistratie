   M S B A M L   `   `   `  ����K  GDrankregistratie, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:DrankregistratieDrankregistratie  5      #    Drankregistratie.UserControl1   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:Drankregistratie     5      $	��329��5   7   $	��772��6D   .��5	      � $	��772��6   ���	#FF787878$	��329��6.   .+�5
   
   &   System.Windows.Controls.DataGrid  -   5           Name$  	drankenDG��5
      $
��Left=�6&   $	��276��6A   $��	10,43,0,0q�6N   $	��Top=�6a   $	��419��6y      AutoGenerateColumns .     CanUserAddRows .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6_   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *ID+   ClipboardContentBinding 6<   Z� 6_     5      $
 Naam��6a    6%   �� *NAAM+ 6>   Z� 6a     5      $ Soort��6b    6%   �� *SOORT+ 6?   Z� 6b     5      $ Prijs��6b    6%   �� *PRIJS+ 6?   Z� 6b   4  .System.Windows.Controls.DataGridTemplateColumn  5         CellTemplate 5      �� 5      .R�5      ��  ��Name$ btnEdit��6%   -   5        $��Wijzig��5   6   6G   5      5        5       5      �� 5      .R�5      �� $ btnSave��6%   -   5        $��VoegToe��5   6   6H   5      5        5       5      �� 5       .R�5!      �� $ 	btnDelete��6%   -   5        $��	Verwijder��5!   8   6L   5"      5$      5&      �� 5'   
   $
��Left=�6   $��	90,11,0,0q�6/   $
��Wrap=�6B   $	��Top=�6V   $��20(�6n   $	��100��6|   $
��Bold"�6�   �� 6�   $�↓  ��6�   �� 6�   $�Drank��6�   �� 6�   $� ↓ ��6�   6�   �� 5(   
   -   5        $ terug��5(      $��Terug��6    $
��Left=�60   $��	10,10,0,0q�6K   $	��Top=�6^   $��75��6v   ���	#FFFFC26A$��28��6�   � 5)   
   -   5        	 �Name$	 
drankjesDG��5)      $
��Left=�6#   $	��308��6>   $��
434,12,0,0q�6K   $	��Top=�6_   $	��338��6w   �� 5*   
   -   5        
 ��Name$
 txtZoek��5*      $
��Left=�6#   $��23��6>   $��
209,15,0,0q�6J    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��120��6�   �� 5+   
   -   5        $ btnZoek��5+      $
��Zoek��6"   $
��Left=�61   $��
334,15,0,0q�6L   $	��Top=�6`   $��75��6x   $��23��6�   ���	#FFFFC26A6�   5-      5.      