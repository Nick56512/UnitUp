   M S B A M L   `   `   `  ����G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupManager.ViewsGroupManager.Views  5      -    'GroupManager.Views.ListCertificatesView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroupManager.Views     5      ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      ���#F0F1FF  � 	Resources  5         _ListBoxItemStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels �� Triggers P� Property	 P� Value
 �� 
TargetName��%�  &	        �� 5   
   " ��6*   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $��_Border��6!   $ 2q�5   !    . ._�5      �� 5       5      P� 5       �@��
IsSelected	 . . �5   "   �� $
 _Border��6)    � ��
 ���� 6T   �� 5   "    � �� �#7284FF6?   5      P� 5       �@J�IsMouseOver	 . . �5   "   ��  �@��
IsSelected . 6N   5      5!      5#      5$      5%      .��5(      � -   5        $��
GridLayout��5(       � RowDefinitions 5)   
   �� 5*      $
��0.2* �6   6,   �� 5+      $
��Auto �6   6,   �� 5,      6    � ColumnDefinitions 5.   
   �� 5/      $��0.14* �6   6/   �� 50      $��0.13* �6   6/   �� 51      $
��0.3* �6   6.   �� 52      $
��0.1* �6   6.   �� 53      $��0.14* �6   6/   .+�55   
   �� $��1��6     CoursesLabel#���  6$   $��Center=�56      ���#7284FFUNITUP6N   �� 57   
   -   5         ��Name$
 Back��5:      $��0��57        TransparentButton#��[ 6!   $��Right=�58      $��35��59      $��35��6   .��5;      �� $-��'/Resources/Images/icons/back-button.png��6   6H   5<      A� 5=   
   $��3��6   $��Center=�6"   $��50��6?   $��50��6J   ��5>      �� 5?       �� 
StartPoint$	 1 1&�6&    �� EndPoint$	 0 0&�67   .��5@      �  � Color$ #7284FF��6#    � Offset$	 0.1Q�63   6B   � 5A      $ #A0ABFB��6#   $	 0.9Q�63   6B   5B      5D      �� 5E   
    K� ZIndex$ 1��6   $��2��6"   $��30��62   $��30��6=   
������ 
������ $��Right=�5G      #��[ 5H      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5I      +  %Microsoft.Xaml.Behaviors.EventTrigger  5J         	EventName$ Click��6!   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5K      "  Caliburn.Micro.ActionMessage     
MethodName$ SearchByCertificateName��6(      
Parameters. 5L        Caliburn.Micro.Parameter     Value 6(   ��  �� Path$
 Text� �� ElementName$ searchTextBox��6a   5M      5N      .��5P      �� $(��"/Resources/Images/icons/search.png��6   6B   5Q      �� 5R   
   -   5         ��Name$ placeholderTextBlock��5V      $��2��5R      $��20(�6$   $��PT Sans)�5S      $��Center=�5T      $
��Left=�6/   $ 1��6J   $��20q�5U       � Cursor$
 Hand��5W      Пошук...5Y      �� 5Z   
   -   5         ��Name$ searchTextBox��5^      $��35��5[      $��2��5\      $��5q�5]      .��5`   0   ��5a      �� 5b      .R�5c      ��  �� CornerRadius$ 10��6   
���   �$	��0.5q�6C   
�������._�5e      ��  ��Name$ PART_ContentHost��6'   5f      5g      .��5h       5i      �� 5j   
   $��1��6   $��2��6%   $��1��6:     �� Orientation$  
Horizontal=�6G   .+�5k      �� #���  6   $��30(�5l      $
��Left=�5m      $��Nunito)�5n      ���#7284FF$��30,0,0,0q�5p      ��6&   �� *CurrentStudent.Name+6M   �� 5q      #���  6   $��30(�5r      $
��Left=�5s      $��Nunito)�5t      ���#7284FF$��10,0,0,0q�5v      ��6&   �� *CurrentStudent.Lastname+6Q   �� 5w      #���  6   $��30(�5x      $
��Left=�5y      $��Nunito)�5z      ���#7284FF$��10,0,0,0q�5|      $��:сертифікати��6&   6<   5}      �� 5~   
   -   5        $ AddNewCertificates��5�      $��3��5~      $��1��6!   $��Center=�6.   $��35��5      $��35��5�      #��[ 5�      .��5�      �� $,��&/Resources/Images/icons/plus_black.png��6   6F   5�      �� 5�   
   -   5        ! ��Name$! StudentsList��5�      $��1��5�      $��2��6#   $��3��60   
������ $��0q�5�      $��0,0,40,0q�5�      $��Hidden=�5�      #��[  5�      ��5�      �� *Certificates+" �� SelectedItem" 5�      �� *CurrentCertificate+��5�      �� 5�      Template��.R�5�      �� $	��0.4q�6   ���#7889FF$ 10��5�   !   
�������$��	30,10,0,0q�5�   !   $ 
10,10,0,10q�5�   !   ��5�   !   �� $ StudentsList��$ ActualWidth�  widthConverter# �� 	Converter## [ $ �� ConverterParameter$$ 50��._�5�      ]� $
 Hand��6$   .+�5�      A� $
��Left=�6&   $��50��6A   $��50��6L   $��Center=�6X   $��20,0,0,0q�5�   &   ��5�   "   �� 5�   &   $	 1 1&�6:   $	 0 0&�6K   .��5�   *   � $ #7284FF��67   $	 0.1Q�6G   6V   � 5�   *   $ #A0ABFB��67   $	 0.9Q�6G   6V   5�   '   5�      �� 5�      $��/Resources/Fonts/#PT Sans)�6(   $��30(�6O   $��20,0,0,0q�6]   $��Center=�6o   ��5�      �� % �� RelativeSource% �� & �� AncestorType$& ListViewItemL�' �� Mode$' FindAncestor=�  listViewIndexConverter## [ 5�   T   �� 5�      $��/Resources/Fonts/#PT Sans)�6@   $��30(�6g   $��30,0,0,0q�5�   (   $��2��5�   (   $
��Left=�68   $��Center=�6S   ��5�   (   �� *Header+5�   p   �� 5�      $��30��6%   $��30��60   $��0,0,20,0q�6<   #��[ 5�   %     Caliburn.Micro.Message(   Attach$( DeleteCertificate��5�   %   $��Right=�5�   %   $��Center=�6A   .��5�   "   �� $(��"/Resources/Images/icons/remove.png��6(   6V   5�      5�      5�      5�      5�      5�      5�      