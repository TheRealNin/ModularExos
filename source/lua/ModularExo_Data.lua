//Script.Load("lua/ModularExo_Balance.lua")

-- The categories of modules
kExoModuleCategories = enum{
    "PowerSupply",
    "Weapon",
    "Armor",
    "Damage",
    "Utility",
}
-- The slots that modules go in
kExoModuleSlots = enum{
    "PowerSupply",
    "RightArm",
    "LeftArm",
    "Armor",
    "Damage",
    "Utility",
}

-- Slot data
kExoModuleSlotsData = {
    [kExoModuleSlots.PowerSupply] = {
        category = kExoModuleCategories.PowerSupply,
        required = true,
    },
    [kExoModuleSlots.LeftArm] = {
        category = kExoModuleCategories.Weapon,
        required = true,
    },
    [kExoModuleSlots.RightArm] = {
        category = kExoModuleCategories.Weapon,
        required = true,
    },
    [kExoModuleSlots.Armor] = {
        category = kExoModuleCategories.Armor,
        required = false,
    },
    [kExoModuleSlots.Damage] = {
        category = kExoModuleCategories.Damage,
        required = false,
    },
    [kExoModuleSlots.Utility] = {
        category = kExoModuleCategories.Utility,
        required = false,
    },
}

-- Module types
kExoModuleTypes = enum{
    "None",
    "Power1",
    "Power2",
    "Power3",
    "Power4",
    "Power5",
    "Power6",
    "Claw",
    "Welder",
    "Shield",
	"Railgun",
    "Minigun",
    "Flamethrower",
    "Armor1",
    "Armor2",
    "Armor3",
    "Damage1",
    "Damage2",
    "Damage3",
    "Thrusters",
    "PhaseModule",
}

-- Information to decide which model to use for weapon combos
kExoArmTypes = enum{
    "Claw",
    "Minigun",
    "Railgun",
}

-- Module type data
kExoModuleTypesData = {
    -- Power modules
    [kExoModuleTypes.Power1] = {
        category = kExoModuleCategories.PowerSupply,
        powerSupply = 20,
        resourceCost = 0,
        weight = 0,
		levels = 1,
		requiredTechId = Exo.PowerTech1,
    },
   /* [kExoModuleTypes.Power2] = {
        category = kExoModuleCategories.PowerSupply,
        powerSupply = 25,
        resourceCost = 45,
        weight = 0,
		levels = 1,
		requiredTechId = Exo.PowerTech2,

    },
    [kExoModuleTypes.Power3] = {
        category = kExoModuleCategories.PowerSupply,
        powerSupply = 40,
        resourceCost = 60,
        weight = 0,
		levels = 1,
		requiredTechId = Exo.PowerTech3,
    },
    [kExoModuleTypes.Power4] = {
        category = kExoModuleCategories.PowerSupply,
        powerSupply = 40,
        resourceCost = 60,
        weight = 0,
		levels = 1,
		requiredTechId = Exo.ModularExoAntimatterTech,
		
    },
    [kExoModuleTypes.Power5] = {
        category = kExoModuleCategories.PowerSupply,
        powerSupply = 50,
        resourceCost = 70,
        weight = 0,
    },
	[kExoModuleTypes.Power6] = {
        category = kExoModuleCategories.PowerSupply,
        powerSupply = 60,
        resourceCost = 80,
        weight = 0,
    },*/
    
    -- Weapon modules
	[kExoModuleTypes.Claw] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 10,
        mapName = Claw.kMapName,
        armType = kExoArmTypes.Claw,
        weight = 0.01,
    },
    [kExoModuleTypes.Welder] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 20,
        mapName = ExoWelder.kMapName,
        armType = kExoArmTypes.Railgun,
        weight = 0.04,
		requiredTechId = Exo.ExoWelderTech
    }, 
	[kExoModuleTypes.Railgun] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 25,
        mapName = Railgun.kMapName,
        armType = kExoArmTypes.Railgun,
        weight = 0.08,
		requiredTechId = Exo.RailgunTech
    },
	[kExoModuleTypes.Minigun] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 30,
        mapName = Minigun.kMapName,
        armType = kExoArmTypes.Minigun,
        weight = 0.11,
		requiredTechId = Exo.MinigunTech
    }, 
	[kExoModuleTypes.Railgun] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 25,
        mapName = Railgun.kMapName,
        armType = kExoArmTypes.Railgun,
        weight = 0.08,
		requiredTechId = Exo.RailgunTech
    },
    [kExoModuleTypes.Flamethrower] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 35,
        mapName = ExoFlamer.kMapName,
        armType = kExoArmTypes.Railgun,
        weight = 0.14,
		requiredTechId = Exo.ExoFlamerTech
    },
  /*[kExoModuleTypes.Shield] = {
        category = kExoModuleCategories.Weapon,
        powerCost = 0,
		resourceCost = 30,
        mapName = ExoShield.kMapName,
        armType = kExoArmTypes.Claw,
        weight = 0.08,
		requiredTechId = Exo.ExoShieldTech
    },  */
    
    -- Armor modules
/*
    [kExoModuleTypes.Armor2] = {
        category = kExoModuleCategories.Armor,
        powerCost = 10,
        armorBonus = 200,
        weight = 0.10,
    },
	[kExoModuleTypes.Armor3] = {
        category = kExoModuleCategories.Armor,
        powerCost = 15,
        armorBonus = 300,
        weight = 0.15,
    },*/
    
    -- Damage modules (unused)
    [kExoModuleTypes.Damage1] = {
        category = kExoModuleCategories.Damage,
        powerCost = 3,
        damageScale = 1.1,
        weight = 0,
    },
	[kExoModuleTypes.Damage2] = {
        category = kExoModuleCategories.Damage,
        powerCost = 3,
        damageScale = 1.1,
        weight = 0,
    },
	[kExoModuleTypes.Damage3] = {
        category = kExoModuleCategories.Damage,
        powerCost = 3,
        damageScale = 1.1,
        weight = 0,
    },
    
    -- Utility modules
    [kExoModuleTypes.Thrusters] = {
        category = kExoModuleCategories.Utility,
        powerCost = 0,
		resourceCost = 10,
        weight = 0.03,
		requiredTechId = Exo.ThrusterModuleTech
	
    },
    [kExoModuleTypes.PhaseModule] = {
        category = kExoModuleCategories.Utility,
        powerCost = 0,
		resourceCost = 10,
        //mapName = ExoScanner.kMapName,
        weight = 0.08,
		requiredTechId = Exo.PhaseModuleTech

    },
	    [kExoModuleTypes.Armor1] = {
        category = kExoModuleCategories.Utility,
        powerCost = 0,
		resourceCost = 10,
        armorBonus = 150,
        weight = 0.18,
		requiredTechId = Exo.ArmorModuleTech

    },

    
    [kExoModuleTypes.None] = { },
}

-- Model data for weapon combos (data[rightArmType][leftArmType])
kExoWeaponRightLeftComboModels = {
    [kExoArmTypes.Minigun] = {
        isValid = true,
        [kExoArmTypes.Minigun] = {
            isValid = true,
            worldModel = "models/marine/exosuit/exosuit_mm.model",
            worldAnimGraph  = "models/marine/exosuit/exosuit_mm.animation_graph",
            viewModel  = "models/marine/exosuit/exosuit_mm_view.model",
			viewAnimGraph = "models/marine/exosuit/exosuit_mm_view.animation_graph",
        },
        [kExoArmTypes.Railgun] = {
            isValid = false,
        },
        [kExoArmTypes.Claw] = {
            isValid = true,
            worldModel = "models/marine/exosuit/exosuit_cm.model",
            worldAnimGraph  = "models/marine/exosuit/exosuit_cm.animation_graph",
            viewModel  = "models/marine/exosuit/exosuit_cm_view.model",
			viewAnimGraph   = "models/marine/exosuit/exosuit_cm_view.animation_graph",
        },
    },
    [kExoArmTypes.Railgun] = {
        isValid = true,
        [kExoArmTypes.Minigun] = {
            isValid = false,
        },
        [kExoArmTypes.Railgun] = {
            isValid = true,
		    worldModel = "models/marine/exosuit/exosuit_rr.model",
            worldAnimGraph  = "models/marine/exosuit/exosuit_rr.animation_graph",
            viewModel  = "models/marine/exosuit/exosuit_rr_view.model",
			viewAnimGraph   = "models/marine/exosuit/exosuit_rr_view.animation_graph",
        },
        [kExoArmTypes.Claw] = {
            isValid = true,
            worldModel = "models/marine/exosuit/exosuit_cr.model",
            worldAnimGraph  = "models/marine/exosuit/exosuit_cr.animation_graph",
            viewModel  = "models/marine/exosuit/exosuit_cr_view.model",
			viewAnimGraph   = "models/marine/exosuit/exosuit_cr_view.animation_graph",
        },
    },
    [kExoArmTypes.Claw] = {
        isValid = false,

        [kExoArmTypes.Minigun] = {
            isValid = false,
        },
        [kExoArmTypes.Railgun] = {
            isValid = false,
        },
        [kExoArmTypes.Claw] = {
            isValid =false,
            worldModel = "models/marine/exosuit/exosuit_cm.model",
            worldAnimGraph  = "models/marine/exosuit/exosuit_cm.animation_graph",
            viewModel  = "models/marine/exosuit/exosuit_cm_view.model",
			viewAnimGraph   = "models/marine/exosuit/exosuit_cm_view.animation_graph",
        },
    },
}
