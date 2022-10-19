--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/inspectrockpoem.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 04:10:32
    Script Purpose : 
                   : 
--]]


local quest = 234

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "inspect" then
		local con = CreateConversation()
		AddConversationOption(con, "Read the Poem!", "ReadPoem")
		AddConversationOption(con, "Stop inspecting", "CloseConversation")
		StartDialogConversation(con, 1, NPC, Spawn, "This rock is deeply embedded into the ground. It must have been here for quite some time. There is writing etched onto the face of the rock. It looks like a poem.")
	end
end
function ReadPoem(NPC, Spawn)
	local con = CreateConversation()
	AddConversationOption(con, "continue", "Continue")
	StartDialogConversation(con, 1, NPC, Spawn, "\"An Ode to Oakmyst\" by Astar Leafsinger of the Songweavers. The beauty grown from elven gifts...Thethicket so small yet so grand...A lonsome trunk drifting amidst the clear blue...The life giver billows and feeds...")
end
function Continue(NPC, Spawn)
	OfferQuest(NPC, Spawn, quest)
	CloseConversation(NPC, Spawn)
end