--[[
	Script Name	: SpawnScripts/FrostfangSea/SisterLeelaPrendyn.lua
	Script Purpose	: Sister Leela Prendyn <Sisterhood of Erollisi>
	Script Author	: theFoof
	Script Date	: 2013.09.16
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "", "I miss Tearfall whenever I must be away, but this place soothes my soul.", "agree", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "The Loving Huntress will never be forgotten.", "no", 0, 0, Spawn)
	end

end