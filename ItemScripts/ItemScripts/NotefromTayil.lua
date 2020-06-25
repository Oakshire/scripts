--[[
	Script Name		:	ItemScripts/NotefromTayil.lua
	Script Purpose	:	
	Script Author	:	vo1d
	Script Date		:	10/26/2019
	Script Notes	:	
--]]

local DisruptionForDistraction = 366

function obtained(Item, Player)
end

function removed(Item, Player)
end

function destroyed(Item, Player)
end

function examined(Item, Player)
    if HasCompletedQuest(Player, DisruptionForDistraction) then
        elseif HasQuest(Player, DisruptionForDistraction) then
        else
            OfferQuest(NPC, Player, DisruptionForDistraction)
            
            local Conversation = CreateConversation()

            AddConversationOption(Conversation, "Continue reading.", "Continue_1")
            AddConversationOption(Conversation, "Put note away.")
            StartDialogConversation(Conversation, 2, Item, Player, GetName(Player) .. ", Vamir has informed me that you are serving him well. I have set aside funds for him to reward you for your service. As I told you before, loyalty and service are highly valued and will be amply rewarded. I am impressed with your work so far, and have a new mission for you.")
    end
end

function used(Item, Player)
end

function cast(Item, Player)
end

function equipped(Item, Player)
end

function unequipped(Item, Player)
end

function proc(Item, Caster, Target, Type)
end

function Continue_1(Item, Player)
    local Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Continue reading.", "Continue_2")
    AddConversationOption(Conversation, "Put note away.")
    StartDialogConversation(Conversation, 2, Item, Player, "We have discovered that the Tunarian Alliance's main source of income is from a mine in the Wilderwood. The mine is the perfect setting to employ our next strategy for conquering the island: distraction. By causing a disruption at the mine, it will allow us to flank the Qeynosians from the opposite side.")
end

function Continue_2(Item, Player)
    local Conversation = CreateConversation()
    
    AddConversationOption(Conversation, "Put note away.")
    StartDialogConversation(Conversation, 2, Item, Player, "Speak with Coercer Zlith, he has already been informed of the action you will be taking.")
end