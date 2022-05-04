--[[
	Script Name		: SpawnScripts/SouthFreeport/MarauderKindolus.lua
	Script Purpose	: Marauder Kindolus
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
		PlayFlavor(NPC, "", "Well, it seems you've been deemed worthy of trade in our organization.  My congratulations to you and your crew.  You need to speak to Corsair G`Kex over there.  You can't miss him -- he'll be the one standing upon the deck of a large vessel in port.  Good hunting! Until we meet again, friend...", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "What filth is this before me?  I've a schedule to keep and no time to associate with common trash.", "", 0, 0, Spawn, 0)
	end
	end