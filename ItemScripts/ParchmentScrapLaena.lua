--[[
	Script Name		:	ItemScripts/ParchmentScrapLaena.lua
	Script Purpose	:	Handles the quest item "Parchment Scrap (right-click this item to Examine it)" (10314)
	Script Author	:	premierio015
	Script Date		:	18.05.2020
	Script Notes	:  
--]]

local TheTunarianPlot = 491


function examined(Item, Player)
if not HasQuest(Player, TheTunarianPlot) and not HasCompletedQuest(Player, TheTunarianPlot) then
	OfferQuest(nil, Player, TheTunarianPlot)
end
  local con = CreateConversation()
    if HasQuest(Player, TheTunarianPlot) then
AddConversationOption(con, "Examine the parchment.", "Examine") 
   elseif GetQuestStep(Player, TheTunarianPlot) == 2 then
AddConversationOption(con, "Put together the parchment pieces.", "PutTogether")
  elseif GetQuestStep(Player, TheTunarianPlot) == 4 then
AddConversationOption(con, "Re-examine the parchment scraps.", "PieceTogether") 
  end        
AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
StartDialogConversation(con, 2, Item, Player, "The edges of the parchment are torn and jagged as though ripped from a much larger document.")
end

function PutTogether(Item, Player)
 local con = CreateConversation()
 SetStepComplete(Player, TheTunarianPlot, 2)
 AddConversationOption(con, "Roll the parchment up.", "RollUp")
 StartDialogConversation(con, 2, Item, Player, "The parchment looks familiar and you realize it's part of the same note Charles Arker had asked you to track down.  You remember the words on the other piece which, together with this one, spell the message:  ''The horse sentries will ... that we can eliminate the wilderbears ...''  Odd.  Why would the Tunarians want to eliminate the wilderbears themselves?  Perhaps its time to take down a few more Tunarians and find out what they know!")
end

function PieceTogether(Item, Player)
 SetStepComplete(Player, TheTunarianPlot, 4) 
 local con = CreateConversation()
 AddConversationOption(con, "Roll the parchment up.", "RollUp")
 StartDialogConversation(con, 2, Item, Player, "The note says: ''The horse sentries will prove difficult to avoid.  I hope  that we can eliminate the wilderbears ... Charles...''  It looks like Charles Arker has some explaining to do.  You aren't sure whether he's betraying the trust of the Overlord, or if this note indicates something much simpler.")
end

function Examine (Item, Player)
 local con = CreateConversation()
AddConversationOption(con, "Roll the parchment up.", "RollUp")
StartDialogConversation(con, 2, Item, Player, "The parchment looks familiar and you realize it's part of the same note Charles Arker had asked you to track down.  You remember the words on the other piece which, together with this one, spell the message:  ''The horse sentries will ... that we can eliminate the wilderbears ...''  Odd.  Why would the Tunarians want to eliminate the wilderbears themselves?  Perhaps its time to take down a few more Tunarians and find out what they know!")
end

function RollUp (Item, Player)
local con = CreateConversation()
AddConversationOption(con, "Put the parchment away.", "CloseItemConversation")
StartDialogConversation(con, 2, Item, Player, "You carefully roll the parchment and stow it away.")
end