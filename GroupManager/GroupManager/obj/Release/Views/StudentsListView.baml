   M S B A M L   `   `   `  ���� G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupManager.ViewsGroupManager.Views  )    #GroupManager.Views.StudentsListView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:GroupManager.Views     ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  ���#F0F1FF  � 	Resources   �� MergedDictionaries �� Source   _ListBoxItemStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName��  �� $9 3/Resources/Themes/Styles/RoundedScrollBarBlack.xaml?��� $2 ,/Resources/Themes/Styles/ComboBoxStyles.xaml?�%	  &	        �� " ��.���  � �� �� " ��.R��� $��_Border��$ 2q� . ._��� 	 P� 
 �@��
IsSelected . . ��� $ _Border�� � ��
 ���� ��  � �� �#7284FFP� 
 �@J�IsMouseOver . . ���  �@��
IsSelected . .��� -   $��
GridLayout�� � RowDefinitions �� $
��0.2* ��� $
��Auto ���  � ColumnDefinitions �� $��0.14* ��� $��0.13* ��� $
��0.3* ��� $��0.14* �.+�]� $��1��$	��200��$
��Left=�.+��� -    ��Name$
 Back��  TransparentButton#��[ $��35��$��35��$
��Left=�.���� $'��!/Resources/Images/icons/next2.png���� ���#7A8BFF  CoursesLabel#��[ $��Center=�UNITUP��  K� ZIndex$ 1��$��2��$��30��$��30��
������ 
������ $��Right=�#��[ *  $Microsoft.Xaml.Behaviors.Interaction   Triggers +  %Microsoft.Xaml.Behaviors.EventTrigger     	EventName$ Click��*  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. "  Caliburn.Micro.ActionMessage     
MethodName$ SearchByLastName��   
Parameters.   Caliburn.Micro.Parameter     Value ��  �� Path$
 Text� �� ElementName$ searchTextBox��.���� $(��"/Resources/Images/icons/search.png���� -    ��Name$ placeholderTextBlock��$��2��$��20(����#102349$��/Resources/Fonts/#PT Sans)�$��Center=�$ 1��$	��360��$��Right=� �� TextAlignment$
 Left=� � Cursor$
 Hand��Пошук...�� -    ��Name$ searchTextBox��$��40��$��2��$	��400��$��5q�$��Right=�.������ .R���  �� CornerRadius$ 5��
���   �$	��0.5q�
�������._���  ��Name$ PART_ContentHost��.���� $��1��$��2��$��1��#���  $��40(�$
��Left=�$��Nunito)����#7284FF$��30,0,0,0q����� *CurrentGroup.Name+�� $��2��$��1��$	��400�� �� Orientation$ 
Horizontal=�$��Right=�.+��� $��Center=�$��20(�$��/Resources/Fonts/#PT Sans)�$��Normal"����#102349Пошук по:�� $��/Resources/Fonts/#PT Sans)�$	��160��$��10,0,0,0q�$��Center=�  DarkComboBox#��[   �� SelectedIndex  �� *SelectedIndex+.@��� .��Прізвищу�� .��Року народження�� .��Місцевості�� .��Номеру телефона�� .��Іден.коду�� .��64Строку придатності паспорта�� -   $ AddNewStudent��$��2��$��1��$��Right=�$��35��$��35��#��[ .���� $,��&/Resources/Images/icons/plus_black.png���� -   ! ��Name$! StudentsList��$��1��$��2��$��2��
������ $��0q�$��Hidden=�#��[  ���� *
Students+" �� SelectedItem" �� *SelectedStudent+���� Template��.R��� # ��Name$# 
mainBorder��$	��0.4q����#7889FF$ 10��
�������$��	30,10,0,0q�$ 
10,10,0,10q����� $ StudentsList��$ ActualWidth�  widthConverter$ �� 	Converter#$ [ % �� ConverterParameter$% 50��._�]� $
 Hand��.+�A� $
��Left=�$��50��$��50��$��Center=�$��20,0,0,0q����� & �� 
StartPoint$	& 1 1&�' �� EndPoint$	' 0 0&�.��� ( � Color$( #7284FF��) � Offset$	) 0.1Q�� $( #A0ABFB��$	) 0.9Q��� $��/Resources/Fonts/#PT Sans)�$��30(�$��20,0,0,0q�$��Center=����� * �� RelativeSource* �� + �� AncestorType$+ ListViewItemL�, �� Mode$, FindAncestor=�  listViewIndexConverter#$ [ �� $��/Resources/Fonts/#PT Sans)�$��30(�$��30,0,0,0q�$��2��$
��Left=�$��Center=����� *
Lastname+�� $��/Resources/Fonts/#PT Sans)�$��30(�$��15,0,0,0q�$��2��$
��Left=�$��Center=����� *Name+�� $��PT Sans)�$��30(�$��15,0,0,0q�$��2��$
��Left=�$��Center=����� *
Patronymic+�� $��30��$��30��$��0,0,20,0q�#��[   Caliburn.Micro.Message-   Attach$- DeleteStudent��$��Right=�$��Center=�.���� $(��"/Resources/Images/icons/remove.png��. �� Triggers. P� 
 �@J�IsMouseOver . . ��� $ 
mainBorder�� � �� �#DDDAED