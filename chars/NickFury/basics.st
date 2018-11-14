; States file for {character} -- Basics
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: keep track of power level (for levelup sounds)
;  50: Desperation quote ("DANGER!" or whatever)
;  59: AI flag
; Helpers:
;   0: superjump opponent position indicator
; Explods:
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 170,0


[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 15,1
channel = 3

[State 175, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 175,0
channel = 4

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Preoutro

[Statedef 180]
type = S
ctrl = 0
velset = 0,0

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,200

[State 180, 2]
type = ChangeState
trigger1 = Var(1) = [0,100]
value = 181

[State 180, 2]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 182

;---------------------------------------------------------------------------
; Winposes
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 0

[State 181, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,3

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S180,0
volume = 255
channel = 5

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S180,1
volume = 255
channel = 5

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 2
trigger1 = time = 4
value = S180,2
volume = 255
channel = 5

[State 181, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 3
trigger1 = time = 4
value = S180,3
volume = 255
channel = 5

[State 181,1]
type = AssertSpecial     
trigger1 = Time = [0,170]
flag = RoundNotOver

;-------------------------------------------------------------------------------

[Statedef 182]
type = S
ctrl = 0
anim = 3300
velset = 0,0
sprpriority = 0

[State 182, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,3

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S180,4
volume = 255
channel = 5

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S180,5
volume = 255
channel = 5

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 2
trigger1 = time = 4
value = S180,6
volume = 255
channel = 5

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 3
trigger1 = time = 4
value = S180,7
volume = 255
channel = 5

[State 182,1]
type = AssertSpecial
trigger1 = Time = [0,170]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Preintro

[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,300

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [0,100]
value = 191

[State 190, 2]
type = ChangeState
trigger1 = Var(1) = [101,200]
value = 192

[State 190, 3]
type = ChangeState
trigger1 = Var(1) = [201,300]
value = 193

;---------------------------------------------------------------------------
; Introduction 1a

[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 0

[State 191, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 15,1
channel = 3

[State 191, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S190,0
volume = 255
channel = 5

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S190,1
volume = 255
channel = 5

[State 191, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;---------------------------------------------------------------------------
; Introduction 2a

[Statedef 192]
type = S
ctrl = 0
anim = 192
velset = 0,0
sprpriority = 0

[State 192, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 192, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S190,2
volume = 255
channel = 5

[State 192, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S190,5
volume = 255
channel = 5

[State 192, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;---------------------------------------------------------------------------
; Introduction 3a

[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0
sprpriority = 0

[State 181, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S190,3
volume = 255
channel = 5

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 4
value = S190,4
volume = 255
channel = 5

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro

;---------------------------------------------------------------------------
;
;Taunt
[Statedef 195]
type = S
ctrl = 0
movetype = I
physics = N
poweradd = 50
anim = 195
velset = 0,0
sprpriority = 0

[State 195, Set Random]
type = VarRandom
trigger1 = Time = 0
v = 5
range = 0,1

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 0
trigger1 = time = 4
value = S195,0
volume = 255
channel = 5

[State 195, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 1
trigger1 = time = 1
value = S195,4
volume = 255
channel = 5

[State 199]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 200]
anim = 200
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 30

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 200, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,0

[State 200, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0

[State 200, HitDef]
type = HitDef
trigger1 = time = 0; AnimElem = 1
attr = S, NA
damage = 20
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-90
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -2
air.velocity = -2,-3

[State 200, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306


[State 210, swoosh]
type = velset
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
x = 3


[State 210, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 210, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1

[State 210, HitDef]
type = HitDef
trigger1 = time = 0; AnimElem = 1
attr = S, NA
damage = 55
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-75
animtype = hard
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -15
guard.velocity = -3
air.velocity = -3,-6

[State 210, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 220, swoosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,2

[State 220, grunt]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 220, HitDef]
type = HitDef
trigger1 = time = 0; AnimElem = 1
attr = S, NA
damage = 86
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -4,-8
fall = 1
air.fall = 1

[State 220, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 25

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 20,-75
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 230, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 55
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-70
animtype = Medium
ground.type = low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 96

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 86
guardflag = MA
pausetime = 6,6
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-105
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8
fall = 1
air.fall = 1

[State 250, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 400]
anim = 400
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 30

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 400, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 400, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 400, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 400, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 55
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-40
animtype = Medium
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-99
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 0,-12
guard.velocity = -5
air.velocity = -2,-11

[State 420, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 455
ID = 455
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
;removetime = -2
;sprpriority = 2
ontop = 1
removeongethit = 1

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-60
animtype = Medium
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4,-2
guard.velocity = -2
air.velocity = -4,-6



[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 450, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = M
damage = 50
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-50
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 600]
anim = 600
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 600, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 600, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 600, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 15
guardflag = HA
pausetime = 10,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-89
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 600, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 610, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 12,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-89
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 96

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 620, grunt]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 86
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-89
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 22

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 12
guardflag = HA
pausetime = 10,8
hitsound = S2,0
guardsound = S3,0
sparkno = S9990
sparkxy = 0,-90
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 630, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 55
guardflag = HA
pausetime = 12,8
hitsound = S2,1
guardsound = S3,0
sparkno = S9991
sparkxy = 0,-69
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 92

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = var(18) = 3
trigger1 = animelem = 1
value = 3306

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 82
guardflag = HA
pausetime = 0,8
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-15
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 948
ctrl = 1


;---------------------------------------------------------------------------
;Super Jump opponent locator
[Statedef 910]
type    = A
physics = N
ctrl = 0
sprpriority = 2

[State 910, arrow]
type = ChangeAnim
trigger1 = IsHelper(0)
;trigger1 = TeamSide = 2
value = 910

[State 910, destroyself]
type = DestroySelf
triggerall = IsHelper(0)
trigger1 = RootDist Y > 0


;-----------------------
; Safe fall (from superjump, or jumping attack)
[StateDef 948]
type = A
movetype = I
physics = A
ctrl = 1

; neutral
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X = 0)
value = 48

; forwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X > 0)
value = 49

; backwards
[State 948, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = 0) && (Vel X < 0)
value = 50

 ;arremesso
 ; Hyper 1 -- Mega beam
[StateDef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, HitDef]
type = HitDef
trigger1 = animelem = 2
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 801
p2stateno = 802
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 1
fall.recover = 0
fall.damage = 80

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
sprpriority = 2

[State 801, Turn]
type = Turn
trigger1 = Animelem = 1

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 10,0

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30,-30

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 50,-30

[State 801, TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 80,-30

[State 801, TargetState]
type = TargetState
trigger1 = AnimElem = 8
value = 803

[State 801, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 4
value = -70

[State 801, Explod]
type = Explod
trigger1 =  animelem = 7
anim = 10011
ID = 10011
pos = 66,0
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = 2
removeongethit = 1

[State 801, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1011
ID = 1011
pos = 125,-82
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = -2
sprpriority = -1
removeongethit = 1

[State 801, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 15,15

[State 801, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 800,0
channel = 4

[State 801, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 802]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 802, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 802, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 802

[Statedef 803]
type    = A
movetype= H
physics = N
velset = 15,-5
poweradd = 50


[State 803, ChangeAnim]
type = ChangeAnim
trigger1 = (Time = [0,10]) && (SelfAnimExist(5060));Not if hit off ground anim
value = 5060

[State 803, ChangeAnim2]
type = ChangeAnim2
trigger1 = (Time = 0) && (!SelfAnimExist(5060));Not if hit off ground anim
value = 803

[State 803, PosAdd]
type = PosAdd
trigger1 = Time = 0
Y = 40

[State 803, VelAdd]
type = VelAdd
trigger1 = Time >= 1
Y = 0.5

[State 803, Turn]
type = Turn
trigger1 = Animelem = 2

[State 803, SelfState]
type = SelfState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 5100
ctrl = 0

;-----------------------
