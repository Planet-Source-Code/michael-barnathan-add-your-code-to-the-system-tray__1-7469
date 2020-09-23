VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "My Tray Application"
   ClientHeight    =   570
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3255
   LinkTopic       =   "Form1"
   ScaleHeight     =   570
   ScaleWidth      =   3255
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Remove from tray"
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add to tray"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Call AddToTray(Me.Icon, Me.Caption, Me)
End Sub

Private Sub Command2_Click()
Call ShowFormAgain(Me)
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If RespondToTray(X) <> 0 Then Call ShowFormAgain(Me)
End Sub

Private Sub Form_Unload(Cancel As Integer)
Call RemoveFromTray
End Sub
