--[[
    Script Name    : SpawnScripts/QeynosHarbor/EngineerFezzlbop.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11 05:06:11
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
    AddTimer(NPC, 5000, "EmoteLoop")    
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end
    
 function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
 --       PlayAnimation(NPC, 12030)
    PlayFlavor(NPC,"","","ponder",0,0)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayFlavor(NPC,"","","agree",0,0)
        --PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
     PlayFlavor(NPC,"","","peer",0,0)
     -- PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end   
    