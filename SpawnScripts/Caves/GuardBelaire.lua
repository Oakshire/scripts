--[[
	Script Name	: SpawnScripts/Caves/GuardBelaire.lua
	Script Purpose	: Guard Belaire <Guard>
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
    if GetFactionID(Spawn) ==1 then 
        Attack(NPC,Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericGuardHail(NPC, Spawn)
end