--[[
	Script Name		:	ItemScripts/ParchmentScrapOutpost.lua
	Script Purpose	:	Handles the quest item "Parchment Scrap (right-click this item to Examine it)" (10317)
	Script Author	:	premierio015
	Script Date		:	18.05.2020
	Script Notes	:  
--]]


local InTheNameOfPrestige = 489

function examined(Item, Player)
local con = CreateConversation()
if HasQuest(Player, InTheNameOfPrestige) then
		if GetQuestStep(Player, InTheNameOfPrestige) == 2 then
			AddConversationOption(con, "Examine the parchment.", "Examine")
		elseif GetQuestStep(Player, InTheNameOfPrestige) == 4 then
		    AddConversationOption(con, "Put together the parchment pieces.", "PutTogether")
		elseif GetQuestStep(Player, InTheNameOfPrestige) == 7 then
			AddConversationOption(con, "Re-examine the parchment scraps.", "PieceTogether")
		end
AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
StartDialogConversation(con, 2, Item, Player, "The edges of the parchment are torn and jagged as though ripped from a much larger document.")
end
end

function Examine(Item, Player)
	SetStepComplete(Player, InTheNameOfPrestige, 2)
	local con = CreateConversation()
	
	AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
	StartDialogConversation(con, 2, Item, Player, "You can barely make out some writing on this scrap:  ''The horse sentries will ... that we...''  There is very little to go on in this note, but it's obvious the Tunarian horse sentries are involved.  You decide you will hunt them down until you retrieve more information.")
end	

	function PutTogether(Item, Player)
	local con = CreateConversation()
	
	AddConversationOption(con, "Roll the parchment up.", "RollUp")
	StartDialogConversation(con, 2, Item, Player, "You line up the parchment pieces.  The newest piece adds enough new words that you can read:  ''The horse sentries will ... that we can ... wilderbears ...''  The Tunarians are using the wilderbears for something?  They have various animal trainers.  Perhaps slaying the wilderbears will force a change in plans?")
end

function RollUp(Item, Player)
    local con = CreateConversation()
    
    AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
    StartDialogConversation(con, 2, Item, Player, "You carefully roll the parchment and stow it away.") 
    if GetQuestStep(Player, InTheNameOfPrestige) == 4 then
        SetStepComplete(Player, InTheNameOfPrestige, 4)
        RemoveItem(Player,10316)
        if not HasItem(Player, 10312, 0)  then
		SummonItem(Player, 10312, 0)
	end
        end
           end

function PieceTogether(Item, Player)
	local con = CreateConversation()

    AddConversationOption(con, "Roll the parchment up.", "RollUp")
    StartDialogConversation(con, 2, Item, Player, "There seem to be no new clues to finish off this puzzle: ''The horse sentries will ... that we can ... wilderbears ...''  What are the Tunarians doing?  And what plan do they have that would use the wilderbears?  Perhaps Charles Arker has some insight into what this all means.  You plan to visit him again and see if he has perhaps gotten any more information.")
    if GetQuestStep(Player, InTheNameOfPrestige) == 7 then
    SetStepComplete(Player, InTheNameOfPrestige, 7)
end
    end