   M S B A M L   `   `   `  ���� G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:GroupManager.ViewsGroupManager.Views  -    'GroupManager.Views.AboutCertificateView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:GroupManager.Views     ^ ZCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  ���#F0F1FF  � 	Resources   �� MergedDictionaries �� Source   _ListBoxItemStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName��  �� $9 3/Resources/Themes/Styles/RoundedScrollBarBlack.xaml?��� $2 ,/Resources/Themes/Styles/ComboBoxStyles.xaml?�%	  &	        �� " ��.���  � �� �� " ��.R��� $��_Border��$ 2q� . ._��� 	 P� 
 �@��
IsSelected . . ��� $ _Border�� � ��
 ���� ��  � �� �#7284FFP� 
 �@J�IsMouseOver . . ���  �@��
IsSelected . .���  � ColumnDefinitions �� $
��0.7* ��� $��2* ��� �� �� $
��0.7* � � RowDefinitions �� $��0.26* ��� $��2* ��� $��* ��� $
��0.2* �.+�]� $��1��$	��200��$
��Left=�.+��� -    ��Name$
 Back��  TransparentButton#��[ $��35��$��35��$
��Left=�.���� $'��!/Resources/Images/icons/next2.png���� ���#7A8BFF  CoursesLabel#��[ $��Center=�UNITUP�� -    ��Name$ AvatarImage��$��1��$��1q�$��1�� �� CornerRadius$ 10�����#7889FF$	��390��$	��300������  j� Stretch$ UniformToFill=� �� ImageSource �� *CurrentAvatarPath+�� $��1��$��2�� �� Orientation$ Vertical=�$	��Top=�$��0,30,0,0q�.+��� -   $ UploadAvatar��  ButtonStyle#���  $��55��$��1��$��Center=�$��1��$	��180��y��� *UpdateVisibility+.��]� .+��� $��18(�$��Center=�$��Center=�!Завантажити фото�� -   $ SaveStudent��#���  $��55��$��0,20,0,0q�$��1��$��Center=�$��1��$	��180��y��� *UpdateVisibility+.��]� .+��� $��Center=�$��20(�$��Center=�Зберегти дані]� ���� *ActualWidth+ �� ElementName$ AvatarImage��y��� *ReadonlyVisibility+.+��� $'��!/Resources/Images/icons/edit2.png��$��20���� $��Stretch=�$��10,0,0,0q����#7889FF$��1���� -   $ OpenEditMode��#���  $��50��$��0,20,0,0q�$��1��$��Center=�$��1��$	��180��y��� *ReadonlyVisibility+.��]� .+��� $��Center=�$��23(�$��Center=�Редагувати�� $��1��$��2��$ 
Horizontal=�$��2��$	��Top=�.+��� $
��Bold"�$��35(�$��/Resources/Fonts/#PT Sans)����� *CurrentCertificate.Header+�� $��0,70,0,0q�$��1��$��2��$��2��$��2�����#F0F1FF$��0 2 0 0q����#7A8BFF   ��Name��%�  '��       �� " ��.���  � �� �� " ��.R��� $��Panel��
������ $��0q����#7A8BFF._��� $ ContentSite��$��Center=�$��Center=�$��Header��$
��10,2q�	 P� 
 �@��
IsSelected . . ��� $ Panel�� � ��$ 0 0 0 2q��� $ Panel�� � ��$
 Bold"�P� 
 �@��
IsSelected .  . ��� $ Panel�� � ��$ 0q��� $ Panel�� � ��$ Normal"�.@��� $��/Resources/Fonts/#PT Sans)�$��18(����� $ 
Horizontal=�.+��� $&�� /Resources/Images/icons/user.png��$��25���� $��10,0,0,0q�Інформація.���� $��Visible=�$	��600��.��� .+��� $��0��$��1��$��2��$��0,20,0,0q�.+�]� $��10q�.+���   	BoldLabel#��[ Дата видачі:��   TransparentTextBox#��[ ���� *CurrentCertificate.Date+]� $��10q�.+��� #��[ Заголовок:�� #��[ ���� *CurrentCertificate.Header+]� $��10q�.+��� #��[ " Опис сертифіката:��  �� TextWrapping$
 Wrap=�#��[ ���� * CurrentCertificate.Description+