--[[
    Script Name    : ItemScripts/asealednote.lua
    Script Author  : cynnar
    Script Date    : 2023.04.29 06:04:23
    Script Purpose : 
                   : 
--]]

local QuellingTheRebellion = 5807

function examined(Item, Player)
	conversation = CreateConversation()

	if not HasQuest(Player, QuellingTheRebellion) then
	    OfferQuest(nil, Player, QuellingTheRebellion)
	    AddConversationOption(conversation, "continue reading", "nextpage")
	    StartDialogConversation(conversation, 2, Item, Player, "Geroaufl -\nI hope this letter finds you yet alive. I have been rescued by a kind group of travelers after being left for dead by a fearsome brute. The ones who have saved me claim to be from a peaceful kingdom on one of the western isles.")
	end

end

function nextpage(Item, Player)
    conversation = CreateConversation()
    
    AddConversationOption(conversation, "put the letter back in your pocket", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "They wish to release you from your prison as well. They have begun infiltrating the city in which you are being held. I'm told their agents are already in place. J.T.S. (for he wishes his full name be kept anonymous) has begun gathering the supplies he'll need to break you free. My love, I pray to Marr that all will go as they plan and we can retire in safety to this Qeynos. - Love, Kraofla")
end