;-| Super Motions |------------------------------------------------------

[command]
name = "Angel_Butterfly"
command = ~D, DB, B, D, DB, B, a
time = 30

[command]
name = "Angel_Butterfly"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
Name= "Desolation"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
Name= "Desolation"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "Flutterblade"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Flutterblade"
command = ~D, DF, F, D, DF, F, b
time = 30

[command]
name = "Swarm"
command = ~D, D, z
time = 10

[Command]
Name= "Butterfly Breaker"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
Name= "Inner Light"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
Name= "Inner Light"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
Name= "Killer Queens"
command = ~D, DB, B, D, DF, F, c
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "teleport1"
command = ~D,D,x
time = 20

[Command]
name = "teleport2"
command = ~D,D,y
time = 20

[Command]
name = "teleport3"
command = ~D,D,b
time = 20

[Command]
name = "teleport4"
command = ~D,D,a
time = 20

[Command]
Name= "Dash_Slash"
command = ~F,F,x
time = 20

[Command]
name = "Quick Strike"
command = ~F,F,y
time = 10

[Command]
name = "Sky Strike 2"
command = x+b
time = 10

[Command]
name = "Sky Strike"
command = x+b
time = 10

[Command]
Name= "Butterfly Bomb"
command = ~D, DF, F, x
time = 20

[Command]
Name= "Energy Net"
command = ~D, DF, F, y
time = 20

[Command]
Name= "Butterfly Crush"
command = ~D, DB, B, y
time = 20

;-------------------------------------flying-------------------------------
[Command]
name = "QCB_KK"
command = ~D, D, D
time = 30

;----------------------------------[Kula]------------------------------------

[Command]
name = "Kula"
command = ~D, DF, F, b
time = 20

;--------------------------------[ Candy ]-----------------------------------
[Command]
name = "Candy Burst"
command = ~D, DB, B, a
time = 25

[Command]
name = "Candy Lazer"
command = ~D, DB, B, b
time = 20

;-----------------------------------[ Nyla ]--------------------------------

[Command]
name = "Nyla Rundown"
command = ~D, DB, B, x
time = 50

;---------------------------------[Rocky]-----------------------------------
;
[Command]
name = "Rocky Shockwave"
command = ~D, DF, F, a
time = 50

;-| Double Tap |-----------------------------------------------------------
[Command]
Name= "FF";Required (do not remove)
command = F, F
time = 10

[Command]
Name= "BB";Required (do not remove)
command = B, B
time = 10

;-------------------[Dodge 98 style]------------------------------------------

[Command]
name = "q_fwd"
command = /F, z
time = 1

[Command]
name = "q_back"
command = /B, z
time = 1

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
Name= "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
Name= "ab"
command = a+b
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

;---------------------------------------------------------------------------------------------

[Command]
name = "powerup"
command = /$c
time = 18

[Command]
name = "taunt"
command = s
time = 1

;-| Dir + Button |--------------------------------------------------------------
[Command]
Name= "fwd_x"
command = /F,x
time = 1

[Command]
Name= "fwd_y"
command = /F,y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
Name= "fwd_a"
command = /F,a
time = 1

[Command]
Name= "fwd_b"
command = /F,b
time = 1

[Command]
Name= "downfwd_a"
command = /DF,a
time = 1

[Command]
Name= "downfwd_b"
command = /DF,b
time = 1

[Command]
Name= "back_a"
command = /B,a
time = 1

[Command]
Name= "back_b"
command = /B,b
time = 1

[Command]
Name= "down_a"
command = /$D,a
time = 1

[Command]
Name= "down_b"
command = /$D,b
time = 1


[Command]
Name= "fwd_ab"
command = /F, a+b
time = 1

[Command]
Name= "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
Name= "a"
command = a
time = 1

[Command]
Name= "b"
command = b
time = 1

[Command]
Name= "x"
command = x
time = 1

[Command]
Name= "y"
command = y
time = 1

[Command]
Name= "z"
command = z
time = 1

[Command]
name="fwd"
command=F
time=1

[Command]
name="back"
command=B
time=1

[Command]
name="up"
command=U
time=1

[Command]
name="down"
command=D
time=1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdfwdup";Required (do not remove)
command = /$F+U
time = 1

[Command]
name = "holdbackup";Required (do not remove)
command = /$B+U
time = 1

[Command]
name = "holdfwddown" ;Required (do not remove)
command = /$F+D
time = 1

[Command]
name = "holdbackdown";Required (do not remove)
command = /$B+D
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1=command="command_name"
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.

; Big thanks to BC
; Don't remove the following line. It's required by the CMD standard.

;-| AI Commands |-----------------------------------------------------
[Command]
name = "CPU1"
command = U, U, U, U
time = 1

[Command]
name = "CPU2"
command = U, U, U, D
time = 1

[Command]
name = "CPU3"
command = U, U, D, D
time = 1

[Command]
name = "CPU4"
command = U, D, D, D
time = 1

[Command]
name = "CPU5"
command = D, D, D, D
time = 1

[Command]
name = "CPU6"
command = D, D, D, U
time = 1

[Command]
name = "CPU7"
command = D, D, U, U
time = 1

[Command]
name = "CPU8"
command = D, U, U, U
time = 1

[Command]
name = "CPU9"
command = U, D, U, U
time = 1

[Command]
name = "CPU10"
command = U, U, D, U
time = 1

[Command]
name = "CPU11"
command = D, U, U, D
time = 1

[Command]
name = "CPU12"
command = U, D, D, U
time = 1

[Command]
name = "CPU13"
command = D, U, D, U
time = 1

[Command]
name = "CPU14"
command = U, D, U, D
time = 1

[Command]
name = "CPU15"
command = F, F, F, F
time = 1

[Command]
name = "CPU16"
command = B, B, B, B
time = 1

[Command]
name = "CPU17"
command = F, B, F, F
time = 1

[Command]
name = "CPU18"
command = F, F, B, F
time = 1

[Command]
name = "CPU19"
command = B, F, F, F
time = 1

[Command]
name = "CPU20"
command = F, F, F, B
time = 1

[Command]
name = "CPU21"
command = F, B, B, F
time = 1

[Command]
name = "CPU22"
command = B, F, F, B
time = 1

[Command]
name = "CPU23"
command = F, B, F, B
time = 1

[Command]
name = "CPU24"
command = B, F, B, F
time = 1

[Command]
name = "CPU25"
command = D, F, D, F
time = 1

[Command]
name = "CPU26"
command = D, B, D, B
time = 1

[Command]
name = "CPU27"
command = D, B, D, F
time = 1

[Command]
name = "CPU28"
command = D, F, D, B
time = 1

[Command]
name = "CPU29"
command = U, F, D, B
time = 1

[Command]
name = "CPU30"
command = U, B, D, F
time = 1

[Statedef -1]

;Adjust the A.I. and strikers here, max A.I. level is 8. Turn off strikers change to 0.

[State -1, Activate AI]
type = VarSet
triggerall = RoundState = 2
trigger1 = Command = "CPU1"
trigger2 = Command = "CPU2"
trigger3 = Command = "CPU3"
trigger4 = Command = "CPU4"
trigger5 = Command = "CPU5"
trigger6 = Command = "CPU6"
trigger7 = Command = "CPU7"
trigger8 = Command = "CPU8"
trigger9 = Command = "CPU9"
trigger10 = Command = "CPU10"
trigger11 = Command = "CPU11"
trigger12 = Command = "CPU12"
trigger13 = Command = "CPU13"
trigger14 = Command = "CPU14"
trigger15 = Command = "CPU15"
trigger16 = Command = "CPU16"
trigger17 = Command = "CPU17"
trigger18 = Command = "CPU18"
trigger19 = Command = "CPU19"
trigger20 = Command = "CPU20"
trigger21 = Command = "CPU21"
trigger22 = Command = "CPU22"
trigger23 = Command = "CPU23"
trigger24 = Command = "CPU24"
trigger25 = Command = "CPU25"
trigger26 = Command = "CPU26"
trigger27 = Command = "CPU27"
trigger28 = Command = "CPU28"
trigger29 = Command = "CPU29"
trigger30 = Command = "CPU30"
v = 59
value = 4

[State -1, Strikers OFF/ON]
type = VarSet
trigger1 = 1
v = 48
value = 1

[State -1, Control Fix]
type=ctrlset
triggerall= !ctrl && roundstate=2
trigger1= (stateno=52 || stateno=105 || stateno=5120) && !animtime
trigger2= (stateno=[200,255]) && !animtime
trigger3= (stateno=5001 || stateno=5011 || stateno=151 || stateno=153) && hitover
value=1
;---------------------------------------------------------------------------
;RunBack
[State -1, Run back]
type = ChangeState
value = 105
triggerall = var(59)<=0
trigger1=command="BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1, Runf]
type = ChangeState
value = 10080
triggerall = var(59)<=0
trigger1=command="FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
; "Butterfly Breaker"
[State -1, Butterfly Breaker]
type = ChangeState
value = 300000
triggerall = var(59)<=0
triggerall=command="Butterfly Breaker"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = prevstateno = 3600
trigger2 = prevstateno = 1300
trigger3 = stateno = [200,440]
trigger3 = movecontact = 1
trigger4 = stateno = 30100 && movecontact

[State -1, Air Butterfly Breake]
type = ChangeState
value = 300000
triggerall = var(59)<=0
triggerall = command = "Butterfly Breaker"
triggerall = Power >= 2000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno = 50
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1
trigger3 = stateno = 1706 && movecontact
trigger4 = stateno = 1025 && movecontact
trigger5 = stateno = 116

;---------------------------------------------------------------------------
;"Angel_Butterfly"
[State -1, Angel_Butterfly]
type = ChangeState
value = 1705
triggerall = var(59)<=0
triggerall = command = "Angel_Butterfly"
triggerall = Power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno = 50
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1

;--------------------------- Butterfly Bombs------------------
[State -1, Butterfly Bomb]
type = ChangeState
value = 1000
triggerall = var(59)<=0
triggerall = numhelper(1010)=0 && numhelper(1015)=0 && numhelper(1030)=0
triggerall=command="Butterfly Bomb"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [400, 450]
trigger2 = movecontact = 1

[State -1, Butterfly Crush]
type = ChangeState
value = 1030
triggerall = var(59)<=0
triggerall = numhelper(1010)=0 && numhelper(1015)=0 && numhelper(1030)=0
triggerall = command= "Butterfly Crush"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1

[State -1, Butterfly Bomb Air]
type = ChangeState
value = 1015
triggerall = var(59)<=0
triggerall = numhelper(1010)=0 && numhelper(1015)=0 && numhelper(1030)=0
triggerall = command = "Butterfly Bomb"
triggerall = statetype = A
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = [600, 650]
;----------------------------------------------------------------------------
;Candy Burst
[State -1, Candy Burst]
type = ChangeState
value = 891
triggerall = var(59)<=0
triggerall = var(48)=1
triggerall = var(47)!=2
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
triggerall = prevstateno != 3000
triggerall = prevstateno != 891
triggerall = prevstateno != 9941
triggerall = prevstateno != 892
triggerall = prevstateno != 890
triggerall = prevstateno != 7025
triggerall = command = "Candy Burst" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------Candy ------------------------------------------
 ;Candy Lazer
[State -1, Candy Lazer]
type = ChangeState
value = 8910
triggerall = var(59)<=0
triggerall = var(48)=1
triggerall = var(47)!=2
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
triggerall = command = "Candy Lazer"
triggerall = command != "holddown"
triggerall = prevstateno != 8910
triggerall = prevstateno != 3000
triggerall = prevstateno != 891
triggerall = prevstateno != 9941
triggerall = prevstateno != 892
triggerall = prevstateno != 890
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------------
; Nyla rundown
[State -1, Nyla Rundown]
type = ChangeState
value = 9941
triggerall = command = "Nyla Rundown"
triggerall = var(59)<=0
;triggerall = var(48)=1
;triggerall = var(47)!=2
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
;triggerall = command != "holddown"
;triggerall = prevstateno != 8910
;triggerall = prevstateno != 3000
;triggerall = prevstateno != 891
;triggerall = prevstateno != 9941
;triggerall = prevstateno != 892
;triggerall = prevstateno != 890
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 2026 && movecontact

;---------------------------------------------------------------------------------
;Dash Slash
[State -1, Dash Slash]
type = ChangeState
value = 2026
triggerall = var(59)<=0
triggerall=command="Dash_Slash"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = prevstateno = 3600
trigger2 = prevstateno = 1300
;----------------------------------------------------------------------------
[State -1, Desolation]
type = ChangeState
value = 1020
triggerall = var(59)<=0
triggerall = power >= 1000
triggerall=command= "Desolation"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1020
;==================================================================================================
[State -1, Dodge Forward]
type = ChangeState
value = 361
triggerall = var(59)<=0
triggerall = Command = "q_fwd" && !Command = "holdback"
triggerall = roundstate = 2
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 10080)

;---------------------------------------------------------------------

[State -1, Dodge Back]
type = ChangeState
value = 3600
triggerall = var(59)<=0
triggerall = Command = "q_back" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 10080)
;--------------------------------------------------------------------------
[State -1, Energy Net]
type = ChangeState
value = 1010
triggerall = var(59)<=0
triggerall = numhelper(1016)=0 && p2stateno!=2120
triggerall = numhelper(2110)=0
triggerall=command="Energy Net"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [200, 450]
trigger2 = movecontact = 1
;===========================================================================
;Flutterblade
[State -1, Flutterblade]
type = ChangeState
value = 1024
triggerall = var(59)<=0
triggerall = command = "Flutterblade"
triggerall = power >= 1000 ;Level 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, GRAB SLAM throw]
type = ChangeState
value = 8211
triggerall = var(59)<=0
triggerall = command = "b"
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2bodydist X < 10
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = p2movetype != H
triggerall = stateno != 821
trigger1 = command = "holdfwd"
trigger1 = p2statetype != L
trigger1 = ctrl = 1

;===========================================================================
; "Inner Light"
[State -1, Inner Light]
type = ChangeState
value = 30100
triggerall = var(59)<=0
triggerall=command="Inner Light"
triggerall = power >= 1000 ;Level 1
trigger1 = (stateno = 100 || ctrl) && statetype != a
trigger2 = p2bodydist x < 80
;---------------------------------------------------------------------------
[state -1, Kula Striker]
type = changestate
value = 7025
triggerall = var(59)<=0
;triggerall = var(48)=1
;triggerall = Var(47)!=1
triggerall = command = "Kula" ;&& ctrl && statetype != a
triggerall =!numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = 2026 && movecontact

;---------------------------------------------------------------------------
;Fly forward
[State -1, Flying F]
type = ChangeState
value = 114
triggerall = var(59)<=0
triggerall = command = "FF"
triggerall = statetype = A && ctrl && stateno != 114
triggerall = Power >= 1000
triggerall = ctrl
trigger1 = stateno = 50

;Fly back Back
[State -1, Flying B]
type = ChangeState
value = 115
triggerall = var(59)<=0
triggerall = command = "BB"
triggerall = statetype = A
triggerall = Power >= 1000
triggerall = ctrl
trigger1 = stateno = 50

;===========================================================================
;Fly
[State -1, Fly]
type = ChangeState
value = 8000
triggerall = var(59)<=0
triggerall = command = "QCB_KK" && numhelper(1000) = 0
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

;Fly
[State -1, Fly]
type = ChangeState
value = 8000
triggerall = var(59)<=0
triggerall = command = "QCB_KK" && numhelper(1000) = 0
triggerall = power = 1000
trigger1 = statetype = A
trigger1 = ctrl
;----------------------[ Jump Sky Strike]-----------------------------
[State -1, Jump Sky Strike]
type = ChangeState
value = 40230
triggerall = var(59)<=0
triggerall = command = "Sky Strike 2"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = prevstateno = [600,650]
trigger2 = prevstateno = 50
;--------------------------------------------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59)<=0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X < 10
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;*****************************************************************
;Power up
[State -1, Power up]
type = ChangeState
value = 196
triggerall = var(59)<=0
triggerall = command = "powerup"
triggerall = power < 3000
trigger1 = StateType = S
trigger1 = Ctrl

;----------------------------------------------------------------------------
[State -1, Killer Queens HSDM]
type = ChangeState
value = 1500
triggerall = var(59)<=0
triggerall = var(47)!=1&&Var(47)!=2&&Var(47)!=3
triggerall = command = "Killer Queens"
triggerall = power >= 3000
triggerall = statetype != A
;triggerall = (100*life/const(data.life)) <= 30
trigger1 = ctrl
;-----------------------[ Quick Strike]-------------------------
[State -1, Quick Strike]
type = ChangeState
value = 20230
triggerall = var(59)<=0
triggerall = command = "Quick Strike"
triggerall = command != "holddown"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = prevstateno = 3600
trigger2 = prevstateno = 1300

;-----------------------------------------------------------------------------
; Rocky Shockwave
[State -1, Rocky Shockwave]
type = ChangeState
value = 2999
triggerall = var(59)<=0
triggerall = var(48)=1
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
triggerall = p2name!="Rocky"
triggerall = command = "Rocky Shockwave"
triggerall = power >= 1000
triggerall = prevstateno != 3000
triggerall = prevstateno != 891
triggerall = prevstateno != 9941
triggerall = prevstateno != 892
triggerall = prevstateno != 890
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Swarm
[state -1, Swarm]
type = changestate
value = 4000
triggerall = var(59)<=0
triggerall = command = "Swarm"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 30100 && movecontact

[state -1, Air Swarm]
type = changestate
value = 4000
triggerall = var(59)<=0
triggerall = command = "Swarm"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno = 50
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1
trigger3 = stateno = 1706 && movecontact
trigger4 = stateno = 1025 && movecontact
trigger5 = stateno = 116

;----------------------[ Sky Strike]-----------------------------
[State -1, Sky Strike]
type = ChangeState
value = 30230
triggerall = var(59)<=0
triggerall = command = "Sky Strike"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,taunt]
type = ChangeState
value = 195
triggerall = var(59)<=0
triggerall = (command = "taunt")
trigger1 = statetype != a && ctrl && stateno != 195
;---------------------------------------------------------------------------
[State -1, Teleport]
type = ChangeState
value = 1300
triggerall = var(59)<=0
triggerall = command = "teleport1" || command = "teleport2" || command = "teleport3" || command = "teleport4"
triggerall = power >= 1000
trigger1 = ctrl

;===========================================================================
[State -1]
type = ChangeState
value = 200
triggerall = var(59)<=0
triggerall=command="x"
triggerall = p2bodydist x < 20
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 210
triggerall = var(59)<=0
triggerall = command = "x"
triggerall = p2bodydist x > 20
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 220
triggerall = var(59)<=0 && roundstate = 2
triggerall=command="y"
triggerall=command !="holddown"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_a
[State -1]
type = ChangeState
value = 230
triggerall = var(59)<=0
triggerall=command="a"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = time > 7

;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 250
triggerall = var(59)<=0
triggerall = command = "a"
triggerall = p2bodydist x > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Stand_c
[State -1]
type = ChangeState
value = 240
triggerall = var(59)<=0
triggerall=command="b"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 400
triggerall = var(59)<=0
triggerall=command="x"
triggerall = p2bodydist x < 20
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 7

;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = var(59)<=0
triggerall = command = "x"
triggerall = p2bodydist x > 20
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 420
triggerall = var(59)<=0
triggerall=command="y"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 430
triggerall = var(59)<=0
triggerall=command="a"
triggerall = p2bodydist x < 20
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = time > 7

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 440
triggerall = var(59)<=0
triggerall = command = "a"
triggerall = p2bodydist x > 20
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 450
triggerall = var(59)<=0
triggerall = p2bodydist x < 50
triggerall=command="holddown"
triggerall=command="b"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1

;---------------------------------------------------------------------------

[State -1, Slide Kick]
type = ChangeState
value = 460
triggerall = var(59)<=0
triggerall=command="holddown"
triggerall=command="b"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 600
triggerall =var(59)<=0
triggerall=command="x"
triggerall = p2bodydist x < 20
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
triggerall = var(59)<=0
triggerall = command = "x"
triggerall = p2bodydist x > 20
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 620
triggerall = var(59)<=0
triggerall =command="y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_a
[State -1]
type = ChangeState
value = 630
triggerall = var(59)<=0
triggerall = p2bodydist x < 20
trigger1=command="a" && stateno = 114
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 640
triggerall = var(59)<=0
triggerall = command = "a"
triggerall = p2bodydist x > 20
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 650
triggerall = var(59)<=0
trigger1=command="b"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1, AI Stop Charge]
type = ChangeState
value = 0
triggerall = Var(59) && StateNo = 196
trigger1 = (EnemyNear,Pos X-Pos X)*Facing < 230
trigger2 = Win
trigger3 = Lose
ctrl = 1

[State -1, AI Walk]
type = ChangeState
value = 21
triggerall = Var(59) >= 5 && EnemyNear,StateType != L && StateType != A && StateNo != [20,21]
triggerall = !Win && Ctrl
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 100
trigger1 = Random <= Var(59)*10

[State -1, AI Jump]
type = ChangeState
value = 40
triggerall = Var(59) && (EnemyNear,Pos X-Pos X)*Facing <= 150 && !Win && EnemyNear,StateType != L
trigger1 = Random <= 170-Var(59)*20 && Ctrl && StateNo = [0,21]

[State -1, AI Move FWD]
type = VarSet
triggerall = Var(59)
trigger1 = StateNo = 40
sysvar(1) = 1

[State -1, AI Run]
type = ChangeState
value = 101
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A && StateNo = 21
triggerall = !Win && Ctrl
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 200
trigger1 = Random <= Var(59)*10 && Var(59) >= 5
trigger2 = Random <= Var(59)*5

[State -1, AI Run back]
type = ChangeState
value = 105
triggerall = Var(59) && Ctrl && StateNo != 105 && BackEdgeBodyDist >= 25 && !Win && StateType != A
trigger1 = PrevStateNo = 2026
trigger2 = (EnemyNear,Pos X-Pos X)*Facing <= 210 && EnemyNear,StateType = L && Power != PowerMax

[State -1, AI Air Dash FWD]
type = ChangeState
value = 114
triggerall = StateType = A && !Win && Ctrl && Power >= 1000 && EnemyNear,StateType != L && StateNo != 114
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 190 && Random <= Var(59)*30 && Pos Y = [-20,0]
trigger2 = (EnemyNear,Pos X-Pos X)*Facing >= 190 && Random <= Var(59)*30 && Pos Y = [-60,-40]

[State -1, AI Air Dash Back]
type = ChangeState
value = 115
triggerall = StateType != S && StateType != C && !Win && Ctrl && Power >= 1000 && StateNo != 115
trigger1 = (EnemyNear,Pos X-Pos X)*Facing <= 60 && Random <= Var(59)*125 && EnemyNear,Movetype = A

[State -1, AI Block]
type = ChangeState
triggerall = Var(59) && StateType != A && Ctrl && MoveType != H && EnemyNear,Facing != Facing
trigger1 = EnemyNear,StateType != C && EnemyNear,MoveType = A && (((EnemyNear,Pos x-Pos x)*Facing <= 100) || (EnemyNear, NumProj > 0))
trigger1 = Random <= 750
trigger2 = InGuardDist && Random <= 250+Var(59)*50
value = 130
persistent = 0

[State -1, AI Block]
type = ChangeState
triggerall = Var(59) && StateType != A && Ctrl && MoveType != H && EnemyNear,Facing != Facing
triggerall = EnemyNear,StateType = C && EnemyNear,MoveType = A && (((EnemyNear,Pos X-Pos X)*Facing <= 100) || (EnemyNear, NumProj > 0))
trigger1 = Random <= 450+Var(59)*50
trigger2 = InGuardDist && Random <= 250+Var(59)*50
value = 131
persistent = 0

[State -1, AI Block]
type = ChangeState
triggerall = Var(59) && StateType = A && Ctrl && MoveType != H && EnemyNear, Facing != Facing
triggerall = EnemyNear,MoveType = A && (((EnemyNear,Pos X-Pos X)*Facing <= 100) || (EnemyNear, NumProj > 0))
trigger1 = Random <= 350+Var(59)*50
trigger2 = InGuardDist && Random <= 250+Var(59)*50
value = 132
persistent = 0

;AI Block
[State -1, AI Block]
type = ChangeState
triggerall = Var(59) && StateType != A && Ctrl && MoveType != H && EnemyNear, Facing != Facing
triggerall = EnemyNear,StateType != C && EnemyNear,MoveType = A && (((EnemyNear,Pos X-Pos X)*Facing <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 152
trigger2 = InGuardDist && Random <= 250+Var(59)*50
value = 150
persistent = 0

;AI Block
[State -1, AI Block]
type = ChangeState
triggerall = Var(59) && StateType != A && Ctrl && MoveType != H && EnemyNear, Facing != Facing
triggerall = EnemyNear,StateType = C && EnemyNear,MoveType = A && (((EnemyNear,Pos X-Pos X)*Facing <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 150
trigger2 = InGuardDist && Random <= 250+Var(59)*50
value = 152
persistent = 0

[State -1, AI Power Up]
type = ChangeState
value = 196
triggerall = !Win && Var(59) && Power < 3000 && StateType != A && Ctrl
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 230 && EnemyNear,Vel X <= 0 && Random <= Var(59)*62

[State -1, AI Stand Weak Punch]
type = ChangeState
value = 200+((EnemyNear,Pos X-Pos X)*Facing>20)*10
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 40 && !Win && EnemyNear,StateType != C
trigger1 = Ctrl && Random <= 5
trigger2 = StateNo = 200 && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62

[State -1, AI Stand Heavy Punch]
type = ChangeState
value = 220
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 90 && !Win && EnemyNear,StateType != C
trigger1 = Ctrl && EnemyNear,Pos Y-Pos Y >= -70 && EnemyNear,StateType = A && Random <= Var(59)*62
trigger2 = (StateNo = [200,210]) && MoveContact && Random <= Var(59)*62

[State -1, AI Stand Weak Kick]
type = ChangeState
value = 230+((EnemyNear,Pos X-Pos X)*Facing>20)*10
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 75 && !Win
trigger1 = Ctrl && Random <= 5
trigger2 = StateNo = 230 && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62

[State -1, AI Stand Heavy Kick]
type = ChangeState
value = 250
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = ((EnemyNear,Pos X-Pos X)*Facing = [110,135]) && !Win && EnemyNear,StateType != A
trigger1 = Ctrl && Random <= 5
trigger2 = StateNo = 230 && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62

[State -1, AI Crouch Weak Punch]
type = ChangeState
value = 400+((EnemyNear,Pos X-Pos X)*Facing>20)*10
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 125 && !Win
trigger1 = Ctrl && Random <= 5
trigger2 = StateNo = 400 && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62
trigger4 = Ctrl && EnemyNear,Pos Y-Pos Y >= -50 && Random <= Var(59)*62

[State -1, AI Crouch Heavy Punch]
type = ChangeState
value = 420
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = !Win
trigger1 = Ctrl && Random <= 5 && (EnemyNear,Pos X-Pos X)*Facing <= 85
trigger2 = (StateNo = [400,410]) && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62
trigger3 = (EnemyNear,Pos X-Pos X)*Facing = [135,185]

[State -1, AI Crouch Weak Kick]
type = ChangeState
value = 430+((EnemyNear,Pos X-Pos X)*Facing>20)*10
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 100 && !Win
trigger1 = Ctrl && Random <= 5
trigger2 = StateNo = 430 && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62
trigger4 = Ctrl && EnemyNear,Pos Y-Pos Y >= -25 && Random <= Var(59)*62

[State -1, AI Crouch Heavy Kick]
type = ChangeState
value = 450
triggerall = Var(59) && EnemyNear,StateType != L && StateType != A
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 50 && !Win
trigger1 = Ctrl && Random <= 5
trigger2 = (StateNo = [430,440]) && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62

[State -1, AI Slide Kick]
type = ChangeState
value = 460
triggerall = Var(59) && StateType != A && !Win
triggerall = (EnemyNear,Pos X-Pos X)*Facing >= 51 && (EnemyNear,Pos X-Pos X)*Facing <= 151
trigger1 = Ctrl && Random <= 5 && EnemyNear,StateType != L
trigger2 = (StateNo = [430,440]) && MoveContact && Random <= Var(59)*62
trigger3 = Ctrl && EnemyNear,MoveType = A && Random <= Var(59)*62

[State -1, AI Angel Butterfly/Air Weak Punch/Air Butterfly Breaker]
type = ChangeState
value = ifelse((power>=3000 && StateNo = 600 && Movehit),1705,ifelse((power>=2000 && StateNo = 600 && Movehit),300000,ifelse((power>=1000 && StateNo = 600 && Movehit),1705,600+((EnemyNear,Pos X-Pos X)*Facing>20)*10)))
triggerall = Var(59) && EnemyNear,StateType != L && StateType != S
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 100 && !Win && StateType != C
trigger1 = StateNo = 600 && MoveContact && Random <= Var(59)*62
trigger2 = Ctrl && Random <= Var(59)*62

[State -1, AI Air Heavy Punch]
type = ChangeState
value = 620
triggerall = Var(59) && EnemyNear,StateType != L && StateType != S
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 80 && !Win && StateType != C
trigger1 = (StateNo = [600,610]) && MoveContact && Random <= Var(59)*62
trigger2 = Ctrl && Random <= Var(59)*62

[State -1, AI Angel Butterfly/Air Weak Kick/Air Butterfly Breaker]
type = ChangeState
value = ifelse((power>=3000 && StateNo = 630 && Movehit),1705,ifelse((power>=2000 && StateNo = 630 && Movehit),300000,ifelse((power>=1000 && StateNo = 630 && Movehit),1705,630+((EnemyNear,Pos X-Pos X)*Facing>20)*10)))
triggerall = Var(59) && EnemyNear,StateType != L && StateType != S
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 85 && !Win && StateType != C
trigger1 = StateNo = 630 && MoveContact && Random <= Var(59)*62
trigger2 = Ctrl && Random <= Var(59)*62

[State -1, AI Air Heavy Kick]
type = ChangeState
value = 650
triggerall = Var(59) && EnemyNear,StateType != L && StateType != S
triggerall = (EnemyNear,Pos X-Pos X)*Facing <= 85 && !Win && StateType != C
trigger1 = (StateNo = [630,640]) && MoveContact && Random <= Var(59)*62
trigger2 = Ctrl && Random <= Var(59)*62

[State -1, AI Dodge FWD]
type = ChangeState
value = 361
triggerall = Ctrl && StateType != A && Var(59) && (EnemyNear,Pos X-Pos X)*Facing <= 55 && !Win
trigger1 = EnemyNear,MoveType = A && Random <= Var(59)*62

[State -1, AI Grab]
type = ChangeState
value = IfElse(Random%2,800,8211)
triggerall = EnemyNear,MoveType != H && (EnemyNear,Pos X-Pos X)*Facing <= 35
triggerall = Ctrl && Var(59) && StateType != A && EnemyNear,StateType != L && !Win
trigger1 = EnemyNear,MoveType = A && Random <= Var(59)*125
trigger2 = Random <= Var(59)*125

[State -1, AI Candy Burst]
type = ChangeState
value = 891
triggerall = Ctrl && (EnemyNear,Pos X-Pos X)*Facing >= 155 && Var(48)=1 && Var(47)!=2
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023) && !Win
triggerall  = StateType != A
trigger1 = EnemyNear,Vel X >= 0 && EnemyNear,Vel Y < 0 && (EnemyNear,StateNo = [40,50]) && Random <= Var(59)*62

[State -1, AI Swarm/Butterfly Crush/Butterfly Bomb/Energy Net]
type = ChangeState
value = ifelse(power>=2000,4000,ifelse(power>=1000,1030,IfElse(Random%2,1000,1010)))
triggerall = Var(59) && !NumHelper(1010) && !NumHelper(1015) && StateType != A && !Win && Ctrl
triggerall = !NumHelper(1016)
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 145 && Random <= Var(59)*10
trigger2 = StateNo = 0 && Time >= 80 && Random <= Var(59)*60
Trigger3 = P2StateNo = 5120
Trigger3 = Random <= var(59)*62

[State -1, AI Flutterblade]
type = ChangeState
value = 1024
triggerall = Var(59) && Power >= 1000 && StateType != A && (EnemyNear,Pos X-Pos X)*Facing <= 140
triggerall = MoveHit && !Win
trigger1 = StateNo = 220 && Var(59) <= 4 && Var(59)*62
trigger2 = StateNo = 220 && (EnemyNear,Pos X-Pos X)*Facing >= 90 && Var(59)*62 && Var(59) >= 5
trigger3 = StateNo = 420 && (EnemyNear,Pos X-Pos X)*Facing >= 120 && Var(59)*62 && EnemyNear,StateType = A

[State -1, AI Desolation/Butterfly Breaker]
type = changestate
value = ifelse(power>=2000,300000,1020)
triggerall = Var(59) && Power >= 1000 && StateType != A
trigger1 = Ctrl && Var(59)*60 && (EnemyNear,Pos X-Pos X)*Facing >= 100 && EnemyNear,MoveType = A

[State -1, AI Killer Queens HSDM]
type = ChangeState
value = 1500
triggerall = Var(59) && Var(47)!=1 && Var(47)!=2 && Var(47)!=3 && !Win && Ctrl && EnemyNear,StateType != L
triggerall = Power >= 3000 && StateType != A ;&& (100*Life/Const(data.life)) <= 30
trigger1 = Random <= Var(59)*62 && (EnemyNear,Pos X-Pos X)*Facing >= 180

[State -1, AI Angel_Butterfly]
type = ChangeState
value = 1705
triggerall = Var(59) && Power >= 1000 && (EnemyNear,Pos X-Pos X)*Facing <= 90 && EnemyNear,StateType != L
triggerall = MoveHit && EnemyNear,Pos Y-Pos Y = [-30,0]
trigger1 = Random <= Var(59)*20 && ((StateNo = [600,610]) || (StateNo = [630,640]))
trigger2 = Random <= Var(59)*62 && (StateNo = 630 || StateNo = 650)

[State -1, AI Butterfly Breaker/Dash Slash]
type = ChangeState
value = ifelse(power>=3000,2026,ifelse((power >=2000 && (StateNo = 250 && AnimElemTime(11) > 0 || (StateNo = [200,440])) && Movehit),300000,2026))
triggerall = Var(59) && StateType != A && !Win && EnemyNear,StateType != L
trigger1 = Ctrl && EnemyNear,MoveType = A && (EnemyNear,Pos X-Pos X)*Facing <= 190
trigger1 = EnemyNear,Vel X > 0 && Var(59)*62
trigger2 = (StateNo = 250 && AnimElemTime(11) > 0 || (StateNo = [200,440])) && MoveContact && Random <= (1050-Var(59)*125)

[State -1, AI Butterfly Breaker]
type = ChangeState
value = 300000
triggerall = Var(59) && StateType != A && !Win && EnemyNear,StateType != L && power >= 2000
trigger1 = Ctrl && EnemyNear,MoveType = A && (EnemyNear,Pos X-Pos X)*Facing <= 190
trigger1 = EnemyNear,Vel X > 0 && Var(59)*62
trigger2 = StateNo = 30100 && hitcount >= 12
trigger2 = Random <= Var(59)*100

[State -1, AI Air Butterfly Breaker]
type = ChangeState
value = 300000
triggerall = Var(59) && StateType = A && !Win && EnemyNear,StateType != L && power >= 2000
trigger1 = Ctrl && EnemyNear,MoveType = A && (EnemyNear,Pos X-Pos X)*Facing <= 190
trigger1 = EnemyNear,Vel X > 0 && Var(59)*100
trigger1 = StateNo = 1706 && movecontact
trigger1 = Random <= Var(59)*100
trigger2 = StateNo = 1025 && hitcount >= 8
trigger2 = Random <= Var(59)*100

[State -1, AI Air Butterfly Breaker/Angel Butterfly]
type = ChangeState
value = ifelse(power>=3000,1705,ifelse(power>=2000,300000,1705))
triggerall = Var(59) && StateType = A && !Win && EnemyNear,StateType != L && power >= 1000
trigger1 = Ctrl && EnemyNear,MoveType = A && (EnemyNear,Pos X-Pos X)*Facing <= 190
trigger1 = EnemyNear,Vel X > 0 && Var(59)*100
trigger2 = StateNo = 620 && movehit
trigger2 = Random <= Var(59)*100
trigger3 = StateNo = 650 && movehit
trigger3 = Random <= Var(59)*100

[State -1, AI Air Butterfly Breaker/Angel Butterfly]
type = ChangeState
value = ifelse(power>=3000,1705,ifelse(power>=2000,300000,1705))
triggerall = Var(59) && StateType = A && !Win && EnemyNear,StateType != L && p2statetype = A && power >= 1000
trigger1 = Ctrl && EnemyNear,MoveType = A && (EnemyNear,Pos X-Pos X)*Facing <= 190
trigger1 = EnemyNear,Vel X > 0 && Var(59)*100
trigger2 = StateNo = 620 && movecontact
trigger2 = Random <= Var(59)*100
trigger3 = StateNo = 650 && movecontact
trigger3 = Random <= Var(59)*100

[State -1, AI Rocky Shockwave]
type = changestate
value = 2999
triggerall = Var(59) && Var(48)=1 && Var(47)!=1 && Ctrl && StateType != A && !Win && power >= 1000
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 200 && Random <= Var(59)*62 && EnemyNear,MoveType = A
Trigger2 = P2StateNo = 5120
Trigger2 = Random <= var(59)*200
trigger3 = PrevStateNo = 30100
trigger3 = Random <=Var(59)*100
trigger4 = PrevStateNo = 300000
trigger4 = Random<= Var(59)*100
Trigger5 = Random <= var(59)*100
Trigger5 = P2StateNo = [5030,5110]

[State -1, AI Kula Striker]
type = changestate
value = 7025
triggerall = Var(59) && Var(48)=1 && Var(47)!=1 && Ctrl && StateType != A && !Win
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
trigger1 = (EnemyNear,Pos X-Pos X)*Facing >= 200 && Random <= Var(59)*62 && EnemyNear,MoveType = A
trigger2 = PrevStateNo = 30100
trigger2 = Random <=Var(59)*100
trigger3 = PrevStateNo = 300000
trigger3 = Random<= Var(59)*100

[State -1, AI Candy Laser]
type = ChangeState
value = 8910
triggerall = Ctrl && Var(48)=1 && Var(47)!=2 && !Win && StateType != A
triggerall = !numhelper(911)&&!numhelper(7025)&&!numhelper(9941)&&!numhelper(2023)
trigger1 = EnemyNear,StateType = L && Random <= Var(59)*62
Trigger2 = Random <= var(59)*100
Trigger2 = P2StateNo = [5030,5110]

[State -1, AI Inner Light/Nyla Rundown/Kula Strike]
type = ChangeState
value = ifelse((power>=2000 && StateNo = 2026 && MoveHit),30100,ifelse(power>=1000,9941,7025))
triggerall = Var(59) && (EnemyNear,Pos X-Pos X)*Facing <= 70 && !Win && StateType != A
trigger1 = EnemyNear,MoveType = A && Var(59)*125 && Ctrl
trigger2 = StateNo = 2026 && Var(59)*100 && Movecontact

[State -1, AI Sky Strike]
type = ChangeState
value = IfElse(StateType!=A,30230,40230)
triggerall = !Win && Ctrl && Var(59)
trigger1 = Var(16) && Random <= Var(59)*62

[State -1, AI Quick Strike]
type = ChangeState
value = 20230
triggerall = var(59)
triggerall = statetype != A && !Win && Ctrl
triggerall = p2statetype != L && p2statetype != A
triggerall = p2stateno != [305,307]
trigger1 = ctrl && random <= Var(59)*62
trigger1 = (P2BodyDist X = [15,120])
trigger2 = ctrl && (P2BodyDist X = [90,220])
trigger2 = random <= Var(59)*62

[State -1, AI Call]
type = ChangeState
value = ifelse(power>=1000,2999,ifelse(Random%3,8910,ifelse(Random%2,1000,1010)))
TriggerAll = StateType != A
TriggerAll = P2StateType = L
Triggerall = Var(59) && (EnemyNear,Pos X-Pos X)*Facing <= 200 && !Win && StateType != A
Triggerall = EnemyNear,AnimTime = -1
Trigger1 = P2StateNo = 5120
Trigger1 = Random <= var(59)*100
