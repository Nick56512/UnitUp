   M S B A M L   `   `   `  ���� G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupManager.ViewsGroupManager.Views  )    #GroupManager.Views.AboutStudentView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  ,local clr-namespace:GroupManager.Views  ���#F0F1FF  � 	Resources   �� MergedDictionaries �� Source   _ListBoxItemStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName��  �� $9 3/Resources/Themes/Styles/RoundedScrollBarBlack.xaml?��� $2 ,/Resources/Themes/Styles/ComboBoxStyles.xaml?�%	  &	        �� " ��.���  � �� �� " ��.R��� $��_Border��$ 2q� . ._��� 	 P� 
 �@��
IsSelected . . ��� $ _Border�� � ��
 ���� ��  � �� �#7284FFP� 
 �@J�IsMouseOver . . ���  �@��
IsSelected . .���  � ColumnDefinitions �� $
��0.7* ��� �� �� �� $
��0.7* � � RowDefinitions �� $��0.26* ��� �� $��* ��� $
��0.2* �.+�]� $��1��$	��200��$��Center=�.+��� -    ��Name$
 Back��  TransparentButton#��[ $��35��$��35��$
��Left=�.���� $'��!/Resources/Images/icons/next2.png���� ���#7A8BFF  CoursesLabel#��[ $��Center=�UNITUP�� -    ��Name$ AvatarImage��$��1��$��1q�$��1�� �� CornerRadius$ 10�����#7889FF$	��230��$	��260������  j� Stretch$ UniformToFill=� �� ImageSource �� *CurrentAvatarPath+�� $��1��$��2�� �� Orientation$ Vertical=�$	��Top=�$��0,30,0,0q�.+��� -   $ UploadAvatar��  CircleButtonStyle#���  $��70��$��1��$��Center=�$��1��$��70��y��� *UpdateVisibility+.��]� .+��� $&�� /Resources/Images/icons/plus.png��$��50��$��50���� -   $ SaveStudent��  ButtonStyle#���  $��55��$��0,20,0,0q�$��1��$��Center=�$��1��y��� *UpdateVisibility+���� *ActualWidth+ �� ElementName$ AvatarImage��.��]� .+��� $��Center=�$��23(�$��Center=�Зберегти дані�� -   $ OpenAddCertificate��#���  $��45��$��0,20,0,0q�$��1��$��Center=�$��1��y��� *AddCertificate+���� *ActualWidth+$ AvatarImage��.��]� .+��� $��Center=�$��23(�$��Center=�Додати]� ���� *ActualWidth+$ AvatarImage��y��� *ReadonlyVisibility+.+��� $'��!/Resources/Images/icons/edit2.png��$��20���� $��Stretch=�$��10,0,0,0q����#7889FF$��1���� -   $ OpenEditMode��#���  $��50��$��0,20,0,0q�$��1��$��Center=�$��1��y��� *ReadonlyVisibility+���� *ActualWidth+$ AvatarImage��.��]� .+��� $��Center=�$��23(�$��Center=�Редагувати]� $��0,20,0,0q����� *ActualWidth+$ AvatarImage��y��� *ReadonlyVisibility+.+��� $&�� /Resources/Images/icons/data.png��$��20���� $��Stretch=�$��10,0,0,0q����#7889FF$��1���� -   $ CreateCharacteristic��#���  $��50��$��0,20,0,0q�$��1��$��Center=�$��1��y��� *ReadonlyVisibility+���� *ActualWidth+$ AvatarImage��.���� $��Center=�$��20(�$��Center=�Характеристика�� $��1��$��2��$ 
Horizontal=�$��2��$	��Top=�.+��� $
��Bold"�$��35(�$��/Resources/Fonts/#PT Sans)����� *CurrentStudent.Lastname+�� $��8,0,0,0q�$
��Bold"�$��35(�$��/Resources/Fonts/#PT Sans)����� *CurrentStudent.Name+�� $��8,0,0,0q�$
��Bold"�$��35(�$��/Resources/Fonts/#PT Sans)����� *CurrentStudent.Patronymic+�� -    ��Name$ mainTab��$��0,70,0,0q�$��1��$��2��$��2��$��2�����#F0F1FF$��0 2 0 0q����#7A8BFF   ��Name��%�  '��       �� " ��.���  � �� �� " ��.R��� $��Panel��
������ $��0q����#7A8BFF._��� $ ContentSite��$��Center=�$��Center=�$��Header��$
��10,2q�	 P� 
 �@��
IsSelected . . ��� $ Panel�� � ��$ 0 0 0 2q��� $ Panel�� � ��$
 Bold"�P� 
 �@��
IsSelected .  . ��� $ Panel�� � ��$ 0q��� $ Panel�� � ��$ Normal"�.@��� $��/Resources/Fonts/#PT Sans)�$��18(����� $ 
Horizontal=�.+��� $&�� /Resources/Images/icons/user.png��$��25���� $��10,0,0,0q�Інформація.���� $��Visible=�$	��600��.���  �� �� .+��� $��3��$��1��.+��� $��10q�$ Vertical=�.+�]� .+���   	BoldLabel#��[ $��Center=�Батьки:d� -	    d�Name$ AddStudentParents��$��3��$��1��$��Right=�$��25��$��25��#��[ y��� *UpdateVisibility+.���� $,��&/Resources/Images/icons/plus_black.png���� -
    ��Name$ ParentsForm��$��0��  AnimatedParentsForm#��[ .+��� $��18(�$��/Resources/Fonts/#PT Sans)�ПІБ]� .+���   DefaultTextBox#��[ $��18(����� *Parent.FullName+�� $��18(�$��/Resources/Fonts/#PT Sans)�Номер телефону]� .+��� #��[ $��18(����� *Parent.PhoneNumber+�� -   #���  $��40��$��0,20,0,0q�$��Center=�$
��Auto��.��]� .+��� $��Center=�$��18(�$��Center=�Зберегти�� $��0,10,0,0q�
������ $��/Resources/Fonts/#PT Sans)�$��18(�$��0q�
������ ���� *	Parents+���� .R��� $ Vertical=�.+��� ���� *
FullName+�� ���� *PhoneNumber+]� $��10q�.+��� #��[ Сер. шк. б.:��   TransparentTextBox#��[ ���� *CurrentStudent.AverageGrade+�� $��10q�$ 
Horizontal=�.+��� #��[ Стать:�� $��5,0,0,0q�$��/Resources/Fonts/#PT Sans)�$	��100�� �� SelectedValuePath$ Content�� 	 DarkComboBox#��[	  �� SelectedValue �� *CurrentStudent.Gender+.@��� .��Чоловіча�� .��Жіноча�� $��10q�$ 
Horizontal=�.+��� #��[ Село/Місто:�� $��5,0,0,0q�$��/Resources/Fonts/#PT Sans)�$	��100��$ Content��#��[	  �� *CurrentStudent.PlaceLiveType+.@��� .��
Село�� .��
Місто�� $��10q�$ Vertical=�.+�]� .+��� #��[ $��Center=�Пільги:d� -   $ AddPrivelegesButton��$��3��$��1��$��Right=�$��25��$��25��#��[ y��� *UpdateVisibility+.���� $,��&/Resources/Images/icons/plus_black.png���� -   $ PrivilegesForm��$��0��$ Vertical=� 
 AnimatedPrivelegesForm#��[
 .+��� $��18(�$��/Resources/Fonts/#PT Sans)�Пільга:�� #��[	 $
��Left=�$	��150������ *AllPriveleges+ �� *	Privilege+�� -   #���  $��40��$��0,20,0,0q�$
��Left=�$
��Auto��.��]� .+��� $��Center=�$��18(�$��Center=�Зберегти�� $��0,10,0,0q�
������ $��/Resources/Fonts/#PT Sans)�$��18(�$��0q�
������ ���� *StudentPriveleges+]� $��10q�.+��� #��[ Рік випуску:�� #��[ ���� *CurrentStudent.PromYear+]� $��10q�.+��� #��[ Рік вступу:�� #��[ ���� *CurrentStudent.StartStudyYear+�� $��0��$��1��$��2��$��0,20,0,0q�.+�]� $��10q�.+��� #��[ Прізвище:�� #��[ ���� *CurrentStudent.Lastname+]� $��10q�.+��� #��[ 
Ім'я:�� #��[ ���� *CurrentStudent.Name+]� $��10q�.+��� #��[ По-батькові:�� #��[ ���� *CurrentStudent.Patronymic+]� $��10q�.+��� #��[  Дата народження:�� #��[ ���� *CurrentStudent.DateOfBirth+]� $��10q�.+��� #��[ Телефон:�� #��[ ���� *CurrentStudent.PhoneNumber+]� $��10q�.+��� #��[ Адреса:��  �� TextWrapping$
 Wrap=�#��[ ���� *CurrentStudent.Address+]� $��10q�.+��� #��[ Ідент код:�� #��[ $ WrapWithOverflow=����� *#!CurrentStudent.IdentificationCode+]� $��10q�.+��� #��[ № паспорту:�� #��[ ���� *CurrentStudent.PassportNumber+]� $��10q�.+��� #��[ Дата видачі:�� #��[ ���� *" CurrentStudent.PassportIssueDate+]� $��10q�.+��� #��[ Строк придатн.:�� #��[ ���� * CurrentStudent.PassportEndDate+]� $��10q�.+��� #��[ Примітки:�� $
 Wrap=�#��[ ���� *CurrentStudent.Note+�� $��10q�$ 
Horizontal=�.+��� #��[ Гуртожиток:�� $��5,0,0,0q�$��/Resources/Fonts/#PT Sans)�$	��100��$ Content��#��[	  �� *CurrentStudent.Dormitory+.@��� .��Так�� .��Ні�� $��0q�$��/Resources/Fonts/#PT Sans)�$��18(����� $ 
Horizontal=�.+��� $'��!/Resources/Images/icons/medal.png��$��25���� $��5,0,0,0q�Сертифікати.���� $��Visible=�$	��600��.���� -    ��Name$ StudentsList��$��1��$��2��$��3��
������ $��0q�$��0,0,40,0q�$��Hidden=�#��[  ���� *Certificates+ �� SelectedItem �� *CurrentCertificate+���� Template��.R��� $	��0.4q����#7889FF$ 10��
�������$��	30,10,0,0q�$ 
10,10,0,10q����� $ StudentsList�� �� Path$ ActualWidth�  widthConverter  �� 	Converter#  [ ! �� ConverterParameter$! 50��._�]� " � Cursor$
" Hand��.+�A� $
��Left=�$��50��$��50��$��Center=�$��20,0,0,0q����� # �� 
StartPoint$	# 1 1&�$ �� EndPoint$	$ 0 0&�.��� % � Color$% #7284FF��& � Offset$	& 0.1Q�� $% #A0ABFB��$	& 0.9Q��� $��/Resources/Fonts/#PT Sans)�$��30(�$��20,0,0,0q�$��Center=����� ' �� RelativeSource' �� ( �� AncestorType$( ListViewItemL�) �� Mode$) FindAncestor=�  listViewIndexConverter#  [ �� $
��Wrap=�$��/Resources/Fonts/#PT Sans)�$��30(�$	��300��$��30,0,0,0q�$��2��$
��Left=�$��Center=����� *Header+�� $��30��$��30��$��0,0,20,0q�#��[   Caliburn.Micro.Message*   Attach$* DeleteCertificate��$��Right=�$��Center=�.���� $(��"/Resources/Images/icons/remove.png���� -   $ MoveToPrevious��$��3��$	��200��$��1��#��[ $��Center=�$��45��y��� *ReadonlyVisibility+.���� $&�� /Resources/Images/icons/next.png��$
��Left=�+ � LayoutTransform+ �� , �� Angle$	, 180Q��� -   $ 
MoveToNext��$��3��$��3��#��[ $��Right=�$��50��$��45��y��� *ReadonlyVisibility+.���� $&�� /Resources/Images/icons/next.png��