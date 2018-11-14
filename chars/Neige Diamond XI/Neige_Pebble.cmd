;このCMDは和訳KFMを参考に作っています。
;
;

[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン
z = z      ;Ｚボタン
a = a      ;Ａボタン
b = b      ;Ｂボタン
c = c      ;Ｃボタン
s = s      ;スタートボタン


[Defaults]
command.time = 15

command.buffer.time = 1


;------------------------------------------------------------------------------
;-| 超必殺技 |-------------------------------------------------------------------

[Command]
name = "MAX3"
command = ~D, F, D, F, c
time = 30

;[Command]
;name = "氷殺"
;command = ~D, B, D, B, c
;time = 30

[Command]
name = "MAXカッティングエッジ"
command = ~D, B, D, B, z
time = 30

[Command]
name = "MAXアイスレイジング"
command = ~D, F, D, F, z
time = 30

[Command]
name = "アイスレイジング"
command = ~D, F, D, F, x
time = 30
[Command]
name = "アイスレイジング"
command = ~D, F, D, F, y
time = 30

[Command]
name = "カッティングエッジ"
command = ~D, B, D, B, a
time = 30
[Command]
name = "カッティングエッジ"
command = ~D, B, D, B, b
time = 30



;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------



[Command]
name = "弱アイスムーン"
command = ~D, DB, B, a
time = 30
[Command]
name = "強アイスムーン"
command = ~D, DB, B, b
time = 30

[Command]
name = "弱クロウバイツ-β"
command = ~F, D, DF, x
time = 30
[Command]
name = "強クロウバイツ-β"
command = ~F, D, DF, y
time = 30

[Command]
name = "弱ファングナックル"
command = ~D, DF, F, x
time = 30
[Command]
name = "強ファングナックル"
command = ~D, DF, F, y
time = 30

[Command]
name = "弱レッグアクセル"
command = ~D, DB, B, a
time = 30
[Command]
name = "強レッグアクセル"
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
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "recovery" ;必須コマンド名
command = x+y
time = 1

[Command]
name = "MAX"
command = y+a
time = 1


[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

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
;-| ボタン単発 |---------------------------------------------------------------

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
name = "ふっ飛ばし"
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
;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

;通常技
;

[Statedef -1] ;←この行は絶対に消さないでね。必須項目です。

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;AI用記述
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;AI用記述-ここまで
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;人操作用記述
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

[State -1, 走る]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, バックステップ]
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
;氷殺
;[State ,Hyosatsu]
;type = ChangeState
;value = 4300
;triggerall = command = "氷殺"
;triggerall = power >= 3000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2=(stateno=[200,499]) && movecontact


;MAX超必殺技-------------------------------
;------------------------------------------
;---------------------------------------------------------------------------
;MAXアイスレイジング
[State ,MAXIce]
type = ChangeState
value = 4200
triggerall = command = "MAXアイスレイジング"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAXカッティングエッジ
[State ,MAXカッティングエッジ]
type = ChangeState
value = 4100
triggerall = command = "MAXカッティングエッジ"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;超必殺技
;-------------------------------------------
;------------------------------------------------------------------------------
;カッティングエッジ
[State -1, Accel]
type = ChangeState
value = 4050
triggerall = command = "カッティングエッジ"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;カッティングエッジスパキャン
[State -1, Accel]
type = ChangeState
value = 4055
triggerall = command = "カッティングエッジ"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact

;
;-------------------------------------------
;------------------------------------------------------------------------------
;アイスレイジング
[State -1, Accel]
type = ChangeState
value = 4000
triggerall = command = "アイスレイジング"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;必殺技
;-------------------------------------------
;------------------------------------------------------------------------------
;強アイスムーン

[State -1, Accel]
type = ChangeState
value = 1310
triggerall = command = "強アイスムーン"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;必殺技
;-------------------------------------------
;------------------------------------------------------------------------------
;弱アイスムーン

[State -1, Accel]
type = ChangeState
value = 1300
triggerall = command = "弱アイスムーン"
triggerall = statetype = A
trigger1 = ctrl
trigger2=(stateno=[600,699]) && movecontact


;-------------------------------------------
;------------------------------------------------------------------------------
;強 クロウバイツ-β
 
[State -1, Accel]
type = ChangeState
value = 1510
triggerall = command = "強クロウバイツ-β"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;弱 クロウバイツ-β
 
[State -1, Accel]
type = ChangeState
value = 1500
triggerall = command = "弱クロウバイツ-β"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;強 ファングナックル
 
[State -1, Accel]
type = ChangeState
value = 1001
triggerall = command = "強ファングナックル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact


;-------------------------------------------
;------------------------------------------------------------------------------
;弱 ファングナックル どこキャン
 
[State -1, Accel]
type = ChangeState
value = 1002
triggerall = command = "弱ファングナックル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;弱 ファングナックル
 
[State -1, Accel]
type = ChangeState
value = 1000
triggerall = command = "弱ファングナックル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;-------------------------------------------
;------------------------------------------------------------------------------
;強 レッグアクセル
 
[State -1, Accel]
type = ChangeState
value = 1210
triggerall = command = "強レッグアクセル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact



;必殺技
;-------------------------------------------
;------------------------------------------------------------------------------
;弱 レッグアクセル
 
[State -1, Accel]
type = ChangeState
value = 1200
triggerall = command = "弱レッグアクセル"
triggerall = statetype != A
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact

;方向キー+α 同時押し
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;------マッドスライド------




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
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = var(59) != 1
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = var(59) != 1
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 702
triggerall = var(59) != 1
triggerall = command = "緊急回避前"
triggerall = alive
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------




;------------------
;投げ
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

;投げ
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

;立ち通常技＋挑発
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
;斜め空中弱パンチ
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
;斜め空中強パンチ
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
;斜め空中弱キック
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
;斜め空中強キック
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

[State -1, 挑発]
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
