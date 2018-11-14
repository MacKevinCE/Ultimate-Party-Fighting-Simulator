; States file for {character} -- Hypers
;
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Hyper Attacks
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Hyper 1 = Phase Two
[StateDef 3000]
type    = S
physics = S
ctrl = 0
anim = 3000
velset = 0,0

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-80
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, Explod]
type = Explod
trigger1 =  time = 22
anim = 3333
ID = 3333
pos = 16,-3
bindtime = 200
postype = p1
removetime = 200
sprpriority = 22

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 171, 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
value = 15, 18
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
value = 15, 3
channel = 5


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
ProjID = 9876
projanim = 9876
projscale = .5,.5
projcancelanim = 1012
damage = 15,3
velocity = 16,(4 - random/125)
offset = 60,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA00
guard.sparkno = -1;s9993
hitsound = S15,21
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,0
air.velocity = -2,-2
palfx.time = 30
palfx.add = 100,100,180
palfx.mul = 256,256,256
palfx.sinadd = -80,-80,-80,10
palfx.invertall = 1
palfx.color = 5

[State 3110, back to stance]
type = removeexplod
trigger1 = time >=160
ID = 3333

[State 3110, back to stance]
type = ChangeState
trigger1 = time >= 200
value = 3001
ctrl = 0

[StateDef 3001]
type = S
movetype = A
physics = S
anim = 3001
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000, 0
volume = 255
channel = 4

[State 3110, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Hyper 2 = Call in Strike

[StateDef 3100]
type = S
movetype = A
physics = S
anim = 3100
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0
volume = 255
channel = 4

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = 195,3
volume = 255
channel = 5

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-80
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================


[State 0, Helper]
type = Helper
trigger1 = animelem = 13
helpertype = normal ;player
name = "Granade1"
ID = 3101
stateno = 3101
pos = 45,-95
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Granade
[Statedef 3101]
type = A
movetype = A
physics = A
ctrl = 0
anim = 3101
velset = 3,-8
sprpriority = 5

[State 1000, 2]
type = Projectile
trigger1 = time = 100
ProjID = 3103
projanim = 3103
projhitanim = 3104
projremanim = 3104
projcancelanim = 3104
velocity = 15,7
offset = -1100,-530
projedgebound = 2240
projstagebound = 2240
projheightbound = -2240
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 450,25
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1
hitsound = S15, 20
guardsound = S15, 20
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -12,12
air.velocity = -12,12
fall = 1
air.fall = 1
envshake.time = 51
envshake.ampl = 11

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3101
trigger1 =  movecontact > 0
trigger2 = pos y > -16
value = 3102

[State 1200, Explod]
type = Explod
triggerall = anim = 3103
trigger1 = movecontact > 0
anim = 3104
ID = 3104
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 40
removetime = 40

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = time =1
ID =  3104
pos = 0,0
bindtime = 33
vel = 0,0
accel = 0,0
random = 0,0
removetime = 33
scale = 2,2
sprpriority = 99
ontop = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 70
value = 15, 19
volume = 255
channel = 4

[State 0, VelSet]
type = VelSet
trigger1 = anim = 3102
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 3102
movetype = I
physics = N

[State 0, PosSet]
type = PosSet
trigger1 = anim = 3102
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = anim = 3102 && animelem = 1
value = 3, 1


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time > 170

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Hyper3 = Shield Training 101

[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 10,0
ctrl = 0
anim = 3200
sprpriority = 2

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-80
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = unguardable


[State 3200, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 20
y = 0

[State 3200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 16
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkno = S9992
sparkxy = 0,-96
animtype = Heavy
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2,-2
guard.velocity = -1
air.velocity = -2,-2


[State 3200, ChangeState]
type = ChangeState
trigger1 = movecontact = 1
value = 3201
ctrl = 1

[State 3200, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


[Statedef 3201]
type    = S
movetype= A
physics = N
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3201
ctrl = 0
sprpriority = 2

[State 3201, HitDef]
type = HitDef
trigger1 = animelem = 8
trigger2 = animelem = 12
trigger3 = animelem = 16
trigger4 = animelem = 24
trigger5 = animelem = 30
trigger6 = animelem = 35
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
damage = 30,7
pausetime = 4,10
sparkno = S9992
sparkxy = -10,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = -1
air.type = Low
air.hittime = 5
air.velocity = -1,0
envshake.time = 3
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 20

[State 3201, HitDef]
type = HitDef
trigger1 = animelem = 40
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
damage = 30,7
pausetime = 10,10
sparkno = S9992
sparkxy = -10,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 4
ground.velocity = -1
air.type = Low
air.hittime = 5
air.velocity = -1,6
envshake.time = 3
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 20
air.fall= 1

[State 3201, HitDef]
type = HitDef
trigger1 = animelem = 41
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
damage = 30,7
pausetime = 10,10
sparkno = S9992
sparkxy = -10,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 4
ground.hittime  = 4
ground.velocity = -1
air.type = Low
air.hittime = 5
air.velocity = 2,-8
envshake.time = 3
envshake.freq = 20
envshake.ampl = -2
envshake.phase = 20
air.fall= 1

[State 3201, End]
type = ChangeState
trigger1 = animtime = 0
value = 3202
ctrl = 1

;-------------------------------------------------------------------------------
; Wam Bam Thank you Mam!!!

[StateDef 3202]
type = A
movetype = A
physics = N
anim = 3202
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3202, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 4
y = -6

[State 3202, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 1
y = -2

[State 3202, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
damage = 36
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
ground.velocity = 2,-8
guard.velocity = -5
air.velocity = -1,-8
p1stateno = 3210
p2stateno = 3220

[State 3202, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


[Statedef 3210]
type    = S
movetype= A
physics = N
anim = 3210
poweradd = 60
sprpriority =0

[State 3210, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 3200,0
volume = 255
channel = 5

[State 3210, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 0
y = 0

[State 3210, VelSet]
type = VelSet
trigger1 = animelem = 7
x = 0
y = 6

[State 3210, VelSet]
type = VelSet
trigger1 = animelem = 9
x = -3
y = 0

[State 3210, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S8600,0

[State 3210, Bind 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50,-80
time = 6


[State 3210, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30,-90
time = 6


[State 3210, Bind 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,-100
time = 6


[State 3210, Bind 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = 10,-50
time = 6

[State 3210, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,0

[State 3210, TargetState]
type = TargetState
trigger1 = AnimElem = 7
value = 3230

[State 3211, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 3211
ID = 3211
pos = 20,73
postype = p2
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 1.25,1.25
sprpriority = -1
ownpal = 1
removeongethit = 0

[State 3211, EnvShake]
type = EnvShake
trigger1 = AnimElem=8
time = 10
freq = 100
ampl = -5
phase = 10

[State 3211, LifeAdd]
type = TargetLifeAdd
trigger1 = animelem = 8
value = -100

[State 3211, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 9992
ID = 3211
pos = 20,33
postype = p2
bindtime = 1
removetime = -2
supermovetime=9999
pausemovetime=9999
scale = 1.25,1.25
sprpriority = -1
ownpal = 1
ontop = 1

[State 3210, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -80

[State 3210, State End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

[Statedef 3220]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3220, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 3220

;---------------------------------------------------------------------------------------------
;P2
[Statedef 3230]
type    = A
movetype= H
physics = N
velset = 0,12
sprpriority = 2

[State 3230, Turn]
type = Turn
trigger1 = Vel Y > 0
trigger1 = pos Y >= 0

[State 3230, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100


;---------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Hyper 4 = Stealth Mode
[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3300
ctrl = 0
sprpriority = 2

;======================================================
;Avengers Hyper Helpers================================
;======================================================

[State 3000, AvX No BG]
type = assertspecial
trigger1 = time = 0
flag = noBG
flag2 = noFG
flag3 = nobardisplay
ignorehitpause = 1

[State 3000, AvX Super Pause]
type = SuperPause
trigger1 = time = 0
Time = 40
pos = 0,-80
sound = S8889,0
poweradd = -1000
movetime= 10

[State -2, AvX Hyper Background]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 0
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Hyper Portrait]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 0
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -2, AvX Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 0
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

;======================================================
;Avengers Hyper Helpers================================
;======================================================


[State 3300, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3301
id = 3301
pos = ifelse(TeamSide = 1, 1, 319), 240
postype = left
facing = ifelse(TeamSide = 1, 1, -1)
bindtime = -1
removetime = -2
sprpriority = 90
ignorehitpause = 1
ownpal = 1

[State 3300, sense bar]
type = Explod
trigger1 = animelem = 1
anim = 3302
id = 3302
pos = ifelse(TeamSide = 1, 48, 271), 240
postype = left
facing = 1
bindtime = -1
removetime = -2
sprpriority = 92
ignorehitpause = 1
ownpal = 1

[State 3300, VarSet]
type = VarSet
trigger1 = animelem = 17
v = 18
value = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 5
trigger4 = animelem = 7
value = 15, 16
volume = 255
channel = 4

[State 3300, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
; Stealth Mode End
[Statedef 3305]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
poweradd = 0
anim = 3305
ctrl = 0
sprpriority = 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 6
value = 15, 17
volume = 255
channel = 5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 3300, 1
volume = 255
channel = 4

[State 3305, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-------------------------------------------------------------------------
;---------------------------------------------------------------------------

;======================================================
;Avengers Hyper Helpers================================
;======================================================
[Statedef 40001]
anim = 9999

[State 40001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noBG
flag2 = noFG

[State 40001, Background]
type = Explod
trigger1 = !time
trigger2 = numexplod(15601) = 0
anim = 15600
ID = 15601
pos = 0,0
postype = left  ;p2,front,back,left,right
removetime = -1
pausemovetime = -1
supermovetime = -1
scale = 1,1
sprpriority = -9999
ownpal = 1
ignorehitpause = 1
bindtime = -1

[State 40001, Glass Break]
type = ChangeState
trigger1 = root, stateno !=[2000,2199]
trigger1 = root, stateno !=[3000,4999]
trigger1 = root, stateno !=6000
value = stateno+1

[Statedef 40002]
anim = 9999

[State 40002, RemoveExplod]
type = RemoveExplod
trigger1 = !time
id = 15601

[State 40002, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S14001,0
volume = 200

[State 40002, Glass Break]
type = Explod
triggerall = !numexplod(15640)
trigger1 = !time
anim = 15604
ID = 15640
pos = 0,0
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
scale = 1,1
sprpriority = -20
ownpal = 1
bindtime = -1
ignorehitpause = 1

[State 40002, DestroySelf]
type = DestroySelf
trigger1 = time = 1

;--AvX Portrait-----
[Statedef 40003]
anim = 9999

[State 40003, P1 BG]
type = Explod
triggerall = !numexplod(15650)
triggerall = teamside = 1
trigger1 = !time
anim = 15605
ID = 15650
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P2 BG]
type = Explod
triggerall = !numexplod(15651)
triggerall = teamside = 2
trigger1 = !time
anim = 15606
ID = 15651
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -20
ownpal = 1
ignorehitpause = 1

[State 40003, P1 PORTRAIT]
type = Explod
triggerall = !numexplod(15660)
triggerall = teamside = 1
trigger1 = !time
anim = 15607
ID = 15660
pos = 0,abs((240*var(0))-61)
postype = left
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, P2 PORTRAIT]
type = Explod
triggerall = !numexplod(15661)
triggerall = teamside = 2
trigger1 = !time
anim = 15607
ID = 15661
pos = 0,abs((240*var(0))-61)
postype = right
pausemovetime = -1
supermovetime = -1
removetime = -2
bindtime = -1
scale = 1,1
facing = -1
sprpriority = -19
ownpal = 1
ignorehitpause = 1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15650
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15650
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15650
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15650
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15650
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15651
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15651
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15651
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15651
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15651
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15660
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15660
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15660
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15660
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15660
scale = 1,1

[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 2
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 4
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 6
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 8
ID = 15661
scale = 1,1
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 56
ID = 15661
scale = 1,0.77
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 57
ID = 15661
scale = 1,0.54
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 58
ID = 15661
scale = 1,0.3
[State 40003, ModifyExplod]
type = ModifyExplod
trigger1 = time = 59
ID = 15661
scale = 1,1

[State 40003, DestroySelf]
type = DestroySelf
trigger1 = time = 60

[Statedef 40004]
anim = 9999

[State 40001, DestroySelf]
type = DestroySelf
trigger1 = time = 1


;-----------------------------------------------------------------------------






