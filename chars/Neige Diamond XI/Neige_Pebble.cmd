;����CMD�͘a��KFM���Q�l�ɍ���Ă��܂��B
;
;

[Remap]
x = x      ;�w�{�^���̓��͔�������ۂɉ����{�^���Ɋ��蓖�Ă�B
y = y      ;�x�{�^��
z = z      ;�y�{�^��
a = a      ;�`�{�^��
b = b      ;�a�{�^��
c = c      ;�b�{�^��
s = s      ;�X�^�[�g�{�^��


[Defaults]
command.time = 15

command.buffer.time = 1


;------------------------------------------------------------------------------
;-| ���K�E�Z |-------------------------------------------------------------------

[Command]
name = "MAX3"
command = ~D, F, D, F, c
time = 30

;[Command]
;name = "�X�E"
;command = ~D, B, D, B, c
;time = 30

[Command]
name = "MAX�J�b�e�B���O�G�b�W"
command = ~D, B, D, B, z
time = 30

[Command]
name = "MAX�A�C�X���C�W���O"
command = ~D, F, D, F, z
time = 30

[Command]
name = "�A�C�X���C�W���O"
command = ~D, F, D, F, x
time = 30
[Command]
name = "�A�C�X���C�W���O"
command = ~D, F, D, F, y
time = 30

[Command]
name = "�J�b�e�B���O�G�b�W"
command = ~D, B, D, B, a
time = 30
[Command]
name = "�J�b�e�B���O�G�b�W"
command = ~D, B, D, B, b
time = 30



;------------------------------------------------------------------------------
;-| �K�E�Z |-------------------------------------------------------------------



[Command]
name = "��A�C�X���[��"
command = ~D, DB, B, a
time = 30
[Command]
name = "���A�C�X���[��"
command = ~D, DB, B, b
time = 30

[Command]
name = "��N���E�o�C�c-��"
command = ~F, D, DF, x
time = 30
[Command]
name = "���N���E�o�C�c-��"
command = ~F, D, DF, y
time = 30

[Command]
name = "��t�@���O�i�b�N��"
command = ~D, DF, F, x
time = 30
[Command]
name = "���t�@���O�i�b�N��"
command = ~D, DF, F, y
time = 30

[Command]
name = "�ヌ�b�O�A�N�Z��"
command = ~D, DB, B, a
time = 30
[Command]
name = "�����b�O�A�N�Z��"
command = ~D, DB, B, b
time = 30


[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;------------------------------------------------------------------------------
;-| �L�[�Q��A������ |---------------------------------------------------------

[Command]
name = "FF"       ;�K�{�R�}���h��
command = F, F
time = 10

[Command]
name = "BB"       ;�K�{�R�}���h��
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| �������� |-----------------------------------------------------------------

[Command]
name = "recovery" ;�K�{�R�}���h��
command = x+y
time = 1

[Command]
name = "MAX"
command = y+a
time = 1


[Command]
name = "�ً}���O"
command = x+a
time = 1

[Command]
name = "�ً}���O"
command = z
time = 1

[Command]
name = "�ً}�����"
command = /$B,x+a
time = 1

[Command]
name = "�ً}�����"
command = /$B,z
time = 1

;------------------------------------------------------------------------------
;-| �����L�[�{�{�^�� |---------------------------------------------------------

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "mae_a"
command = /$F,a
time = 1

[Command]
name = "mae_b"
command = /$F,b
time = 1


[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

;------------------------------------------------------------------------------
;-| �{�^���P�� |---------------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "�ӂ���΂�"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1


;------------------------------------------------------------------------------
;-| �����L�[ |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;�K�{�R�}���h��
command = /$F
time = 1

[Command]
name = "holdback"  ;�K�{�R�}���h��
command = /$B
time = 1

[Command]
name = "holdup"    ;�K�{�R�}���h��
command = /$U
time = 1

[Command]
name = "holddown"  ;�K�{�R�}���h��
command = /$D
time = 1

;�ʏ�Z
;

[Statedef -1] ;�����̍s�͐�΂ɏ����Ȃ��łˁB�K�{���ڂł��B

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;AI�p�L�q
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;AI�p�L�q-�����܂�
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;�l����p�L�q
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

[State -1, ����]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, �o�b�N�X�e�b�v]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAX3
[State ,MAX3]
type = ChangeState
value = 4400
triggerall = command = "MAX3"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;�X�E
;[State ,Hyosatsu]
;type = ChangeState
;value = 4300
;triggerall = command = "�X�E"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact


;MAX���K�E�Z-------------------------------
;------------------------------------------
;---------------------------------------------------------------------------
;MAX�A�C�X���C�W���O
[State ,MAXIce]
type = ChangeState
value = 4200
triggerall = command = "MAX�A�C�X���C�W���O"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAX�J�b�e�B���O�G�b�W
[State ,MAX�J�b�e�B���O�G�b�W]
type = ChangeState
value = 4100
triggerall = command = "MAX�J�b�e�B���O�G�b�W"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;���K�E�Z
;-------------------------------------------
;------------------------------------------------------------------------------
;�J�b�e�B���O�G�b�W
[State -1, Accel]
type = ChangeState
value = 4050
triggerall = command = "�J�b�e�B���O�G�b�W"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;�J�b�e�B���O�G�b�W�X�p�L����
[State -1, Accel]
type = ChangeState
value = 4055
triggerall = command = "�J�b�e�B���O�G�b�W"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;
;-------------------------------------------
;------------------------------------------------------------------------------
;�A�C�X���C�W���O
[State -1, Accel]
type = ChangeState
value = 4000
triggerall = command = "�A�C�X���C�W���O"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�K�E�Z
;-------------------------------------------
;------------------------------------------------------------------------------
;���A�C�X���[��

[State -1, Accel]
type = ChangeState
value = 1310
triggerall = command = "���A�C�X���[��"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;�K�E�Z
;-------------------------------------------
;------------------------------------------------------------------------------
;��A�C�X���[��

[State -1, Accel]
type = ChangeState
value = 1300
triggerall = command = "��A�C�X���[��"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;-------------------------------------------
;------------------------------------------------------------------------------
;�� �N���E�o�C�c-��
 
[State -1, Accel]
type = ChangeState
value = 1510
triggerall = command = "���N���E�o�C�c-��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;�� �N���E�o�C�c-��
 
[State -1, Accel]
type = ChangeState
value = 1500
triggerall = command = "��N���E�o�C�c-��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;�� �t�@���O�i�b�N��
 
[State -1, Accel]
type = ChangeState
value = 1001
triggerall = command = "���t�@���O�i�b�N��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;-------------------------------------------
;------------------------------------------------------------------------------
;�� �t�@���O�i�b�N�� �ǂ��L����
 
[State -1, Accel]
type = ChangeState
value = 1002
triggerall = command = "��t�@���O�i�b�N��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;�� �t�@���O�i�b�N��
 
[State -1, Accel]
type = ChangeState
value = 1000
triggerall = command = "��t�@���O�i�b�N��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;�� ���b�O�A�N�Z��
 
[State -1, Accel]
type = ChangeState
value = 1210
triggerall = command = "�����b�O�A�N�Z��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;�K�E�Z
;-------------------------------------------
;------------------------------------------------------------------------------
;�� ���b�O�A�N�Z��
 
[State -1, Accel]
type = ChangeState
value = 1200
triggerall = command = "�ヌ�b�O�A�N�Z��"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;�����L�[+�� ��������
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------�}�b�h�X���C�h------




;---------------------------------------------------------------------------
;CD attack
[State -1, 290]
type = ChangeState
value = 550
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;CD attack
[State -1, 290]
type = ChangeState
value = 650
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------



;===========================================================================
;---------------------------------------------------------------------------
;�ً}�����
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = var(59) != 1
triggerall = command = "�ً}�����"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�ً}���O
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = command = "�ً}���O"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;�_�E�����
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = var(59) != 1
triggerall = command = "�ً}���O"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------




;------------------
;����
[State -1, Kung Fu Throw]
type = ChangeState
value = 810
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X <= 11
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
ignorehitpause = 0

;����
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X <= 11
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
ignorehitpause = 0

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------



;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------

;�����ʏ�Z�{����
;------------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

;Stand Medium Punch Close
[State -1, Stand Medium Punch Close]
type = ChangeState
value = 215
triggerall = p2bodydist X <= 10
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;------------------------------------------------------------------------------

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 246
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100

;------------------------------------------------------------------------------

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl  

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact   

;------------------------------------------------------------------------------

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 435
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact  

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = 100  

;------------------------------------------------------------------------------
;�΂ߋ󒆎�p���`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0


;------------------------------------------------------------------------------
;�΂ߋ󒆋��p���`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;------------------------------------------------------------------------------
;�΂ߋ󒆎�L�b�N
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0


;------------------------------------------------------------------------------
;�΂ߋ󒆋��L�b�N
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
ignorehitpause = 0

;--------------------------------
;--------------------------------

[State -1, ����]
type = ChangeState
value = 195
;triggerall = var(24) = 0 || 1
triggerall = var(59) != 1
triggerall = !(p2name = "MONO FREAKS" || p4name = "MONO FREAKS")
triggerall = command = "start"
triggerall = command != "holddown"
trigger1 = NumPartner = 1
trigger1 = Partner,Name != "MONO FREAKS"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = NumPartner = 0
trigger2 = statetype = S
trigger2 = ctrl
