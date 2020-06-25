--[[
    Script Name    : SpawnScripts/GMHall/TeleporterGMHall.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.16 05:01:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 2, "TeleporterBackOutBound_InRange", "TeleporterOutBackBound_OutRange")
end

function TeleporterBackOutBound_InRange(NPC, Spawn)
    SetPosition(Spawn, 698.56, -33.93, 1495.80)
    SendPopUpMessage(Spawn, "Taking you back...", 244, 66, 134)
end

function TeleporterBackOutBound_OutRange(NPC, Spawn)

end

function respawn(NPC)
    spawn(NPC)
end

