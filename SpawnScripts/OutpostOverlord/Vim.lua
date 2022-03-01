--[[
    Script Name    : SpawnScripts/OutpostOverlord/Vim.lua
    Script Author  : Cynnar
    Script Date    : 2018.10.14 09:10:43
    Script Purpose : 
                   : 
--]]

--[[
	Script Name	: SpawnScripts/OutpostoftheOverlord/Vim.lua
	Script Purpose	: Vim 
	Script Author	: Cynnar
	Script Date	: 2018.10.14
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_481beac8.mp3", "I love traveling the seas... Oh! Did you need something?", "sniff", 2187888771, 2112320089, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/merchant_vim/boat_06p_tutorial02/020_merchant_vim_hail_187fc6bb.mp3", "I am busy right now...", "no", 1835666244, 487490745, Spawn)
	else
	end

end



