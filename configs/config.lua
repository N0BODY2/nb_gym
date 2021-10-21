Config = {}

Config.locale = 'en'

Languages = {
    ['cs'] = {
        ['arms_press'] = "~g~[E]~w~ Cvičit ruce",
        ['pushup_press'] = "~g~[E]~w~ Dělat kliky",
        ['situp_press'] = "~g~[E]~w~ Dělat sed lehy",
        ['yoga_press'] = "~g~[E]~w~ Cvičit yogu",
        ['chins_press'] = "~g~[E]~w~ Cvičení hrudi",
    },
    ['en'] = {
        ['arms_press'] = "~g~[E]~w~ Exercise your arms",
        ['pushup_press'] = "~g~[E]~w~ to do some pushups",
        ['situp_press'] = "~g~[E]~w~ to do some situps",
        ['yoga_press'] = "~g~[E]~w~ to do yoga",
        ['chins_press'] = "~g~[E]~w~ to do some pull ups",
    }  
}

Configy.Gyms = {
    arms = {
        Blips = {
            active = false,
            blipName = "Gym",
            sprite = 311,
            color = 7,
            scale = 0.6,
        }
        marker = {
            active = true,
            size = vector3(1.5 , 1.5 , 1.0),
            color = {r = 102, g = 102, b = 204},
            type = 1
        },
        text3d = {
            active = true,
            scale = 0.8,
            text = Languages[Config.Locale]['arms_press'],
        },
        animation = {
            type = 'world_human_muscle_free_weights',
            trainingtime = 30 -- Seconds
        },
        coords = {
            vector3(-1202.9837, -1565.1718, 4.6115),
        }
    },
    pushup = {
        Blips = {
            active = false,
            blipName = "Gym",
            sprite = 311,
            color = 7,
            scale = 0.6,
        }
        marker = {
            active = true,
            size = vector3(1.5 , 1.5 , 1.0),
            color = {r = 102, g = 102, b = 204},
            type = 1
        },
        text3d = {
            active = true,
            scale = 0.8,
            text = Languages[Config.Locale]['pushup_press'],
        },
        animation = {
            type = 'world_human_push_ups',
            trainingtime = 30 -- Seconds
        },
        coords = {
            vector3(-1203.3242,-1570.6184, 4.6115),
        }
    },
    yoga = {
        Blips = {
            active = false,
            blipName = "Gym",
            sprite = 311,
            color = 7,
            scale = 0.6,
        }
        marker = {
            active = true,
            size = vector3(1.5 , 1.5 , 1.0),
            color = {r = 102, g = 102, b = 204},
            type = 1
        },
        text3d = {
            active = true,
            scale = 0.8,
            text = Languages[Config.Locale]['yoga_press'],
        },
        animation = {
            type = 'world_human_yoga',
            trainingtime = 30 -- Seconds
        },
        coords = {
            vector3(-1204.7958, -1560.1906, 4.6115),
        }
    },
    chins = {
        Blips = {
            active = false,
            blipName = "Gym",
            sprite = 311,
            color = 7,
            scale = 0.6,
        }
        marker = {
            active = true,
            size = vector3(1.5 , 1.5 , 1.0),
            color = {r = 102, g = 102, b = 204},
            type = 1
        },
        text3d = {
            active = true,
            scale = 0.8,
            text = Languages[Config.Locale]['chins_press'],
        },
        animation = {
            type = 'prop_human_muscle_chin_ups',
            trainingtime = 30 -- Seconds
        },
        coords = {
            vector3(-1200.1284, -1570.9903, 4.6115),
        }
    },
    situps = {
        Blips = {
            active = false,
            blipName = "Gym",
            sprite = 311,
            color = 7,
            scale = 0.6,
        }
        marker = {
            active = true,
            size = vector3(1.5 , 1.5 , 1.0),
            color = {r = 102, g = 102, b = 204},
            type = 1
        },
        text3d = {
            active = true,
            scale = 0.8,
            text = Languages[Config.Locale]['situp_press'],
        },
        animation = {
            type = 'world_human_sit_ups',
            trainingtime = 30 -- Seconds
        },
        coords = {
            vector3(-1206.1055, -1565.1589, 4.6115),
        }
    }

}