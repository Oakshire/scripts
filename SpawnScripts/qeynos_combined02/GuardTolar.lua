--[[
    Script Name    : SpawnScripts/qeynos_combined02/GuardTolar.lua
    Script Author  : Rylec
    Script Date    : 2021.10.05 01:10:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 15, "InRange")
    SpawnCanineWatcher(NPC)
    AddTimer(NPC, 3000, "EmoteLoop")
end

function SpawnCanineWatcher(NPC)
   	if GetSpawnLocationID(NPC) == 133772661 then
        SpawnByLocationID(GetZone(NPC), 133772662)
    else
        SpawnByLocationID(GetZone(NPC), 133772659)
    end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local choice = MakeRandomInt(1,4)

    if choice == 1 then     
        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 2268064933, 2349331472, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 174236481, 4250389478, Spawn)  
    elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 2588751132, 3401521310, Spawn)  
    else
        PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/guard/barbarian_guard_service_good_1_hail_gm_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 3650321797, 745843450, Spawn) 
    end
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC) -- Removes any companion canine watcher in case a player just kills the guard so the respawned guard doesn't spawn a second watcher
    AddTimer(NPC, 200000, "ResetCanineWatcher", 1, Spawn)
end

function ResetCanineWatcher(NPC)
    local zone = GetZone(NPC)
    local canine1 = GetSpawnByLocationID(zone, 133772659) 
    local canine2 = GetSpawnByLocationID(zone, 133772662)     

    if canine1 ~= nil then
        Despawn(canine1)
    end
    
    if canine2 ~= nil then
        Despawn(canine2)
    end    
end

function EmoteLoop(NPC)
    local choice = MakeRandomInt(1,2)

        if choice == 1 then
                PlayAnimation(NPC, 891)
        else
                PlayAnimation(NPC, 13008)
        end

    local time = MakeRandomInt(30000,40000)         
    AddTimer(NPC, time, "EmoteLoop")
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayAnimation(NPC, 12167, Spawn)	
--	Emote(NPC, "salutes you.", Spawn)
end