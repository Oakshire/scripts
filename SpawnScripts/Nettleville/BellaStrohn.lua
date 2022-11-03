--[[
    Script Name    : SpawnScripts/Nettleville/BellaStrohn.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 08:06:59
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
GenericEcologyHail(NPC,Spawn,faction)
end

function InRange(NPC,Spawn)
local Qfaction = GetFactionAmount(Spawn,11)
	if Qfaction < 0 then  
        FactionCheckingCallout(NPC, Spawn, faction)
    end
end 