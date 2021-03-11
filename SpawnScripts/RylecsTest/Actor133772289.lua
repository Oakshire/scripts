--[[
    Script Name    : SpawnScripts/RylecsTest/Actor133772289.lua
    Script Author  : Rylec
    Script Date    : 2021.03.10 05:03:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "name", "Rigilie")
    SetModelType(NPC, "107") 
    SpawnSet(NPC, "soga_model_type", "107")
    SpawnSet(NPC, "chest_type", "5513")
    SpawnSet(NPC, "legs_type", "5514")
    SpawnSet(NPC, "hair_type", "1134")
    SpawnSet(NPC, "soga_hair_type", "1134")
    SpawnSet(NPC, "skin_color", "240 242 214")
    SpawnSet(NPC, "soga_skin_color", "240 242 214") 
    SpawnSet(NPC, "eye_color", "143 189 203")
    SpawnSet(NPC, "soga_eye_color", "143 189 203") 
    SpawnSet(NPC, "hair_type_color", "97 67 9")
    SpawnSet(NPC, "soga_hair_type_color", "97 67 9") 
    SpawnSet(NPC, "hair_type_highlight_color", "233 184 31")
    SpawnSet(NPC, "soga_hair_type_highlight_color", "233 184 31") 
    SpawnSet(NPC, "hair_color1", "56 33 26")
    SpawnSet(NPC, "soga_hair_color1", "56 33 26") 
    SpawnSet(NPC, "hair_color2", "94 59 11")
    SpawnSet(NPC, "soga_hair_color2", "94 59 11") 
    SpawnSet(NPC, "hair_highlight", "246 219 114")
    SpawnSet(NPC, "soga_hair_highlight", "246 219 114")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end
