--[[
	Script Name	: SpawnScripts/QueensColony/Vim.lua
	Script Purpose	: Vim 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_481beac8.mp3", "I love traveling the seas... Oh! Did you need something?", "sniff", 2187888771, 2112320089)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_187fc6bb.mp3", "I am busy right now...", "no", 1835666244, 487490745)
	else
	end

end

