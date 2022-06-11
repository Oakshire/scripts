--[[
    Script Name    : SpawnScripts/QeynosHarbor/UrsellWimfell.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.10 12:06:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC,"","Aye, me and Samwell used to be friends, real good friends!  But ever since he got in that shipwreck he don't have one eye for me!  No matter what I do!","ponder",0,0,Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function EmoteLoop(NPC)
local Sam = GetSpawnLocationID(NPC,379563)
	if Sam ~= nil then 
	    SetTarget(NPC,Sam)
	end    
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 11557)
        AddTimer(NPC, MakeRandomInt(19000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12246)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 11558)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end