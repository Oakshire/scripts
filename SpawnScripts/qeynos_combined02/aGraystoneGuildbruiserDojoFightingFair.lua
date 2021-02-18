--[[
    Script Name    : SpawnScripts/qeynos_combined02/aGraystoneGuildbruiserDojoFightingFair.lua
    Script Author  : Rylec
    Script Date    : 2021.02.17 12:02:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local model = MakeRandomInt(1,4)

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
        else
            local KerraMale = MakeRandomInt(97,102)
            SetModelType(NPC, KerraMale) -- kerra male
            SpawnSet(NPC, "soga_model_type", KerraMale)
            SpawnSet(NPC, "chest_type", "5549")
            SpawnSet(NPC, "legs_type", "5550")
        end

    Hair(NPC)
    Face(NPC)

    SpawnSet(NPC, "action_state", 372)
    AddTimer(NPC, math.random(2000,5000), "EmoteLoop")
end

function Hair(NPC)  
    local Type = GetModelType(NPC)
    local HairType = 0

        if Type == 132 or Type == 134 then
            HairType = MakeRandomInt(1121,1140)
            SpawnSet(NPC, "hair_type", HairType)
        elseif Type == 110 or Type == 112 or Type == 121 or Type == 122 then
            HairType = MakeRandomInt(1133,1140)
            SpawnSet(NPC, "hair_type", HairType)
        elseif Type == 109 then
            HairType = MakeRandomInt(1135,1140)
            SpawnSet(NPC, "hair_type", HairType)
        else
            HairType = MakeRandomInt(1136,1140)
            SpawnSet(NPC, "hair_type", HairType)
        end
end

function Face(NPC)
    local Type = GetModelType(NPC)
    local FaceHairType = 0

        if Type == 134 then
            local FaceHairType = MakeRandomInt(1164,1191)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
        elseif Type == 110 then
            local FaceHairType = MakeRandomInt(1164,1170)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
        else
            local FaceHairType = MakeRandomInt(1166,1175)
            SpawnSet(NPC, "facial_hair_type", FaceHairType)
        end
end

function hailed(NPC, Spawn)
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

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_"..spawnvoice..".mp3", "", "", 0, 0, Spawn)

end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    SpawnSet(NPC, "action_state", 0)
    local choice = MakeRandomInt(1,8)

        if choice == 1 then
            PlayAnimation(NPC, 1644)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 2 then
            PlayAnimation(NPC, 1646)
            AddTimer(NPC, 2100, "Idle")
        elseif choice == 3 then
            PlayAnimation(NPC, 10783)
            AddTimer(NPC, 2050, "Idle")
        elseif choice == 4 then
            PlayAnimation(NPC, 12036)
            AddTimer(NPC, 2100, "Idle")
        elseif choice == 5 then
            PlayAnimation(NPC, 12048)
            AddTimer(NPC, 1450, "Idle")
        elseif choice == 6 then
            PlayAnimation(NPC, 12050)
            AddTimer(NPC, 1550, "Idle")
        elseif choice == 7 then
            PlayAnimation(NPC, 12054)
            AddTimer(NPC, 3400, "Idle")
        else
            PlayAnimation(NPC, 12074)
            AddTimer(NPC, 2300, "Idle")
        end
end

function Idle(NPC)
    PlayAnimation(NPC, 372) 
    SpawnSet(NPC, "action_state", 372)

    local timer = MakeRandomInt(500,2500)
    AddTimer(NPC, timer, "EmoteLoop")
end