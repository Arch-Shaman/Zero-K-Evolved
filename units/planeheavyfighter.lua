unitDef = {
  unitname               = [[planeheavyfighter]],
  name                   = [[Raptor]],
  description            = [[Air Superiority Fighter]],
  brakerate              = 0.4,
  buildCostMetal         = 300,
  buildPic               = [[planeheavyfighter.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[30 12 50]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 10]],
  selectionVolumeScales  = [[60 60 80]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.01,
  cruiseAlt              = 220,

  customParams           = {
    midposoffset   = [[0 3 0]],
    aimposoffset   = [[0 3 0]],
	modelradius    = [[10]],
	refuelturnradius = [[120]],

	combat_slowdown = 1.1,
	selection_scale = 1.4,
  },

  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  frontToSpeed           = 0.1,
  iconType               = [[stealthfighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxAcc                 = 0.5,
  maxDamage              = 1800,
  maxRudder              = 0.006,
  maxVelocity            = 8,
  minCloakDistance       = 75,
  mygravity              = 1,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SWIM FLOAT SUB HOVER]],
  objectName             = [[fighter2.s3o]],
  script                 = [[planeheavyfighter.lua]],
  selfDestructAs         = [[GUNSHIPEX]],
  sightDistance          = 800,
  speedToFront           = 0.5,
  turnRadius             = 80,

  weapons                = {

    {
      def                = [[CANNON]],
      badTargetCategory  = [[GUNSHIP]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 90,
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },
	{
      def                = [[AA]],
      badTargetCategory  = [[GUNSHIP]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 90,
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },


  weaponDefs             = {

   CANNON = {
			name                    = [[Chaingun]],
			alphaDecay              = 0.1,
			areaOfEffect            = 8,
			burst                   = 2,
			burstrate               = 1/60,
			colormap                = [[1 0.95 0.4 1   1 0.95 0.4 1    0 0 0 0.01    1 0.7 0.2 1]],
			craterBoost             = 0,
			craterMult              = 0,

			customParams        = {
				light_camera_height = 1200,
				light_color = [[0.8 0.76 0.38]],
				light_radius = 120,
			},

			damage                  = {
				default = 15,
				subs    = 15/8,
			},

			explosionGenerator      = [[custom:FLASHPLOSION]],
			impactOnly              = true,
			impulseBoost            = 0,
			impulseFactor           = 0.4,
			intensity               = 0.7,
			interceptedByShieldType = 1,
			noGap                   = false,
			noSelfDamage            = true,
			range                   = 900,
			reloadtime              = 1/30,
			rgbColor                = [[1 0.95 0.4]],
			separation              = 1.5,
			size                    = 1.75,
			sizeDecay               = 0,
			soundStart              = [[weapon/brrt2.wav]],
			soundStartVolume        = 0.45,
			sprayAngle              = 80,
			stages                  = 10,
			tolerance               = 5000,
			turret                  = true,
			weaponType              = [[Cannon]],
			weaponVelocity          = 900,
		},
		
		AA = {
		burst = 8,
		burstRate = 1/30,
		name                    = [[ATA Sidewinder]],
		areaOfEffect            = 96,
		avoidFriendly           = true,
		canattackground         = false,
		cegTag                  = [[missiletrailblue]],
		collideFriendly         = false,
		craterBoost             = 1,
		craterMult              = 2,
		--cylinderTargeting       = 6,

		customParams        	  = {
			burst = Shared.BURST_RELIABLE,
			isaa = [[1]],
			light_color = [[0.5 0.6 0.6]],
			reaim_time = 60, -- Fast update not required (maybe dangerous)
		},

		damage                  = {
			default = 2.5,
			planes  = 25,
			subs    = 2.5/8,
		},

		explosionGenerator      = [[custom:sonic]],
		fireStarter             = 70,
		flightTime              = 9,
		impulseBoost            = 0,
		impulseFactor           = 0.4,
		interceptedByShieldType = 2,
		metalpershot            = 0,
		model                   = [[wep_m_avalanche.s3o]],
		noSelfDamage            = true,
		range                   = 1000,
		reloadtime              = 5.2,
		smokeTrail              = true,
		soundHit                = [[weapon/missile/rocket_hit]],
		soundStart               = [[weapon/missile/sidewinder]],
		startVelocity           = 100,
		texture2                = [[AAsmoketrail]],
		tolerance               = 22000,
		tracks                  = true,
		turnRate                = 10000,
		weaponAcceleration      = 200,
		weaponType              = [[MissileLauncher]],
		weaponVelocity          = 1050,
    },
  },


  featureDefs            = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[fighter2_dead.s3o]],
    },


    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
    },

  },

}

return lowerkeys({ planeheavyfighter = unitDef })