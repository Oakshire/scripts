--[[
    Script Name    : SpawnScripts/qeynos_combined02/aTunarianscout6600081.lua
    Script Author  : Rylec
    Script Date    : 2021.03.18 05:03:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,2)

        if model == 1 then
            SetModelType(NPC, "132") -- human female
            SpawnSet(NPC, "soga_model_type", "132")
            SpawnSet(NPC, "chest_type", "5529")
            SpawnSet(NPC, "legs_type", "5530")
            HumanCosmetics(NPC)
        elseif model == 2 then
            SetModelType(NPC, "134") -- human male
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5533")
            SpawnSet(NPC, "legs_type", "5534")
            HumanCosmetics(NPC)
        end
        
    SetEquipment(NPC, 2, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function HumanCosmetics(NPC)

    local hair = MakeRandomInt(1121,1140) -- f: 1125, 1126, 1129, 1133

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local beard = MakeRandomInt(1164,1191) -- 1168, 1171
    local beard_chance = MakeRandomInt(1,100)    

        if beard_chance < 51 then
            SpawnSet(NPC, "facial_hair_type", "0")
            SpawnSet(NPC, "soga_facial_hair_type", "0")
        else
            SpawnSet(NPC, "facial_hair_type", beard)
            SpawnSet(NPC, "soga_facial_hair_type", beard)
        end

    local overall_look = MakeRandomInt(1,1)
 
        if overall_look == 1 then -- Yellow bright
            SpawnSet(NPC, "skin_color", "206 162 137")
            SpawnSet(NPC, "soga_skin_color", "206 162 137") 
            SpawnSet(NPC, "eye_color", "47 100 102")
            SpawnSet(NPC, "soga_eye_color", "47 100 102") 
            SpawnSet(NPC, "hair_type_color", "194 164 6")
            SpawnSet(NPC, "soga_hair_type_color", "194 164 6") 
            SpawnSet(NPC, "hair_face_color", "194 164 6")
            SpawnSet(NPC, "soga_hair_face_color", "194 164 6")
            SpawnSet(NPC, "hair_type_highlight_color", "188 168 37")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "188 168 37") 
            SpawnSet(NPC, "hair_face_highlight_color", "188 168 37")
            SpawnSet(NPC, "soga_hair_face_highlight_color", "188 168 37")
            SpawnSet(NPC, "hair_color1", "38 22 21")
            SpawnSet(NPC, "soga_hair_color1", "38 22 21") 
            SpawnSet(NPC, "hair_color2", "120 50 0")
            SpawnSet(NPC, "soga_hair_color2", "120 50 0") 
            SpawnSet(NPC, "hair_highlight", "29 21 28")
            SpawnSet(NPC, "soga_hair_highlight", "29 21 28") 
        end
end
