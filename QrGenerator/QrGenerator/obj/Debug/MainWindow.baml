   M S B A M L   `   `   `  ����F  BQrGenerator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:QrGeneratorQrGenerator  5   	       QrGenerator.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:QrGenerator     5   	     � Title$  QR Generator��5   	   $	��480��6   $	��640��6+    � WindowStartupLocation$ CenterScreen=�67   ���	#FFFDFDFD.��5	      � .+�5
   
   �� -   5         ��Name$ QrImage��5
      $
��Left=�6!   $	��319��6<   $��	24,24,0,0q�6I   $	��Top=�6\   $	��289��6t   �� 5   
   -   5         ��Name$ QrText��5      $
��Left=�6"   $��23��6=   $��
68,348,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $��0,2,0,0q�6q   $�� ��6�   $	��Top=�6�   $	��245��6�   �� 5   
   -   5        $��Generate��5      $
��Left=�6$   $��
24,389,0,0q�6?   $	��Top=�6S   $	��128��6k   6w   �� 5   
   -   5        $��Clear��5      $
��Left=�6!   $��176,389,0,0q�6<   $	��Top=�6Q   $	��137��6i   6u   �� 5   
   
���   �$��1q�6%   $
��Left=�69   $	��319��6T   $��	24,24,0,0q�6a   $	��Top=�6t   $	��289��6�   �� 5   
   $��14(�6   $��Text:��6   $
��Left=�6.   $��
24,348,0,0q�6I   $	��Top=�6]   $��39��6u   $��0,2,0,0q�6�   $��23��6�   �� 5   
   $��14(�6   $��	0,2.5,0,0q�6   $��Enter image name:��62   $
��Left=�6N   $��357,149,0,0q�6i   $	��Top=�6~   $	��235��6�   $��25��6�   �� 5   
   -   5        $ 
QrFilename��5      $
��Left=�6&   $��23��6A   $��356,179,0,0q�6M   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��191��6�   $��0,2,0,0q�6�   �� 5   
   $��0,6,0,0q�6   $
��.png��6"   $
��Left=�61   $��554,179,0,0q�6L   $	��Top=�6a   $��23��6y   �� 5   
   -   5        $��15(�5      $��
Save Image��6   $
��Left=�64   $��357,224,0,0q�6O   $	��Top=�6d   $	��231��6|   $��24��6�   6�   �� 5   
   -   5        $
��Left=�5   ,   $��357,105,0,0q�6G   $	��Top=�6\   $��22��6t   $	��190��6�    � Maximum$	 100Q�6�    � Minimum$ 1Q�6�    � LargeChange$ 10Q�6�    � Value$ 1Q�6�   �� 5   
   $��0,3,0,0q�6   $��14(�6"   $��Pixels per model��60   $
��Left=�6K   $��
357,74,0,0q�6f   $	��Top=�6z   $	��190��6�   $��26��6�   �� 5   
   -   5        	 ��Name$	 PixelsLabel��5      $��1��6%   $
��Left=�61   $��554,101,0,0q�6L   $	��Top=�6a   
 J� RenderTransformOrigin$
 0.402,0.523&�6y   5      5      