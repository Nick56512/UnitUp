   M S B A M L   `   `   `  ����G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupManager.ViewsGroupManager.Views  5      )    #GroupManager.Views.StudentsListView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:GroupManager.Views     5      ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      ���#F0F1FF  � 	Resources  5       �� MergedDictionaries �� Source   _ListBoxItemStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName�� 5   
    5      �� 5      $9 3/Resources/Themes/Styles/RoundedScrollBarBlack.xaml?�6%   6d   �� 5      $2 ,/Resources/Themes/Styles/ComboBoxStyles.xaml?�6%   6]   %�  &	        �� 5      " ��6.   .�5      ��  � �� 5      �� 5      " ��6*   .R�5      �� $��_Border��6%   $ 2q�5   !    . ._�5   "   �� 5      	 5      P� 5    "   
 �@��
IsSelected . . �5!   &   �� $ _Border��6-    � ��
 ���� 6X   �� 5"   &    � �� �#7284FF6C   5#   #   P� 5$   "   
 �@J�IsMouseOver . . �5%   &   ��  �@��
IsSelected . 6R   5&   #   5(      5*      5+      5,      .��50      � -   5        $��
GridLayout��50       � RowDefinitions 51   
   �� 52      $
��0.2* �6   6,   �� 53      $
��Auto �6   6,   �� 54      6    � ColumnDefinitions 56   
   �� 57      $��0.14* �6   6/   �� 58      $��0.13* �6   6/   �� 59      $
��0.3* �6   6.   �� 5:      $��0.14* �6   6/   .+�5=   
   ]� $��1��6   $	��200��6$   $
��Left=�60   .+�5>      �� -   5         ��Name$
 Back��5@        TransparentButton#��[ 5>      $��35��5?      $��35��6   $
��Left=�5@       .��5A      �� $'��!/Resources/Images/icons/next2.png��6   6F   5B      �� 5C      ���#7A8BFF  CoursesLabel#��[ 6-   $��Center=�6S   UNITUP6x   5D      �� 5F   
    K� ZIndex$ 1��6   $��2��6"   $��30��62   $��30��6=   
������ 
������ $��Right=�5H      #��[ 5I      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5J      +  %Microsoft.Xaml.Behaviors.EventTrigger  5K         	EventName$ Click��6!   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5L      "  Caliburn.Micro.ActionMessage     
MethodName$ SearchByLastName��6(      
Parameters. 5M        Caliburn.Micro.Parameter     Value 6(   ��  �� Path$
 Text� �� ElementName$ searchTextBox��6a   5N      5O      .��5Q      �� $(��"/Resources/Images/icons/search.png��6   6B   5R      �� 5S   
   -   5         ��Name$ placeholderTextBlock��5Z      $��2��5S      $��20(�6$   ���#102349$��/Resources/Fonts/#PT Sans)�5U      $��Center=�5V      $ 1��6/   $	��400��5W      $��Right=�5X       �� TextAlignment$
 Left=�5Y       � Cursor$
 Hand��5[      Пошук...5]      �� 5^   
   -   5         ��Name$ searchTextBox��5d      $��40��5_      $��2��5`      $	��430��5a      $��5q�5b      $��Right=�5c      .��5f   0   ��5g      �� 5h      .R�5i      ��  �� CornerRadius$ 5��6   
���   �$	��0.5q�6B   
�������._�5k      ��  ��Name$ PART_ContentHost��6'   5l      5m      .��5n       5o      �� 5p   
   $��1��6   $��2��6$   $��1��69   #���  6F   $��40(�5q      $
��Left=�5r      $��Nunito)�5s      ���#7284FF$��30,0,0,0q�5u      ��6&   �� *CurrentGroup.Name+6K   �� 5w   
   $��2��6   $��1��6%   $	��430��62    �� Orientation$ 
Horizontal=�6>   $��Right=�6W   .+�5x      �� $ Vertical=�6   .+�5y      �� $��Center=�6   $��20(�67   $��/Resources/Fonts/#PT Sans)�6E   $��Normal"�6l   ���#102349Пошук по:6�   �� 5z      $��/Resources/Fonts/#PT Sans)�6   $	��160��5{      $��Center=�5|        DarkComboBox#��[ 5~        �� SelectedIndex  5}      �� *SelectedIndex+.@�5�      �� .��6#   Прізвищу6-   �� 5�      .��6#   
Статі6*   �� 5�      .��6#   64Строку придатності паспорта6@   �� 5�      .��6#   Місцевості6/   5�      5�      �� 5�      $ Vertical=�6   .+�5�      �� $��10,0,0,0q�6   $��Center=�6.   $��20(�5�      $��/Resources/Fonts/#PT Sans)�6*   $��Normal"�5�      ���#102349y�5�      �� *PlaceLiveVisibility+Місцевість6S   �� 5�      $��/Resources/Fonts/#PT Sans)�6   $
��Left=�5�      $	��100��5�      $��10,0,0,0q�5�      $��Center=�5�      #��[ 5�      y�5�      �� *PlaceLiveVisibility+  5�      �� *SelectedFilterIndex+.@�5�      �� .��6#   
Місто6*   �� 5�      .��6#   
Село6)   5�      5�      �� 5�      -   5        $ DisableFilters��5�        ButtonStyle#���  5�      $��40��6;   $��	10,20,0,0q�6G   $��Center=�5�      $��1��5�      $��Center=�6   $��1��6;   $��80��6K   y�5�      �� *PlaceLiveVisibility+.��5�      ]� .+�5�      �� $��Center=�6    $��15(�6;   $��Center=�6I   Скинути6o   5�      5�      5�      �� 5�   
   -   5        $ AddNewStudent��5�      $��2��5�      $��1��6!   $��Right=�6.   $��35��5�      $��35��5�      #��[ 5�      .��5�      �� $,��&/Resources/Images/icons/plus_black.png��6   6F   5�      �� 5�   
   -   5        ! ��Name$! StudentsList��5�      $��1��5�      $��2��6#   $��2��60   
������ $��0q�5�      $��Hidden=�5�      #��[  5�      ��5�      �� *
Students+" �� SelectedItem" 5�      �� *SelectedStudent+��5�      �� 5�      Template��.R�5�      �� # ��Name$# 
mainBorder��5�   !   $	��0.4q�5�      ���#7889FF$ 10��5�   !   
�������$��	30,10,0,0q�5�   !   $ 
10,10,0,10q�5�   !   ��5�   !   �� $ StudentsList��$ ActualWidth�  widthConverter$ �� 	Converter#$ [ % �� ConverterParameter$% 50��._�5�      ]� $
 Hand��6$   .+�5�      A� $
��Left=�6&   $��50��6A   $��50��6L   $��Center=�6X   $��20,0,0,0q�5�   &   ��5�   "   �� 5�   &   & �� 
StartPoint$	& 1 1&�6:   ' �� EndPoint$	' 0 0&�6K   .��5�   *   � ( � Color$( #7284FF��67   ) � Offset$	) 0.1Q�6G   6V   � 5�   *   $( #A0ABFB��67   $	) 0.9Q�6G   6V   5�   '   5�      �� 5�      $��/Resources/Fonts/#PT Sans)�6(   $��30(�6O   $��20,0,0,0q�6]   $��Center=�6o   ��5�      �� * �� RelativeSource* �� + �� AncestorType$+ ListViewItemL�, �� Mode$, FindAncestor=�  listViewIndexConverter#$ [ 5�   T   �� 5�      $��/Resources/Fonts/#PT Sans)�6B   $��30(�6i   $��30,0,0,0q�5�   (   $��2��5�   (   $
��Left=�68   $��Center=�6S   ��5�   (   �� *
Lastname+5�   p   �� 5�      $��/Resources/Fonts/#PT Sans)�6>   $��30(�6e   $��15,0,0,0q�5�   (   $��2��5�   (   $
��Left=�68   $��Center=�6S   ��5�   (   �� *Name+5�   p   �� 5�      $��PT Sans)�6D   $��30(�6Y   $��15,0,0,0q�5�   (   $��2��5�   (   $
��Left=�68   $��Center=�6S   ��5�   (   �� *
Patronymic+5�   p   �� 5�      $��Right=�6)   $��Center=�5�   (   $ 
Horizontal=�6C   .+�5�   "   �� $��PT Sans)�5�   (   $��25(�6=   $��0,0,15,0q�5�   (   ��5�   ,   �� *PassportEndDate+y�5�   (   �� * �� $+ UserControlL�$, FindAncestor=�$( "DataContext.EndPassportDateVisible�5�   )   �� 5�   "   $��30��6)   $��30��64   $��0,0,20,0q�6@   #��[ 5�   %     Caliburn.Micro.Message-   Attach$- DeleteStudent��5�   %   .��5�   &   �� $(��"/Resources/Images/icons/remove.png��6,   6Z   5�   #   5�      5�      5�      . �� Triggers. 5�      P� 5�      
 �@J�IsMouseOver . . �5�      �� $ 
mainBorder��6%    � �� �#DDDAED6e   5�      5�      5�      5�      5�      