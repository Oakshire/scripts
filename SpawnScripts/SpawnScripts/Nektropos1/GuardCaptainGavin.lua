--[[
    Script Name    : SpawnScripts/Nektropos1/GuardCaptainGavin.lua
    Script Author  : smash
    Script Date    : 2016.09.11 12:09:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 2000, "RunIntoRoom")
end

function RunIntoRoom(NPC)
	--Open the door about a second after he starts to run
	local door = GetSpawnByLocationID(GetZone(NPC), 1439509)
	AddTimer(NPC, 1000, "OpenDoors", 1, door)
	
	--Now run into the room like a mad man
	MoveToLocation(NPC, 17.32, 13.50, -44.45, 6, "DramaticEntry")
end

function DramaticEntry(NPC)
	PlayFlavor(NPC, "voiceover/english/optional3/golem_base_1/ft/golem/golem_base_1_1_garbled_e0fead4d.mp3", "Pintoota kolata eldina mastarina", "", 0, 0, nil, 27) 
end

function OpenDoors(NPC, door)
	UseWidget(door)
end