unitDef = {
  unitname               = [[armcom_head]],
  name                   = [[Strike Commander (Ejected)]],
  description            = [[Ejected commander.]],
  acceleration           = 0.18,
  activateWhenBuilt      = true,
  autoHeal               = 20,
  brakeRate              = 0.4,
  buildCostMetal         = 1200,
  buildDistance          = 90,
  builder                = true,

  buildoptions           = {
  },

  buildPic               = [[armcom.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[GUNSHIP]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[45 50 45]],
  collisionVolumeType    = [[CylY]],
  corpse                 = [[DEAD]],
  cruiseAlt = 110,
  collide = true,

  customParams           = {
	level = [[0]],
	statsname = [[dynstrike1]],
	soundok = [[heavy_bot_move]],
	soundselect = [[bot_select]],
	soundbuild = [[builder_start]],
	commtype = [[1]],
	--decorationicons = {chest = "friendly", shoulders = "arrows-dot"},
    aimposoffset   = [[0 5 0]],
  },

  energyMake             = 6,
  energyStorage          = 500,
  energyUse              = 0,
  explodeAs              = [[ESTOR_BUILDINGEX]],
  footprintX             = 1,
  footprintZ             = 1,
  iconType               = [[commander1]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  --leaveTracks            = true,
  losEmitHeight          = 40,
  maxDamage              = 2500,
  maxSlope               = 36,
  maxVelocity            = 3.9,
  maxWaterDepth          = 5000,
  metalMake              = 4,
  metalStorage           = 500,
  minCloakDistance       = 75,
  noChaseCategory        = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName             = [[ARMCOM]],
  script                 = [[armcom_bodyless.lua]],
  selfDestructAs         = [[ESTOR_BUILDINGEX]],

  sfxtypes               = {

    explosiongenerators = {
    	[[custom:BEAMWEAPON_MUZZLE_BLUE]],
		[[custom:NONE]],
    },

  },

  showNanoSpray          = false,
  showPlayerName         = true,
  sightDistance          = 800,
  sonarDistance          = 800,
  --trackOffset            = 0,
  --trackStrength          = 8,
 -- trackStretch           = 1,
 -- trackType              = [[ComTrack]],
  trackWidth             = 26,
  turnRate               = 1148,
  upright                = true,
  workerTime             = 10,

  weapons                = {

    [1] = {
      def                = [[FAKELASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    [5] = {
      def                = [[AA_LASER]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    FAKELASER     = {
      name                    = [[Fake Laser]],
      areaOfEffect            = 12,
      beamTime                = 0.1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0,
        subs    = 0,
      },

      duration                = 0.11,
      edgeEffectiveness       = 0.99,
      explosionGenerator      = [[custom:flash1green]],
      fireStarter             = 70,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 5.53,
      minIntensity            = 1,
      range                   = 300,
      reloadtime              = 0.11,
      rgbColor                = [[0 1 0]],
      soundStart              = [[weapon/laser/laser_burn5]],
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 5.53,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 900,
    },


   AA_LASER      = {
      name                    = [[Anti-Air Laser]],
      areaOfEffect            = 12,
      beamDecay               = 0.736,
      beamTime                = 1/30,
      beamttl                 = 15,
      canattackground         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		light_color = [[0.2 1.2 1.2]],
		light_radius = 120,
	  },

      damage                  = {
        default = 2.84,
        planes  = 28.4,
        subs    = 1,
      },

      explosionGenerator      = [[custom:flash_teal7]],
      fireStarter             = 100,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      laserFlareSize          = 3.25,
      minIntensity            = 1,
      range                   = 700,
      reloadtime              = 0.3,
      rgbColor                = [[0 1 1]],
      soundStart              = [[weapon/laser/rapid_laser]],
      soundStartVolume        = 4,
      thickness               = 2.3,
      tolerance               = 8192,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 2200,
    },

  },


  featureDefs            = {

    DEAD      = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[armcom1_dead.s3o]],
    },

    HEAP      = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },


  },

}

return lowerkeys({ armcom_head = unitDef })