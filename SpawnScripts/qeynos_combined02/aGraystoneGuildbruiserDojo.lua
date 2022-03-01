--[[
    Script Name    : SpawnScripts/qeynos_combined02/aGraystoneGuildbruiserDojo.lua
    Script Author  : Rylec
    Script Date    : 2021.02.17 12:02:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,10)
        if model == 1 then
            SetModelType(NPC, "132") -- human female
            SpawnSet(NPC, "soga_model_type", "132")
            SpawnSet(NPC, "chest_type", "5529")
            SpawnSet(NPC, "legs_type", "5530")
        elseif model == 2 then
            SetModelType(NPC, "134") -- human male
            SpawnSet(NPC, "soga_model_type", "134")
            SpawnSet(NPC, "chest_type", "5533")
            SpawnSet(NPC, "legs_type", "5534")
        elseif model == 3 then
            local KerraFemale = MakeRandomInt(91,96)
            SetModelType(NPC, KerraFemale) -- kerra female
            SpawnSet(NPC, "soga_model_type", KerraFemale)
            SpawnSet(NPC, "chest_type", "5545")
            SpawnSet(NPC, "legs_type", "5546")
        elseif model == 4 then
            local KerraMale = MakeRandomInt(97,102)
            SetModelType(NPC, KerraMale) -- kerra male
            SpawnSet(NPC, "soga_model_type", KerraMale)
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        elseif model == 5 then
            SetModelType(NPC, "109") -- dwarf female
            SpawnSet(NPC, "soga_model_type", "109")
            SpawnSet(NPC, "chest_type", "5473")
            SpawnSet(NPC, "legs_type", "5474")
        elseif model == 6 then
            SetModelType(NPC, "110") -- dwarf male
            SpawnSet(NPC, "soga_model_type", "110")
            SpawnSet(NPC, "chest_type", "5477")
            SpawnSet(NPC, "legs_type", "5478")
        elseif model == 7 then
            SetModelType(NPC, "122") -- gnome female
            SpawnSet(NPC, "soga_model_type", "122")
            SpawnSet(NPC, "chest_type", "5497")
            SpawnSet(NPC, "legs_type", "5498")
        elseif model == 8 then
            SetModelType(NPC, "121") -- gnome male
            SpawnSet(NPC, "soga_model_type", "121")
            SpawnSet(NPC, "chest_type", "5501")
            SpawnSet(NPC, "legs_type", "5502")
        elseif model == 9 then
            SetModelType(NPC, "111") -- barbarian female
            SpawnSet(NPC, "soga_model_type", "111")
            SpawnSet(NPC, "chest_type", "5457")
            SpawnSet(NPC, "legs_type", "5458")
        else
            local BarbarianMale = MakeRandomInt(1467,1471)
            SetModelType(NPC, "112") -- barbarian male
            SpawnSet(NPC, "soga_model_type", "112")
            SpawnSet(NPC, "chest_type", "5461")
            SpawnSet(NPC, "legs_type", "5462")
        end

    Hair(NPC)
    Face(NPC)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
end

function Hair(NPC)  
    local Type = GetModelType(NPC)
    local HairType = 0

        if Type == 132 or Type == 134 then
            HairType = MakeRandomInt(1121,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        elseif Type == 110 or Type == 112 or Type == 121 or Type == 122 then
            HairType = MakeRandomInt(1133,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        elseif Type == 109 then
            HairType = MakeRandomInt(1135,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        else
            HairType = MakeRandomInt(1136,1140)
            SpawnSet(NPC, "hair_type", HairType)
            SpawnSet(NPC, "soga_hair_type", HairType)
        end
end

function Face(NPC)
    local Type = GetModelType(NPC)
    local FaceHairType = 0

        if Type == 134 then
            local FaceHairType = MakeRandomInt(1164,1191)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
            SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)
        elseif Type == 110 then
            local FaceHairType = MakeRandomInt(1164,1170)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
            SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)
        elseif Type == 112 then
            local FaceHairType = MakeRandomInt(1185,1189)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
            SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)
        else
            local FaceHairType = MakeRandomInt(1166,1175)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
            SpawnSet(NPC, "soga_facial_hair_type", FaceHairType)
        end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)

    local type = GetModelType(NPC)
    local voice = MakeRandomInt(1,3)
    local spawnvoice = 0
    
        if type == 132 then
            spawnvoice = 1011
        elseif type == 134 then
            spawnvoice = 1054
        elseif type >= 91 and type <= 96 then
            spawnvoice = 1047
        elseif type >= 97 and type <= 102 then
            spawnvoice = 1048
        elseif type == 109 then
            spawnvoice = 1059
        elseif type == 110 then
            spawnvoice = 1004
        elseif type == 122 then
            spawnvoice = 1023
        elseif type == 121 then 
            spawnvoice = 1024
        elseif type == 111 then
            spawnvoice = 1003
        elseif type == 112 then
            spawnvoice = 1004
        end

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_"..spawnvoice..".mp3", "", "hello", 0, 0, Spawn)

end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    PlayAnimation(NPC, 11150)
    AddTimer(NPC, math.random(10000,15000), "EmoteLoop")
end
