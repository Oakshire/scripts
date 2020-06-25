--[[
	Script Name	: SpawnScripts/Castleview/BupipaGuryup.lua
	Script Purpose	: Bupipa Guryup 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericHail(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "The sounds of the swamp are sweet to hear! FROAK!  FROAK FROAK! The bugs so sweet it brings a tear! FROAK!  FROAK FROOOOAAAAKKK!  ", "orate", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Graciously accept my pardon for I am a quite the bit busy. Mayhaps I couldst speak with thee anon?", "fullcurtsey", 0, 0, Spawn)
	end
end