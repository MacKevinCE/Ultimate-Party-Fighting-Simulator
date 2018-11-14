;-| AvX Motions |--------------------------------------------------------

[Command]
name = "Pause"
command = s
time = 5

[Command]
name = "Taunt"
command = ~D, DF, F, s
time = 17

[Command]
name = "Taunt"
command = ~D, DB, B, s
time = 17

[Command]
name = "Down"
command = D
time = 5

[Command]
name = "Up"
command = U
time = 5


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D,$U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "recovery roll"
command = a+b
time = 1

[Command]
name = "recovery roll"
command = b+c
time = 1

[Command]
name = "recovery roll"
command = a+c
time = 1

[Command]
name = "pushblock"
command = x+y
time = 5

[Command]
name = "pushblock"
command = x+z
time = 5

[Command]
name = "pushblock"
command = y+z
time = 5

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "holdz";Required (do not remove)
command = /$z
time = 1

[Command]
name = "holdy";Required (do not remove)
command = /$y
time = 1

[Command]
name = "holdx";Required (do not remove)
command = /$x
time = 1


;-------------------------------------------------------------------------------
;--------------------------|| Hypers ||-----------------------------------------
;-------------------------------------------------------------------------------
;Hyper Phase Two

[Command]
name = "PhaseTWO"
command = ~D, DF, F, x+y

[Command]
name = "PhaseTWO"
command = ~D, DF, F, x+z

[Command]
name = "PhaseTWO"
command = ~D, DF, F, y+z
;-------------------------------------------------------------------------------
;Calling in Missile Strike

[Command]
name =  "CallItIn"
command = ~D, DB, B, x+y

[Command]
name = "CallItIn"
command = ~D, DB, B, x+z

[Command]
name = "CallItIn"
command = ~D, DB, B, y+z
;-------------------------------------------------------------------------------
;Hyper 3

[Command]
name = "Shield 101"
command = ~D, DF, F, a+b

[Command]
name = "Shield 101"
command = ~D, DF, F, a+c

[Command]
name = "Shield 101"
command = ~D, DF, F, b+c
;-------------------------------------------------------------------------------
;Stealth

[Command]
name = "Stealth"
command = ~D, DB, B, a+b

[Command]
name = "Stealth"
command = ~D, DB, B, a+c

[Command]
name = "Stealth"
command = ~D, DB, B, b+c

;-------------------------------------------------------------------------------
;--------------------------|| Specials ||---------------------------------------
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;Boot Camp
[Command]
name = "Boot_a"
command = ~D, DF, F, a

[Command]
name = "Boot_b"
command = ~D, DF, F, b

[Command]
name = "Boot_c"
command = ~D, DF, F, c

;-------------------------------------------------------------------------------
;Pistol
[Command]
name = "pistolx"
command = ~D, DF, F, x
time =10

[Command]
name = "pistoly"
command = ~D, DF, F, y
time =10

[Command]
name = "pistolz"
command = ~D, DF, F, z
time =10
;-------------------------------------------------------------------------------
;Phase Two
[Command]
name = "Shotgun"
command = ~F, D, DF, x

[Command]
name = "Phase2"
command = ~F, D, DF, y

[Command]
name = "AK47"
command = ~F, D, DF, z

;-------------------------------------------------------------------------------
;Grenada
[Command]
name = "Frag_x"
command = ~D, DB, B, x

[Command]
name = "Frag_y"
command = ~D, DB, B, y

[Command]
name = "Frag_z"
command = ~D, DB, B, z

;-------------------------------------------------------------------------------
;Life Model Decoy
[Command]
name = "LMD"
command = ~D, DB, B, a

[Command]
name = "LMD"
command = ~D, DB, B, b

[Command]
name = "LMD"
command = ~D, DB, B, c

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Command]
name = "chain"
command = ~D, DB, B, a+x

[Command]
name = "chain"
command = ~D, DB, B, b+y

[Command]
name = "chain"
command = ~D, DB, B, c+z
;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, AI Activation]
type = varset
triggerall = AILevel > 1
triggerall = (roundstate = 2) && (var(59) = 0)
trigger1 = Random <= (ifelse(AILevel =1,40,(AILevel-2)*100))
v = 59
value = 1

[State -1, AI Deactivation]
type = varset
triggerall = AIlevel < 8
triggerall = var(59) = 1
trigger1 = Random > ((AILevel-2)*100)
trigger2 = roundstate != 2
v = 59
value = 0

[State -1, AI Dampiner]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = Random > AILevel*100
triggerall = animtime = 0
triggerall = movetype != H
triggerall = ctrl
trigger1 = statetype = S && (stateno != [120,150]) && (stateno != 40)
trigger1 = stateno != [10,12]
value = 0
ctrl = 1


[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist x <= 250) && (random = [200,899]) && (vel x < 0)
trigger2 = (p2bodydist x <= 250) && (random = [800,899]) && (vel x > 0)
trigger3 = (p2bodydist x <= 250) && (random = [400,899]) && (vel x = 0)
trigger4 = (anim = 21)
trigger5 = (prevstateno > 5000) && (random < 200)
value = 130

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist x <= 250) && (random = [500,899])
trigger2 = (prevstateno > 5000) && (random < 200)
value = 131

[State -1, AI Guarding, Easy/Medium AI]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = AILevel <=5
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist x <= 250) && (random = [700,899])
trigger2 = (anim = 43) || (anim = 46)
trigger3 = (prevstateno > 5000) && (random < 200)
value = 132

[State -1, AI Guarding, Hard AI]
type = ChangeState
triggerall = (var(59) != 0) && Numenemy && (stateno != [120,155])
triggerall = AILevel > 5
triggerall = Random <= (AILevel * 10)
triggerall =!(enemynear,hitdefattr=SCA,AT)
triggerall = inguarddist
trigger1 = ctrl
value = 120

[State -1, AI Guard Push (Standing)]
type = ChangeState
triggerall = Var(59)
triggerall = AILevel >= 4
triggerall = p2bodydist x =[0,40]
triggerall = StateType != A
triggerall = enemynear, HitDefAttr = SCA,NA,NT,NP,SA,ST,SP
trigger1 = StateNo = [150,153]
trigger1 = Time >= 5
trigger1 = random < 100+300*(BackEdgeDist < 30)
value = 6300

;====================================================================
; Main Hyper - Long Range
;====================================================================

; mega beam
[State -1, megaBeam]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 100
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 50

[State -1, megaBeam]
type = ChangeState
value = 3100
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 100
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 50

[State -1, megaBeam]
type = ChangeState
value = 3200
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 100
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 50

[State -1, megaBeam]
type = ChangeState
value = 3300
triggerall = power >= 1000 && var(59) && ctrl && p2bodydist X >= 100
triggerall = StateType != A && MoveType != H && RoundState = 2
trigger1 = enemynear, numproj = 0 && enemynear, movetype != A && random <= 50

;---------------------------------------------------------------------------
;crouch Strong punch (launcher)
[State -1, Crouch launcher]
type = ChangeState
value = 420
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = p2bodydist X <= 10 && (enemynear, statetype != A) && Random <= 50 ;&& (StateNo = 420) && (MoveHit = 1)

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 700
triggerall = (StateType != A) && Var(59)
trigger1 = (StateNo = 420) && (MoveHit = 1) && Random <= 500
trigger2 = (enemynear, Vel X >= 4) && ctrl  && Random <= 500


;====================================================================
; Main Standing Special
;====================================================================
; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

; Special1
[State -1, Special1]
type = ChangeState
value = 1500
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

; Special1
[State -1, Special1]
type = ChangeState
value = 1510
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = S
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

; Special1
[State -1, Special1]
type = ChangeState
value = 1020
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype != C
triggerall = enemynear, numproj = 0 && enemynear, movetype != A
trigger1 = random < 100

; Special1
[State -1, Special1]
type = ChangeState
value = 1030
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = C
triggerall = enemynear, movetype != A
trigger1 = random < 110

[State -1, Special1]
type = ChangeState
value = 1040
triggerall = var(59) && ctrl && (!IsHelper) && P2BodyDist Y = [-50,50]
triggerall = StateType = A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 150

[State -1, Special1]
type = ChangeState
value = 1050
triggerall = var(59) && ctrl && (!IsHelper) && P2BodyDist Y = [-50,50]
triggerall = StateType = A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 150

[State -1, Special1]
type = ChangeState
value = 1060
triggerall = var(59) && ctrl && (!IsHelper) && P2BodyDist Y = [-50,50]
triggerall = StateType = A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 150

[State -1, Special1]
type = ChangeState
value = 1090
triggerall = var(59) && ctrl && (!IsHelper)
triggerall = StateType != A && MoveType != H && RoundState = 2
triggerall = P2BodyDist X > 100 && enemynear, statetype = A
trigger1 = random < 140

[State -1, beam]
type = ChangeState
value = 1100
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 50 &&  Random < 250 &&  enemynear, p2dist y >= 10

[State -1, beam]
type = ChangeState
value = 1200
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 50 &&  Random < 250 &&  enemynear, p2dist y >= 10

[State -1, beam]
type = ChangeState
value = 1300
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X < 90 &&  Random < 150 &&  enemynear, p2dist y >= 10

[State -1, beam]
type = ChangeState
value = 1310
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 100 &&  Random < 150 &&  enemynear, p2dist y >= 10

[State -1, beam]
type = ChangeState
value = 1320
triggerall = var(59) && ctrl
triggerall = StateType != A && MoveType != H && RoundState = 2 && !IsHelper
trigger1 = P2BodyDist X > 200 &&  Random < 250 &&  enemynear, p2dist y >= 10

;---------------------------------------------------------------------------


;====================================================================
; Stand, Crouch, Jump / Punch, Kick - NORMAL (only 3 punches/kicks)
;====================================================================

;---------------------------------------------------------------------------
; Standing basics
; 
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (statetype = S) && var(59) && p2statetype != L && RoundState = 2
trigger1 = ctrl = 1
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && Random <= 200)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2

; (chain combos)
trigger1 = (stateno = 200) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall =(statetype = S) && var(59) && p2statetype != L && RoundState = 2 && Random <= 600
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 400&& random >200)) && ctrl

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) && p2statetype != L && RoundState = 2
triggerall = statetype = S

; (chain combos)
trigger1= (stateno = 230) && (movecontact >= 1)  && Random <= 600

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = var(59) && enemynear, statetype != L && RoundState = 2 && Random <= 600

; (chain combos)
trigger1 = ((stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Throws
; 
; Standing : 800
; Air : 810
;---------------------------------------------------------------------------

;; Standing throw
;[State -1, Throw1]
;type = ChangeState
;value = ifelse(statetype=A,850,801)
;triggerall = var(59) && RoundState = 2 && ctrl
;triggerall = statetype = S && enemynear, statetype != L && random < 200
;trigger1 = (P2BodyDist X <= 25) && enemynear, statetype != C
;
;; Air throw
;;[State -1, AirThrow1]
;;type = ChangeState
;;value = 810
;;triggerall = var(59) && RoundState = 2 && ctrl
;;triggerall = statetype = A && enemynear, statetype != L && random < 200
;;trigger1 = (P2BodyDist X <= 25) && enemynear, p2dist Y > -3

;---------------------------------------------------------------------------
; Crouching basics
; Punches: 400, 410, 420
; Kicks: 430, 440, 450
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 60 && enemynear, movetype != A && (Random <= 600&& random >400))

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl

; (chain combos)
trigger1 = (stateno = 400) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = var(59) && statetype != A && RoundState = 2

; (chain combos)
trigger1 = (stateno = 410) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl
trigger1 = (enemynear, p2dist x <= 65 && enemynear, movetype != A && (Random <= 900&& random >600))

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) && statetype = C && RoundState = 2 && ctrl  && Random <= 600

; (chain combos)
trigger1 = (stateno = 430) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = var(59) && statetype != A && RoundState = 2  && Random <= 600

; (chain combos)
trigger1 = (stateno = 440) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air basics
; Punches: 600, 610, 620
; Kicks: 630, 640, 650
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A && ctrl
trigger1 = p2dist X < 60 && (p2dist Y > -3 && p2dist Y < 3) && Random <= 600

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 630) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = stateno = 640 && (movecontact >= 1)  && Random <= 600

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 600) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) && RoundState = 2 && stateno != 100 && statetype = A

; (chain combos)
trigger1 = (stateno = 610) && (movecontact >= 1) && Random <= 600

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = var(59) && RoundState = 2 && stateno != 100
triggerall = statetype = A && ctrl

; (chain combos)
trigger1 = stateno = 620 && (movecontact >= 1)  && Random <= 600

;----------------------------------------------------------------------
; Air combo
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,630,IfElse(StateNo = 610,640,650))
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59) && StateType = A
trigger1 = (StateNo = [630,640]) && (MoveContact)
value = IfElse(StateNo = 630,610,620)


;======================================================================
;User Input Attacks

;----------------------------------------------------------------------


;---------------------------------------------------------------------------
; Hyper1
[State -1, Hyper1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "PhaseTWO"

; Hyper2
[State -1, Hyper1]
type = ChangeState
value = 3100
triggerall = power >= 1000 && numhelper(3101) = 0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "CallItIn"

; Hyper3
[State -1, Hyper1]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Shield 101"

; Hyper4
[State -1, Hyper1]
type = ChangeState
value = 3300
triggerall = power >= 1000 && numhelper(3101) = 0
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Stealth"



;---------------------------------------------------------------------------

; Special2
[State -1, Special1]
type = ChangeState
value = 1100
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Boot_a")

; Special2
[State -1, Special1]
type = ChangeState
value = 1101
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Boot_b")

; Special2
[State -1, Special1]
type = ChangeState
value = 1102
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Boot_c")

; Special1
[State -1, Special1]
type = ChangeState
value = 1000
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Phase2"

; Special1
[State -1, Special1]
type = ChangeState
value = 1500
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "AK47"

; Special1
[State -1, Special1]
type = ChangeState
value = 1510
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "Shotgun"


;Special1
[State -1, Special1]
type = ChangeState
value = 1090
triggerall = var(59)<=0 && statetype!=A && command="pistolz"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves

; Special1
[State -1, Special1]
type = ChangeState
value = 1020
triggerall = var(59)<=0 && statetype!=A && command="pistoly"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves

; Special1
[State -1, Special1]
type = ChangeState
value = 1030
triggerall = var(59)<=0 && statetype!=A && command="pistolx"
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450]) ;Cancel ground moves

[State -1, Special1]
type = ChangeState
value = 1060
;triggerall =(var(40) > 0)
triggerall = Var(59) <= 0 && statetype =A && command = "pistolz"
trigger1 = ctrl
trigger2 = (stateno = [600,650])

[State -1, Special1]
type = ChangeState
value = 1050
;triggerall =(var(40) > 0)
triggerall = Var(59) <= 0 && statetype =A && command = "pistoly"
trigger1 = ctrl
trigger2 = (stateno = [600,650])

[State -1, Special1]
type = ChangeState
value = 1040
;triggerall =(var(40) > 0)
triggerall = Var(59) <= 0 && statetype =A && command = "pistolx"
trigger1 = ctrl
trigger2 = (stateno = [600,650])

; Special1
[State -1, Special1]
type = ChangeState
value = 1200
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = command = "LMD"

; Special4
[State -1, Special1]
type = ChangeState
value = 1300
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 = (command = "Frag_x")

; Special4
[State -1, Special1]
type = ChangeState
value = 1310
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 =  (command = "Frag_y")

; Special4
[State -1, Special1]
type = ChangeState
value = 1320
triggerall = (StateType != A) && (MoveType != H) && !Var(59)
triggerall = (ctrl = 1) && (!IsHelper)
trigger1 =  (command = "Frag_z")

;---------------------------------------------------------------------------
; Standing Push Block (AKA advancing guard)
;[State -1, SPushBlock]
;type = ChangeState
;value = 750
;triggerall = command = "pushblock" && StateType = S && !Var(59)
;trigger1 = StateNo = 130
;trigger2 = StateNo = [150, 151]
;
;;---------------------------------------------------------------------------
;; Crouching Push Block
;[State -1, CPushBlock]
;type = ChangeState
;value = 752
;triggerall = command = "pushblock" && StateType = C && !Var(59)
;trigger1 = StateNo = 131
;trigger2 = StateNo = [152, 153]
;
;;---------------------------------------------------------------------------
;; Air Push Block
;[State -1, APushBlock]
;type = ChangeState
;value = 754
;triggerall = command = "pushblock" && StateType = A && !Var(59)
;trigger1 = StateNo = 132
;trigger2 = StateNo = [154, 155]


;---------------------------------------------------------------------------
;Fwd Dash
[State -1, FwdDash]
type = ChangeState
value = 100
triggerall = command != "holdback" && !Var(59)
triggerall = statetype = S ;|| statetype = A
triggerall = ctrl = 1
trigger1 = command = "FF"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
;Back Dash
[State -1, BackDash]
type = ChangeState
value = 105
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = command = "3P"

;---------------------------------------------------------------------------
; Superjump
[State -1, Superjump]
type = ChangeState
value = 700
triggerall = (StateType != A) && (Var(0) = 0) && !Var(59)
trigger1 = (command = "DU") && (Ctrl)
trigger2 = (command = "3K") && (Ctrl)
trigger3 = stateno = 420 && movehit && command="holdup"

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = S && !Var(59)
triggerall = ctrl = 1
trigger1 = command = "start"


;---------------------------------------------------------------------------
; Throws
;
; (none yet)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing basics
;
; Punches: 200, 210, 220
; Kicks: 230, 240, 250
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = (command = "x") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = (command = "y") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (StateNo = 200) && (movecontact >= 1)

;---------------------------------------------------------------------------
[State -1, throw]
type = ChangeState
value = 800
triggerall =  (p2bodydist x <= 15) && (p2bodydist y <= 10)
triggerall = (command = "z") && (command = "holdfwd") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = (command = "z") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 200) || (stateno = 210)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = (command = "a") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = (command = "b") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 230) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = (command = "c") && (statetype = S) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 220) || (stateno = 230) || (stateno = 240)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouching basics
;---------------------------------------------------------------------------
; Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 400) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Hard Punch
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 400) || (stateno = 410)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 430) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Crouch Hard Kick
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && (statetype = C) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 430) || (stateno = 440)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air basics
;---------------------------------------------------------------------------
; Air Light Punch
[State -1, Air Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air Medium Punch
[State -1, Air Medium Punch]
type = ChangeState
value = 610
triggerall = (command = "y") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 630)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Hard Punch
[State -1, Air Hard Punch]
type = ChangeState
value = 620
triggerall = (command = "z") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Light Kick
[State -1, Air Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = (stateno = 600) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Medium Kick
[State -1, Air Medium Kick]
type = ChangeState
value = 640
triggerall = (command = "b") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 630)) && (movecontact >= 1)

;---------------------------------------------------------------------------
; Air Hard Kick
[State -1, Air Hard Kick]
type = ChangeState
value = 650
triggerall = (command = "c") && (statetype = A) && !Var(59)
trigger1 = ctrl = 1

; (chain combos)
trigger2 = ((stateno = 600) || (stateno = 610) || (stateno = 620) || (stateno = 630) || (stateno = 640)) && (movecontact >= 1)

;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
