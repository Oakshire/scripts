--[[
    Script Name    : SpawnScripts/Nettleville/DawnTross.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 07:06:06
    Script Purpose : 
                   : 
--]]


dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
SetPlayerProximityFunction(NPC, 4, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    SetTarget(NPC,Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
end

function InRange(NPC,Spawn)
GenericEcologyCallout(NPC, Spawn, faction)

end

function EmoteLoop(NPC)
         local Karrie = GetSpawn(NPC,2330021)
    if Karrie ~=nil then
    SetTarget(NPC,Karrie)
    end
    local emoteChoice = MakeRandomInt(1,4)

    if emoteChoice == 1 then
-- ponder
        PlayFlavor(NPC,"","","ponder",0,0)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    elseif emoteChoice == 3 then
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 4 then
 -- peer
        PlayAnimation(NPC, 11976)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
      end
end