--[[
	Script Name		: SpawnScripts/SouthFreeport/BoatswainFomas.lua
	Script Purpose	: Boatswain Fomas
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/boatswain_fomas/fprt_west/100_soc_kerra_seafury_fomas_goodbye_88fcfb69.mp3", "You have done a fine job.  The officers have taken notice, and no longer consider you a bilge rat.  Speak to Marauder Kindolus when you have a moment.  He's upstairs. You'll be reporting to him from now on.  Smooth sailing, friend. You're one of us now!", "", 1411838584, 2227083440, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "What are you looking at?  This ship is for pirates and cutthroats; lily-livered landlubbers aren't allowed in here!", "", 0, 0, Spawn, 0)
	end
end