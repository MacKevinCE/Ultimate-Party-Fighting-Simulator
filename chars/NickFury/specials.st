; States file for {character} -- Specials
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
; Special Attacks
; 
; Special 1 (QCF + P) -- state 1000
;   beam
;---------------------------------------------------------------------------

;------------------------------
; Special 1
[StateDef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 =  animelem = 5
anim = 3333
ID = 3333
pos = 16,-3
bindtime = -1
postype = p1  ;p2,front,back,left,right
removetime = 10
sprpriority = 22

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
value = 15, 18
channel = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
value = 15, 3
channel = 5

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
ProjID = 9876
projanim = 9876
projscale = .5,.5
projcancelanim = 1012
velocity = 16,(4 - random/125)
offset = 60,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 19,4
pausetime = 4,4
sparkno = -1
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

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

;------------------------------
; Special AK47
[StateDef 1500]
type = S
movetype = A
physics = S
anim = 1500
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
anim = 1011
ID = 1011
pos = 65,-62
bindtime = -1
postype = p1
removetime = -2
sprpriority = -1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 13
channel = 3
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = 15, 3
channel = 5

[State 1500, 2]
type = Projectile
trigger1 = AnimElem = 5
trigger2 = AnimElem = 7
trigger3 = AnimElem = 9
trigger4 = AnimElem = 11
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 15,-0.25 +(random/500)
offset = 60,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 9,4
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,15
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7,0
air.velocity = -7,-2

[State 1500, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

;------------------------------
; Special Shotgun
[StateDef 1510]
type = S
movetype = A
physics = S
anim = 1510
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1022
ID = 1022
pos = 28,-64
bindtime = -1
postype = p1
scale = 1,1.5
removetime = -2
sprpriority = 99
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 11
channel = 3
volume = 255

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 14
channel = 5
volume = 255

[State 1510, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 12,-2.25 +(random/500)
offset = 20,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 9,4
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,15
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7,0
air.velocity = -7,-2

[State 1510, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 11,-1.25 +(random/500)
offset = 20,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 9,4
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,15
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7,0
air.velocity = -7,-2

[State 1510, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 13,-0.125 +(random/500)
offset = 20,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 9,4
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,15
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7,0
air.velocity = -7,-2

[State 1510, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 11,1.25 +(random/500)
offset = 20,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 9,4
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,15
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7,0
air.velocity = -7,-2

[State 1510, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 12,2.25 +(random/500)
offset = 20,-65
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = hard
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 9,4
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,15
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -7,0
air.velocity = -7,-2

[State 1510, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------

; Special 1
[StateDef 1020]
type = S
movetype = A
physics = S
anim = 1020
ctrl = 0
velset = 0,0

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 15,1
channel = 3

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 15,8
channel = 5

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 3
anim = 1011
ID = 1011
pos = 89,-87
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 15,0.5 -(random/500)
offset = 85,-84
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 85,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 5
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1020, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1030]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1030

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 15,1
channel = 3

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 15,8
channel = 5

 [State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 5
anim = 1011
ID = 1011
pos = 97,-65
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 15,-0.25 +(random/500)
offset = 97,-65
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 45,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1040]
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 1040

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 15,1
channel = 3

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 15,8
channel = 5

[State 1000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1023
ID = 1023
pos = 69,-93
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1008
projanim = 1008
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 15,10
offset = 67,-85
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = low
priority = 4,Hit
damage = 55,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1
hitsound = S15,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 948
ctrl = 1


[Statedef 1050]
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 1050

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 15,1
channel = 3

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 15,8
channel = 5

[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1011
ID = 1011
pos = 71,-112
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1001
projanim = 1001
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 15,2
offset = 69,-110
attr = S,SP
hitflag = MAF
guardflag = MA
animtype = low
priority = 4,Hit
damage = 55,5
pausetime = 4,4
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50; 948
ctrl = 1


[Statedef 1060]
type = A
movetype = A
physics = A
juggle  = 4
ctrl = 0
anim = 1060


[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 15,1
channel = 3

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 15,8
channel = 5


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1021
ID = 1021
pos = 65,-143
postype = p1
bindtime = 999
removetime = -2
sprpriority = 15
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1006
projanim = 1006
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
velocity = 12,-6
offset = 57,-145
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 55,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50 ;948
ctrl = 1

[Statedef 1090]
type    = C
movetype= A
physics = C
juggle  = 4
velset = 0,0
ctrl = 0
anim = 1090


[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 15,1
channel = 3

[State 10002, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 15,8
channel = 5


[State 3000, superportrait]
type = Explod
trigger1 = AnimElem = 4
anim = 1021
ID = 1021
pos = 70,-126
postype = p1
bindtime = 999
removetime = -2
sprpriority = 5
ownpal = 1
removeongethit = 1


[State 1000, 2]
type = Projectile
trigger1 = AnimElem = 4
ProjID = 1006
projanim = 1006
projhitanim = 1012
projremanim = 1012
projcancelanim = 1012
projedgebound = 40
projstagebound = 40
projheightbound = -540
velocity = 12,-9
offset = 70, -126
; HitDef
attr = S,SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = low
priority = 4,Hit   ;Hit,Miss,Dodge
damage = 65,5
pausetime = 4,4
;postype = P2
sparkno = -1
guard.sparkno = -1;s9993
hitsound = S15,7
guardsound = S3,0
ground.type = Low
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -4,2
air.velocity = -4,2
fall = 1
air.fall = 1

[State 1090, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = S, NA
damage = 25,2
guardflag = MA
pausetime = 1,1
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
air.fall = 1
fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------


;light boot camp

[StateDef 1100]
type = A
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = movehit
value = 1100, 0
volume = 255
channel = 4

[State 1100, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1112
postype = p1
pos = -5,5
ignorehitpause = 1
sprpriority = -2
bindtime = -1
removetime = 14

[State 1100, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1112
postype = p1
pos = -10,10
ignorehitpause = 1
sprpriority = -2
bindtime = -1
removetime = 7

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 2
trigger2 =  animelem = 3
value = 0, 2


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 3
y = -1

[State 0, VelSet]
type = Velset
trigger1 = movehit
x = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 3
y = -1

[State 1100, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
damage = 55,5
guardflag = MA
pausetime = 6,10
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -40,-100
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-8
guard.velocity = 5
air.velocity = -2,-10
air.fall = 1
fall = 1

[State 1000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50;948
ctrl = 1


; med boot camp

[StateDef 1101]
type = A
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = movehit
value = 1100, 0
volume = 255
channel = 4

[State 1100, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1112
postype = p1
pos = -5,5
ignorehitpause = 1
sprpriority = -2
bindtime = -1
removetime = 14

[State 1100, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1112
postype = p1
pos = -10,10
ignorehitpause = 1
sprpriority = -2
bindtime = -1
removetime = 7


[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 2
trigger2 =  animelem = 3
value = 0, 2


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 5
y = -2

[State 0, VelSet]
type = Velset
trigger1 = movehit
x = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 3
y = -1

[State 1101, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
damage = 66,6
guardflag = MA
pausetime = 4,7
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -40,-100
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-8
guard.velocity = 5
air.velocity = -2,-10
air.fall = 1
fall = 1

[State 1101, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50;948
ctrl = 1

; heavy boot camp

[StateDef 1102]
type = A
movetype = A
physics = N
anim = 1100
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = movehit
value = 1100, 0
volume = 255
channel = 4


[State 1102, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1112
postype = p1
pos = -5,5
ignorehitpause = 1
sprpriority = -2
bindtime = -1
removetime = 14

[State 1102, Explod]
type = Explod
trigger1 = animelem = 3
anim = 1112
postype = p1
pos = -10,10
ignorehitpause = 1
sprpriority = -2
bindtime = -1
removetime = 7


[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 2
trigger2 =  animelem = 3
value = 0, 2


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 3

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 3
y = -3

[State 0, VelSet]
type = Velset
trigger1 = movehit
x = -1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 6
x = 3
y = -2

[State 1102, HitDef]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
damage = 77,7
guardflag = MA
pausetime = 2,4
hitsound = S2,2
guardsound = S3,0
sparkno = S9991
sparkxy = -40,-100
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = 2,-8
guard.velocity = 5
air.velocity = -2,-10
air.fall = 1
fall = 1

[State 1102, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 50;948
ctrl = 1

;---------------------------------------------------------------------------
;Life Model Decoy

[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1999
sprpriority = 2

[State 1200, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 1201
p2stateno = 7696
guard.dist = 0
fall.xvelocity = 0
fall.yvelocity = 0
fall = 1
fall.recover = 0
fall.damage = 80

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S15,21
volume = 255
channel = 4

[State 1200, back to stance]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1201]
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 2

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S195,1
volume = 255
channel = 3

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 5
trigger3 = animelem = 8
value = S195,1
volume = 255
channel = 5

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 9
value = S195,2
volume = 255
channel = 3

[State 1200, FX]
type = AfterImage
trigger1 = AnimElem >= 1
time = 10
length = 28
PalBright = 0, 0, 0
PalContrast = 100, 170, 200
PalAdd = 0, 0, 0
FrameGap = 4
Trans = add

[State 1200, 1]
type = AfterImageTime
trigger1 = Time >= 0
time = 15

[State 1200, 4]
type = VelSet
trigger1 = animelem = 9
x = 0

[State 1200, Explod]
type = Explod
trigger1 = animelem = 9
anim = 1201
ID = 1200
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 6
removetime = 140
sprpriority = 99

[State 1203, Explod]
type = Explod
trigger1 = animelem = 10
triggerall = facing = 1
anim = 1202
ID = 1203
pos = -40,0
postype = p2
P2facing = -1
facing = -1
bindtime = 1
removetime = 44
sprpriority = 98

[State 1203, Explod]
type = Explod
trigger1 = animelem = 10
triggerall = facing = -1
anim = 1202
ID = 1203
pos = -40,0
postype = p2
p2facing = 1
facing = 1
bindtime = 1
removetime = 44
sprpriority = 98

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 10
value = 15, 16
volume = 255
channel = 5

[State 1200, End]
type = ChangeState
trigger1 = animtime = 0
value = 1203
ctrl = 1

;------------------------------------------
; Electrocution
[Statedef 7696]
type = S
movetype= U
physics = N
anim = 7696
velset = 0,0

[State 7696, color]
type = palFX
trigger1 = time != 0
add = 10,75,105
mul = 160, 118, 220
sinadd = 1,10,5,10
invertall = 1
color = 156
time = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = timemod = 7,1
value = S15,21
volume = 255
channel = 4

[State 7696, SelfState]
type = SelfState
trigger1 = time = 20
trigger1 = Pos Y > -1
value = 5070
ctrl = 1

[State 7696, End]
type = ChangeState
trigger1 = time = 150
trigger1 = Pos Y < 0
value = 76961

;-------------------------------------------------------------

[Statedef 76961]
type    = S
movetype= H
physics = N
velset = 0,2
ctrl = 0
anim = 7696

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = timemod = 14,1
value = S15,21
volume = 255
channel = 4

[State 7696, 0]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 7696, 1]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 7696, 2]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 7696, 3]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1

;-------------------------------------------------------------------------------


;----------------------------------------
[Statedef 1203]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 1203

[State 1203, RemoveExplod]
type = RemoveExplod
trigger1 = time = 100
id = 1201

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 7
value = S1200,0
volume = 255
channel = 3

[State 1203, 1]
type = turn
trigger1 = 1
persistent = 0

[State 1203, 2]
type = VelSet
trigger1 = 1
x = 0

[State 1203, 3]
type = PosAdd
trigger1 = time = 0
x = (P2Dist X) - 40;0
y = 0

[State 1203, 5]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Hard
damage    = 40,5
priority  = 6
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkxy = 0,0
sparkno = s7700
hitsound = 5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 24
ground.hittime  = 30
ground.velocity = -24,0
air.velocity = -24,-3
p2facing = 1
air.fall = 1
fall = 1

[State 1200, End]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1203, End]
type = ChangeState
trigger1 = time >= 20
trigger1 = movecontact && animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------



; Special 1
[StateDef 1300]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 4
value = 0, 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 1300,0
volume = 255
channel = 5

[State 0, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "Granade1"
ID = 1301
stateno = 1301
pos = 35,-110
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
[Statedef 1301]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1301
velset = 2,-8


[State 200, HitDef]
type = HitDef
trigger1 = anim = 1301
attr = A,SP
damage = 80,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = -1;s7770
sparkxy = 0, 25
guard.sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
air.type = Low
air.hittime = 15
air.velocity = -8,0
envshake.time = 1
envshake.ampl = 1
fall = 1
air.fall = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1301
trigger1 =  movecontact > 0
trigger2 = pos y > -16
value = 1302

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1302
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1302
movetype = I

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 1302
value = S15,14

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1302 && animtime = 0


; Special 1
[StateDef 1310]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 4
value = 0, 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 1300,0
volume = 255
channel = 5

[State 0, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "Granade1"
ID = 1311
stateno = 1311
pos = 35,-110
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
[Statedef 1311]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1301
velset = 4,-6


[State 200, HitDef]
type = HitDef
trigger1 = anim = 1301
attr = A,SP
damage = 80,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = -1;s7770
sparkxy = 0, 25
guard.sparkno = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
air.type = Low
air.hittime = 15
air.velocity = -8,0
envshake.time = 1
envshake.ampl = 1
fall = 1
air.fall = 1


[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1301
trigger1 =  movecontact > 0
trigger2 = pos y > -16
value = 1302

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1302
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1302
movetype = I

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 1302
value = S15,14

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1302 && animtime = 0

; Special 1
[StateDef 1320]
type = S
movetype = A
physics = S
anim = 1300
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 =  animelem = 4
value = 0, 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem =1
value = 1300,0
volume = 255
channel = 5

[State 0, Helper]
type = Helper
trigger1 = animelem = 7
helpertype = normal ;player
name = "Granade1"
ID = 1321
stateno = 1321
pos = 35,-110
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
[Statedef 1321]
type = A
movetype = A
physics = A
ctrl = 0
anim = 1301
velset = 6,-4


[State 200, HitDef]
type = HitDef
trigger1 = anim = 1301
attr = A,SP
damage = 80,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,5
sparkno = -1;s7770
sparkxy = 0, 25
guard.sparkno = -1
hitsound =-1
guardsound = -1
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
air.type = Low
air.hittime = 15
air.velocity = -8,0
envshake.time = 1
envshake.ampl = 1
fall = 1
air.fall = 1



[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1301
trigger1 =  movecontact > 0
trigger2 = pos y > -16
value = 1302

[State 0, VelSet]
type = VelSet
trigger1 = anim = 1302
x = 0
y = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = anim = 1302
movetype = I

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1 && anim = 1302
value = S15,14

[State 0, DestroySelf]
type = DestroySelf
trigger1 = frontedgebodydist <= -15
trigger2 = anim = 1302 && animtime = 0

;;;;;;;;;;;;

;---------------------------------------------------------------------------
; Finish Hit Explod
[Statedef 8900]
type = S
movetype = I
physics = N
anim = 8930

;[State 8900, 1]
;type = Pause
;trigger1 = (!Time)
;time = 12
;movetime = 12

[State 8900, 1]
type = EnvShake
trigger1 = (!Time)
time = 12
freq = 120;10
ampl = -3;2
phase = 90

[State 8900, 2]
type = Explod
triggerall = (NumExplod(8900) < 1)
trigger1 = Time = 0
persistent = 0
anim = 8900
ID = 8900
postype = left
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
bindtime = -1
ontop = 1
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, 3]
type = PlaySnd
trigger1 = (NumExplod(8900) != 0)
value = 30, 0
persistent = 0
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

[State 8900, done]
type = DestroySelf
trigger1 = RoundState = 4
