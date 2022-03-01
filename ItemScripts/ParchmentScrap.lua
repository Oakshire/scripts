--[[
	Script Name		:	ItemScripts/ParchmentScrap.lua
	Script Purpose	:	Handles the quest item "Parchment Scrap (right-click this item to Examine it)" (10317)
	Script Author	:	Jabantiz
	Script Date		:	9/8/2016
	Script Notes	:	Updated May 9th 2020.  Parchment Scrap 10313 was duplicating due to lack of HasItem check (when continuously examining)
--]]

local Tainted = 183

function examined(Item, Player)
	local con = CreateConversation()

	if HasQuest(Player, Tainted) then
		if GetQuestStep(Player, Tainted) == 2 then
			AddConversationOption(con, "Examine the parchment.", "Examine")
		elseif GetQuestStep(Player, Tainted) == 4 then
			if HasItem(Player, 10313, 0) == false then
		 	   SummonItem(Player, 10313, 0)
			end
			AddConversationOption(con, "Put together the parchment pieces.", "PutTogether")
		elseif GetQuestStep(Player, Tainted) == 7 then
			AddConversationOption(con, "Piece together the parchment.", "PieceTogether")
		end
	end
	
	AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, "The edges of the parchment are torn and jagged as though ripped from a much larger document.")
end

function Examine(Item, Player)
	SetStepComplete(Player, Tainted, 2)
	
	local con = CreateConversation();
	
	AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, 'You can barely make out some writing on this scrap: "The toxic crawlers will be useful to cover our ... the totem ..." The reference to a totem is puzzling. Why would someone want a totem covered in spiders? There must be more pieces of this parchment amongst the toxic crawlers.')
end

function PutTogether(Item, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "Roll the parchment up.", "RollUp")
	StartDialogConversation(con, 2, Item, Player, "You line up the parchment pieces. The newest piece adds enough new words that you can read: ''The toxic crawlers will be useful to cover our tracks. Leave the totem in the eastern rocks...'' Apparently Deianeira's concern about the spiders is well-placed, though not for the reasons she thinks. I must find more of this parchment to learn what this totem means.")
end

function RollUp(Item, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, "You carefully roll the parchment and stow it away.")
	
	if GetQuestStep(Player, Tainted) == 4 then
		SetStepComplete(Player, Tainted, 4)
	elseif GetQuestStep(Player, Tainted) == 7 then
	    RemoveItem(Player, 10315)
		SetStepComplete(Player, Tainted, 7)
	end
end

function PieceTogether(Item, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "Roll the parchment up.", "RollUp")
	StartDialogConversation(con, 2, Item, Player, "The last bit of parchment was caught on the web near the large pile of rocks. You piece it together and read: ''The toxic crawlers will be useful to cover our tracks. Leave the totem in the eastern rocks beneath Direspike.'' Direspike must be a tainted spider with greater power. You realize you may have to flush him from his lair by picking off the nearby spiders until he appears to meet your challenge.")	
end