   M S B A M L   `   `   `  ���� G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupManager.ViewsGroupManager.Views  -    'GroupManager.Views.ListCertificatesView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:GroupManager.Views     ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  ���#F0F1FF  � 	Resources     _ListBoxItemStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels �� Triggers P� Property	 P� Value
 �� 
TargetName��%	  &	        �� " ��.���  � �� �� " ��.R��� $��_Border��$ 2q� . ._���  P�  �@��
IsSelected	 . . ��� $
 _Border�� � ��
 ���� ��  � �� �#7284FFP�  �@J�IsMouseOver	 . . ���  �@��
IsSelected . .��� -   $��
GridLayout�� � RowDefinitions �� $
��0.2* ��� $
��Auto ���  � ColumnDefinitions �� $��0.14* ��� $��0.13* ��� $
��0.3* ��� $
��0.1* ��� $��0.14* �.+��� $��1��  CoursesLabel#���  $��Center=����#7284FFUNITUP�� -    ��Name$
 Back��$��0��  TransparentButton#��[ $��Right=�$��35��$��35��.���� $-��'/Resources/Images/icons/back-button.png��A� $��3��$��Center=�$��50��$��50������  �� 
StartPoint$	 1 1&� �� EndPoint$	 0 0&�.���  � Color$ #7284FF�� � Offset$	 0.1Q�� $ #A0ABFB��$	 0.9Q���  K� ZIndex$ 1��$��2��$��30��$��30��
������ 
������ $��Right=�#��[ *  $Microsoft.Xaml.Behaviors.Interaction   Triggers +  %Microsoft.Xaml.Behaviors.EventTrigger     	EventName$ Click��*  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. "  Caliburn.Micro.ActionMessage     
MethodName$ SearchByCertificateName��   
Parameters.   Caliburn.Micro.Parameter     Value ��  �� Path$
 Text� �� ElementName$ searchTextBox��.���� $(��"/Resources/Images/icons/search.png���� -    ��Name$ placeholderTextBlock��$��2��$��20(�$��PT Sans)�$��Center=�$
��Left=�$ 1��$��20q� � Cursor$
 Hand��Пошук...�� -    ��Name$ searchTextBox��$��35��$��2��$��5q�.������ .R���  �� CornerRadius$ 10��
���   �$	��0.5q�
�������._���  ��Name$ PART_ContentHost��.���� $��1��$��2��$��1��  �� Orientation$  
Horizontal=�.+��� #���  $��30(�$
��Left=�$��Nunito)����#7284FF$��30,0,0,0q����� *CurrentStudent.Name+�� #���  $��30(�$
��Left=�$��Nunito)����#7284FF$��10,0,0,0q����� *CurrentStudent.Lastname+�� #���  $��30(�$
��Left=�$��Nunito)����#7284FF$��10,0,0,0q�$��:сертифікати���� -   $ AddNewCertificates��$��3��$��1��$��Center=�$��35��$��35��#��[ .���� $,��&/Resources/Images/icons/plus_black.png���� -   ! ��Name$! StudentsList��$��1��$��2��$��3��
������ $��0q�$��0,0,40,0q�$��Hidden=�#��[  ���� *Certificates+" �� SelectedItem" �� *CurrentCertificate+���� Template��.R��� $	��0.4q����#7889FF$ 10��
�������$��	30,10,0,0q�$ 
10,10,0,10q����� $ StudentsList��$ ActualWidth�  widthConverter# �� 	Converter## [ $ �� ConverterParameter$$ 50��._�]� $
 Hand��.+�A� $
��Left=�$��50��$��50��$��Center=�$��20,0,0,0q����� $	 1 1&�$	 0 0&�.��� $ #7284FF��$	 0.1Q�� $ #A0ABFB��$	 0.9Q��� $��/Resources/Fonts/#PT Sans)�$��30(�$��20,0,0,0q�$��Center=����� % �� RelativeSource% �� & �� AncestorType$& ListViewItemL�' �� Mode$' FindAncestor=�  listViewIndexConverter## [ �� $��/Resources/Fonts/#PT Sans)�$��30(�$��30,0,0,0q�$��2��$
��Left=�$��Center=����� *Header+�� $��30��$��30��$��0,0,20,0q�#��[   Caliburn.Micro.Message(   Attach$( DeleteCertificate��$��Right=�$��Center=�.���� $(��"/Resources/Images/icons/remove.png��