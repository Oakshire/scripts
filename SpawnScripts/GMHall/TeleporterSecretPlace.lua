--[[
    Script Name    : SpawnScripts/GMHall/TeleporterSecretPlace.lua
    Script Author  : TyroneSWG
    Script Date    : 2019.01.16 01:01:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 2, "TeleporterOutBound_InRange", "TeleporterOutBound_OutRange")
end

function TeleporterOutBound_InRange(NPC, Spawn)
    SetPosition(Spawn, 569.51, 98.23, 954.06)
    SendPopUpMessage(Spawn, "Whoosh!", 244, 66, 134)
end

function TeleporterOutBound_OutRange(NPC, Spawn)

end

function respawn(NPC)
    spawn(NPC)
end

