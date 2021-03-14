--[[
    Script Name    : SpawnScripts/qeynos_combined02/avisitingtraveller.lua
    Script Author  : Rylec
    Script Date    : 2021.03.14 09:03:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(3,4)

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
        elseif model == 3 then
            SetModelType(NPC, "135") -- high elf female
            SpawnSet(NPC, "soga_model_type", "135")
            SpawnSet(NPC, "chest_type", "5521")
            SpawnSet(NPC, "legs_type", "5522")
            HighElfCosmetics(NPC)
        elseif model == 4 then
            SetModelType(NPC, "136") -- high elf male
            SpawnSet(NPC, "soga_model_type", "136")
            SpawnSet(NPC, "chest_type", "5525")
            SpawnSet(NPC, "legs_type", "5526")
            HighElfCosmetics(NPC)
        elseif model == 5 then
            SetModelType(NPC, "111") -- barbarian female
            SpawnSet(NPC, "soga_model_type", "111")
            SpawnSet(NPC, "chest_type", "5457")
            SpawnSet(NPC, "legs_type", "5458")
            BarbarianCosmetics(NPC)
        else
            SetModelType(NPC, "112") -- barbarian male
            SpawnSet(NPC, "soga_model_type", "112")
            SpawnSet(NPC, "chest_type", "5461")
            SpawnSet(NPC, "legs_type", "5462")
            BarbarianCosmetics(NPC)
        end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function HighElfCosmetics(NPC)

    local hair = MakeRandomInt(1133,1140)

        SpawnSet(NPC, "hair_type", hair)
        SpawnSet(NPC, "soga_hair_type", hair)

    local overall_look = MakeRandomInt(1,6)

        if overall_look == 1 then -- White
            SpawnSet(NPC, "skin_color", "235 243 243")
            SpawnSet(NPC, "soga_skin_color", "235 243 243") 
            SpawnSet(NPC, "eye_color", "112 168 180")
            SpawnSet(NPC, "soga_eye_color", "112 168 180") 
            SpawnSet(NPC, "hair_type_color", "247 240 227")
            SpawnSet(NPC, "soga_hair_type_color", "247 240 227") 
            SpawnSet(NPC, "hair_type_highlight_color", "14 11 9")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "14 11 9") 
        elseif overall_look == 2 then -- Light grey
            SpawnSet(NPC, "skin_color", "209 181 133")
            SpawnSet(NPC, "soga_skin_color", "209 181 133") 
            SpawnSet(NPC, "eye_color", "69 82 46")
            SpawnSet(NPC, "soga_eye_color", "69 82 46") 
            SpawnSet(NPC, "hair_type_color", "219 219 216")
            SpawnSet(NPC, "soga_hair_type_color", "219 219 216") 
            SpawnSet(NPC, "hair_type_highlight_color", "54 22 8")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "54 22 8") 
        elseif overall_look == 3 then -- Very light yellow
            SpawnSet(NPC, "skin_color", "240 249 246")
            SpawnSet(NPC, "soga_skin_color", "240 249 246") 
            SpawnSet(NPC, "eye_color", "96 160 174")
            SpawnSet(NPC, "soga_eye_color", "96 160 174") 
            SpawnSet(NPC, "hair_type_color", "214 184 120")
            SpawnSet(NPC, "soga_hair_type_color", "214 184 120") 
            SpawnSet(NPC, "hair_type_highlight_color", "65 61 27")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "65 61 27") 
        elseif overall_look == 4 then -- Light yellow
            SpawnSet(NPC, "skin_color", "255 255 255")
            SpawnSet(NPC, "soga_skin_color", "255 255 255") 
            SpawnSet(NPC, "eye_color", "58 62 34")
            SpawnSet(NPC, "soga_eye_color", "58 62 34") 
            SpawnSet(NPC, "hair_type_color", "213 215 126")
            SpawnSet(NPC, "soga_hair_type_color", "213 215 126") 
            SpawnSet(NPC, "hair_type_highlight_color", "54 32 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "54 32 1") 
        elseif overall_look == 5 then -- Bright yellow
            SpawnSet(NPC, "skin_color", "193 199 199")
            SpawnSet(NPC, "soga_skin_color", "193 199 199") 
            SpawnSet(NPC, "eye_color", "71 57 30")
            SpawnSet(NPC, "soga_eye_color", "71 57 30") 
            SpawnSet(NPC, "hair_type_color", "236 195 50")
            SpawnSet(NPC, "soga_hair_type_color", "236 195 50") 
            SpawnSet(NPC, "hair_type_highlight_color", "65 37 3")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "65 37 3") 
        else -- Dark yellow
            SpawnSet(NPC, "skin_color", "240 249 246")
            SpawnSet(NPC, "soga_skin_color", "240 249 246") 
            SpawnSet(NPC, "eye_color", "105 85 44")
            SpawnSet(NPC, "soga_eye_color", "105 85 44") 
            SpawnSet(NPC, "hair_type_color", "211 157 3")
            SpawnSet(NPC, "soga_hair_type_color", "211 157 3") 
            SpawnSet(NPC, "hair_type_highlight_color", "125 50 1")
            SpawnSet(NPC, "soga_hair_type_highlight_color", "125 50 1") 
        end
end
