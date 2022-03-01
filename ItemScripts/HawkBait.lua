--[[
	Script Name		:	ItemScripts/HawkBait.lua
	Script Purpose	:	Hawk Bait used in Preventative Maintenance Quest
	Script Author	:	Cynnar
	Script Date		:	10/15/2018
	Script Notes	:	
--]]

local Hawk_Bait = 8060
local Preventative_Maintenance = 365
local a_mole_rat = 2780089

function examined(Item, Player)
	if HasQuest(Player, Preventative_Maintenance) then
		if GetQuestStep(Player, Preventative_Maintenance) == 4 then
			conversation = CreateConversation()
			AddConversationOption(conversation, "Release the mole rat.", "ReleaseRat")
			AddConversationOption(conversation, "Let him be for now.", "LetHimBe")
			StartDialogConversation(conversation, 2, Item, Player, "This cute little guy would be perfect as bait to lure down the cliffdiver hawks.")
		end
	end
end

function ReleaseRat(Item, Player)
    CloseItemConversation(Item, Player)
	SpawnMob(GetZone(Player), a_mole_rat, false, GetX(Player), GetY(Player), GetZ(Player), GetHeading(Player))
	RemoveItem(Player, Hawk_Bait)
end

function LetHimBe(Item, Player)
    CloseItemConversation(Item, Player)
end