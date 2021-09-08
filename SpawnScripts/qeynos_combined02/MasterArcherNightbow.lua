--[[
    Script Name    : SpawnScripts/qeynos_combined02/MasterArcherNightbow.lua
    Script Author  : Rylec
    Script Date    : 2021.09.06 02:09:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "EmoteLoop")  
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1, 3)

    if choice == 1 then     
        PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_callout1_f29bf504.mp3", "Welcome to In-Range. How can I oblige you, traveler?", "", 514837561, 1511494370, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/master_archer_nightbow/qey_elddar/100_merchant_halfelf_nightbow_multhail2_8e9f4cb0.mp3", "What is it you need, traveler?", "", 4065639405, 4258763812, Spawn)  
    end
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,5)

    if emoteChoice == 1 then
-- agree
        PlayAnimation(NPC, 10745)
        AddTimer(NPC, MakeRandomInt(4000,8000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- no
        PlayAnimation(NPC, 11881)
        AddTimer(NPC, MakeRandomInt(4000,8000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- nod
        PlayAnimation(NPC, 11882)
        AddTimer(NPC, MakeRandomInt(4000,8000), "EmoteLoop")
    elseif emoteChoice == 4 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,19000), "EmoteLoop")
    else
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,10000), "EmoteLoop")	
    end
end