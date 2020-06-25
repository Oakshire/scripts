--[[
	Script Name	: ItemScripts/DisassembledStorageBox.lua
	Script Purpose	: Harvest Storage Bank Box
	Script Author	: Ememjr
	Script Date	: 2017.03.30
	Script Notes	: 
--]]



function examined(Item, Player)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Assemble the Storage box.","Unpack")
	AddConversationOption(conversation, "Put Storage Box away.")
	StartDialogConversation(conversation, 2, Item, Player, "Be sure you are near a bank as the assembled Storage Box is Heavy.")
end
function Unpack(Item, Player)
	SummonItem(Player,20731,1)
	if HasItem(Player, 22227) then
			RemoveItem(Player, 22227)
		end
	CloseItemConversation(Item,Player)
end