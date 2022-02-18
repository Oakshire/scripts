--[[
	Script Name	: SpawnScripts/Baubbleshire/YolaSindlefop.lua
	Script Purpose	: Yola Sindlefop 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]
local YolaPicnic = 5442

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    if  GetQuestStep(Spawn, YolaPicnic) == 1 then
    AddConversationOption(conversation, "Here is your food order!", "HandOver")
    end
	PlayFlavor(NPC, "voiceover/english/yola_sindlefop/qey_village06/yolasindlefop000.mp3", "", "", 2042293032, 669099653, Spawn)
	AddConversationOption(conversation, "Sorry to hear that.")
	StartConversation(conversation, NPC, Spawn, "Hello there!  Isn't this a lovely spot?  It's not the vale, but I was too young to really remember much when we left anyway.")
end

function HandOver(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    SetStepComplete(Spawn, YolaPicnic, 1)
	PlayFlavor(NPC, "voiceover/english/yola_sindlefop/qey_village06/yolasindlefop001.mp3", "", "thank", 3230142409, 154316341, Spawn)
	AddConversationOption(conversation, "Enjoy.")
	StartConversation(conversation, NPC, Spawn, "Oh I'm so glad he didn't forget. That Bregun, he's always doing the right thing at the right time. And thank you for delievering it! I'm starving.")
end

