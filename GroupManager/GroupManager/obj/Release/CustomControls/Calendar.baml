   M S B A M L   `   `   `  ���� G  CGroupManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:GroupManager.CustomControlsGroupManager.CustomControls  *    $GroupManager.CustomControls.Calendar   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ;local)clr-namespace:GroupManager.CustomControls     
�������  � 	Resources     CalendarItemTemplate1 �� 
TargetType5  /System.Windows.Controls.Primitives.CalendarItem � 	Resources �Name  Key �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration	 �� 
TargetName	
 W� To �� TargetProperty �� CornerRadius � Cursor ��Name	 �� To ��Name � ColumnDefinitions � RowDefinitions ��Name  HeaderButtonTemplate �� Orientation  PreviousButtonTemplate  NextButtonTemplate ��Name  DisabledColor J� Opacity �� RadiusX �� RadiusY �� Stretch �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value  �� Value! �� Binding" �� RelativeSource# �� AncestorType&   System.Windows.Controls.Calendar  CalendarStyle1$ �� 
TargetType% ��Name&  Name'   CalendarItemStyle  CalendarDayButtonStyle1:  4System.Windows.Controls.Primitives.CalendarDayButton(   Transitions%  System.Windows.VisualTransition)   GeneratedDuration* R� KeyTime+ R� Value  System.Windows.Visibility, F�Name- J� RenderTransformOrigin. J� IsHitTestVisible  CalendarButtonStyle17	  1System.Windows.Controls.Primitives.CalendarButton��%�  &	        7  7  7  7  7  &	 {
    &	 n    &	 e    �� "   ���� (��       **(CalendarItem.DayTitleTemplateResourceKey+).R��� ���	#FF333333$��SF Pro)�$��11(�$��Center=�$��0,6,0,6q�$��Center=����� .R�� $ 	PART_Root��  ���� DisabledColor $ 	#A5FFFFFF��   CommonStates��.   
Normal��  Disabled��. �� .��W� $ 0D�$	 PART_DisabledVisual��$
 1X�$ Opacity�.+��� #��z��#��z��#��z��$ 1��._��� ���	#FFFFFFFF$��2q�$ 1��._��   ���� PreviousButtonTemplate " ��.R��� $
 Hand��$ 20��
������ ._�� .+��� $
 path��$��30(����#7A8BFF$��/Resources/Fonts/#Nunito)�$��<���� NextButtonTemplate " ��.R��� $
 Hand��
������ $ 20��   CommonStates��.   
Normal��._�� .+��� $
 path��$��30(����#7A8BFF$��/Resources/Fonts/#Nunito)�$��>���� HeaderButtonTemplate " ��.R�� $
 Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$	 buttonContent��$ 	#FF73A9D8X�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  Disabled��. �� .��W� $ 0D�$	 buttonContent��$
 .5X�$ Opacity�.+��� $ buttonContent��#��z��#��z�����#7A8BFF#��z��$��1,4,1,9q�#��z�� �� $	��200 ��� $
��Auto � �� $��40 ��� $
��Auto �.+��� $ PART_HeaderButton��$��25,0,0,0q�$��0��|�.  $
��Bold"�$��20(�$��Nunito)�$
��Left=�$��0��8��  $	��Top=��� $��2��$ 
Horizontal=�$��0,0,25,0q�.+��� $ PART_PreviousButton��-   $��0,0,5,0q�|�.  $
��Auto��8�� $
��Auto���� $ PART_NextButton��$��2��|�.  $��Right=�$
��Auto��$��0��8�� $
��Auto��� $ PART_MonthView��$��3��$��Center=�$��6,-1,6,6q�$��1��$y�Visible=� �� $��60���� $��60���� $��60���� $��60���� $��60���� $��60���� $��60�� �� $��23 ��� $��15 ��� $��15 ��� $��15 ��� $��15 ��� $��15 ��� $��15 �� $ PART_YearView��$��3��$��Center=�$��6,-3,7,6q�$��1��$y�Hidden=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $ PART_DisabledVisual��8�� $ 0Q�$ 2��$ 2��8�� $
 Fill=�$��1��$y�	Collapsed=� P�  � {� .  . ��� $ PART_DisabledVisual�� � y�$ Visible=��� $
  Year��! �� *DisplayMode+" �� *FindAncestor+"#  .a��� $ PART_MonthView�� � y�$ Hidden=��� $ PART_YearView�� � y�$ Visible=��� $  Decade��! �� *DisplayMode+" �� *FindAncestor+"#  .a��� $ PART_MonthView�� � y�$ Hidden=��� $ PART_YearView�� � y�$ Visible=��� "$  .���  � �� �	#FF333333��  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  � �� �� "  .R��� $% 	PART_Root��$��Center=�.+�  $& PART_CalendarItem��#���   #��z��#��z��#��z��#��z' �� "$  .���  � ��$ 5����  � ��$ 5����  � ��$ 10(���  � ��$# /Resources/Fonts/#SF Pro Text)���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��    CommonStates��(   $) 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$	 HighlightBackground��$	
 0.5X�$ Opacity�  Pressed��. �� .��W� $ 0D�$	 HighlightBackground��$	
 0.5X�$ Opacity�  Disabled��. �� .��W� $ 0D�$	 HighlightBackground��$
 0X�$ Opacity�W� $ 0D�$	 
NormalText��$	
 .35X�$ Opacity�  SelectionStates��(   $) 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$	 SelectedBackground��$	
 .75X�$ Opacity�  CalendarButtonFocusStates��(   $) 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$	 DayButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$	 DayButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  	Collapsed=�  ActiveStates��(   $) 0D�.   
Active��  Inactive��. �� .���� $ 0D�$	 
NormalText��$ 	#FF777777X�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  	DayStates��(   $) 0D�.   
RegularDay��  	Today��. �� .��W� $ 0D�$	 TodayBackground��$
 1X�$ Opacity��� $ 0D�$	 
NormalText��$ 	#FFFFFFFFX�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  BlackoutDayStates��(   $) 0D�.   	NormalDay��  BlackoutDay��. �� .��W� $ 0D�$	 Blackout��$
 .2X�$ Opacity�.+��� $ TodayBackground�����#7A8BFF$ 0Q�$ 5��$ 5���� $ SelectedBackground�����#A0ABFB$ 0Q�$ 1��$ 1���� #��z��#��z��#��z���� $ HighlightBackground�����#A0ABFB$ 0Q�$ 5��$ 5���� $ 
NormalText�����	#FF333333#��z��$��5,1,5,1q�#��z��F� $, Blackout��}�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	���	#FF000000$��Stretch=�$��3q�$ 0Q�$- 0.5,0.5&�$
 Fill=�$��Stretch=��� $ DayButtonFocusVisual��. .  $ 1��$ 1�����#7A8BFF$y�	Collapsed=��� "$ 	 .���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  � ��$ 40����  � ��$ 42����  � ��$ 15(���  � ��$# /Resources/Fonts/#SF Pro Text)���  � ��$ Center=���  � ��$ Center=���  � �� �� " 	 .R��    CommonStates��(   $) 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$	 
Background��$
 .5X�$ Opacity�  Pressed��. �� .��W� $ 0D�$	 
Background��$
 .5X�$ Opacity�  SelectionStates��(   $) 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$	 SelectedBackground��$	
 .75X�$ Opacity�  ActiveStates��(   $) 0D�.   
Active��  Inactive��. �� .���� $ 0D�$	 
NormalText��$ 	#FF777777X�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�  CalendarButtonFocusStates��(   $) 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$	 CalendarButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$	 CalendarButtonFocusVisual��$ 
Visibility�..�i� $* 0��+  	Collapsed=�.+��� $ SelectedBackground��#��z��$ 0Q�$ 1��$ 1���� $ 
Background��#��z��$ 0Q�$ 1��$ 1���� $ 
NormalText�����	#FF333333#��z��$��1,0,1,1q�#��z���� $ CalendarButtonFocusVisual��. .  $ 1��$ 1�����	#FF45D6FA$y�	Collapsed=� P�  �@J�	IsFocused . . ��� $ CalendarButtonFocusVisual�� � y�$ Visible=�.��� .+�(� / (� Stretch$/ UniformToFill=�.��  -   0  Name$0 CustomCalendar��1   CalendarButtonStyle#1 �  2   CalendarDayButtonStyle#2 �  #���  