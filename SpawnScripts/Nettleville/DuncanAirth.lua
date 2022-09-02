--[[
    Script Name    : SpawnScripts/Nettleville/DuncanAirth.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 12:06:19
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/GenericEcologyVoiceOvers.lua")

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
    Target(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    GenericEcologyHail(NPC, Spawn, faction)
    SetTarget(NPC,Spawn)
end

function InRange(NPC,Spawn)
    GenericEcologyCallout(NPC, Spawn, faction)
    end
    
    function Target(NPC)
    local Karrie = GetSpawn(NPC,2330021)
    if Karrie ~=nil then
    SetTarget(NPC,Karrie)
    end
    end