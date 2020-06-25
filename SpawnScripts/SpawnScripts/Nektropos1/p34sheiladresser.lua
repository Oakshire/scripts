--[[
    Script Name    : SpawnScripts/Nektropos1/p34sheiladresser.lua
    Script Author  : smash
    Script Date    : 2016.09.09 02:09:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Try to break it open?", "SpawnSheila")
	AddConversationOption(conversation, "Leave it.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "All of the dresser drawers are locked.")
end

function SpawnSheila(NPC, Spawn)
	if GetTempVariable(NPC, "SheilaSpawned") ~= "true" then
		SetTempVariable(NPC, "SheilaSpawned", "true")
		SpawnByLocationID(GetZone(NPC), 616585)
	end
	CloseConversation(NPC, Spawn)
end