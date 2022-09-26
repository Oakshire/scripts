--[[
    Script Name    : SpawnScripts/IsleRefuge1/statuewidget.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 12:09:22
    Script Purpose : 
                   : 
--]]

local LasydiasCall = 5756

function casted_on(NPC, Spawn, Message)
	if Message == "Read Inscription" then
      local con = CreateConversation()
		if not HasQuest(Spawn, LasydiasCall) and not HasCompletedQuest(Spawn, LasydiasCall) then
		AddConversationOption(con, "Touch the statue", "QuestOffer1")
		end
		AddConversationOption(con, "Leave the statue", "CloseConversation")
		    if not HasQuest(Spawn, LasydiasCall) and not HasCompletedQuest(Spawn, LasydiasCall) then
		    StartDialogConversation(con, 1, NPC, Spawn, "\"Lasydia - as divinely merciful as she is beautiful.  Deliverer of the drowned and caretaker of the castaway.\"  A feeling of purpose surrounds and penetrates you.  You have a sudden desire to touch the statue.")
            else
		    StartDialogConversation(con, 1, NPC, Spawn, "\"Lasydia - as divinely merciful as she is beautiful.  Deliverer of the drowned and caretaker of the castaway.\"")
            end
		end
	end


function QuestOffer1(NPC,Spawn)
      local con = CreateConversation()
		    AddConversationOption(con, "I will remove these dangers from the water", "QuestOffer2")
		    AddConversationOption(con, "Leave the statue", "CloseConversation")
		    StartDialogConversation(con, 1, NPC, Spawn, "Tourching the sunken statue of Lasydia overwhelms you with a need to help make these waters safer.")
end

function QuestOffer2(NPC,Spawn)
	OfferQuest(NPC, Spawn, LasydiasCall)
    CastSpell(Spawn, 5479)
	SendMessage(Spawn, "You are blessed by Lasydia!")
    SendPopUpMessage(Spawn, "You are blessed by Lasydia!", 200, 200, 200)    
    CloseConversation(NPC,Spawn)
--5-10 min Buff casted on player Blessing of Lasydia: Grants water-breathing to the chosen of Lasydia
--You are blessed by Lasydia!       
end

