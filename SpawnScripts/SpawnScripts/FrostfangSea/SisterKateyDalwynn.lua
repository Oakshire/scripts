--[[
	Script Name		:	SpawnScripts/FrostfangSea/SisterKateyDalwynn.lua
	Script Purpose	:	chat with Sister Katey Dalwynn
	Script Author	:	theFoof
	Script Date		:	2013.9.16
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Varig Ro's handiwork is amazin!  He outdid himself with this statue of the Loving Huntress.", "hello", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "We must continue to hold charity, truth, honor and valor within our lives, in her memory.", "hello", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "In the name or Erollisi we must not give up on love, compassion, devotion, or sacrifice.", "hello", 0, 0, Spawn)
	end
end