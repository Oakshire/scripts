--[[
    Script Name    : SpawnScripts/NorthQeynos/TaraIronforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.26 11:01:00
    Script Purpose : Jewelery Pickup for Taneran quest
                   : 
--]]

local Taneran = 5459

function spawn(NPC)

end

function hailed(NPC, Spawn)
    conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tara_ironforge/qey_north/taraironforge.mp3", "", "", 1778772317, 1476685213, Spawn)
	if GetQuestStep (Spawn, Taneran)==1 then
	AddConversationOption(conversation, "I'm here to pick up an order for Taneran. Here is the order form.","Order")
	end    
	AddConversationOption(conversation, "Thank you. I'll browse around.")
	StartConversation(conversation, NPC, Spawn, "Hello, friend! I've just received some fine gems from the hard-working dwarves in the village! Take a look. See if anything strikes your fancy.")
	end


function respawn(NPC)
	spawn(NPC)
end

function Order(NPC, Spawn)
    conversation = CreateConversation()
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll get it to him. Thank you.","Pickup")
	StartConversation(conversation, NPC, Spawn, "Oh! Let's look. Yes, I believe I have just what he's looking for. Take this to him. I am certain he will be pleased.")
	end
	
	function Pickup(NPC, Spawn)
    	SetStepComplete(Spawn, Taneran, 1)
    end