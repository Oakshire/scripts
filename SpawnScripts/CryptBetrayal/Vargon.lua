--[[
    Script Name    : SpawnScripts/CryptBetrayal/Vargon.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.15 09:10:54
    Script Purpose : 
                   : 
--]]

local VegalysKeldranesBetrayal = 5371

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, VegalysKeldranesBetrayal) == 3 then
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/vargon/qey_catacomb03/vargon_dialog000.mp3", "", "", 3528951812, 2056718447, Spawn)
	AddConversationOption(conversation, "Who are you?", "Option1")
	AddConversationOption(conversation, "I do not meddle with the dead.")
	StartConversation(conversation, NPC, Spawn, "Why am I still held fast to this world?")
	else
    PlayFlavor(NPC, "", "", "hail", 0, 0, Spawn)
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vargon/qey_catacomb03/vargon_dialog001.mp3", "", "", 1613823909, 2977955044, Spawn)
	AddConversationOption(conversation, "I come on behalf of Vegalys Keldrane.", "Option2")
	AddConversationOption(conversation, "I have no time for this.")
	StartConversation(conversation, NPC, Spawn, "I do not remember my name.  Everything is clouded and obscure.  I must flee! But I cannot! I'm trapped, trapped like a rat in a cage! Why are you here?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vargon/qey_catacomb03/vargon_dialog002.mp3", "", "", 3132700924, 423286763, Spawn)
	AddConversationOption(conversation, "You do not remember anything?", "Option3")
		AddConversationOption(conversation, "I have no time for the forgetful dead.")
	StartConversation(conversation, NPC, Spawn, "Keldrane? Keldrane? The name fills me with dread and loathing, though I do not know why.  If you are his minion, leave me alone! I wish only for rest and I find none here.  Why am I still held fast to this world?")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vargon/qey_catacomb03/vargon_dialog003.mp3", "", "", 3545783772, 3182148974, Spawn)
	AddConversationOption(conversation, "Did you betray Keldrane during the war?", "Option4")
	AddConversationOption(conversation, "As you wish.")
	StartConversation(conversation, NPC, Spawn, "What's to remember?  Keldrane? Only a name now.  All one brings to the world of the dead are one's emotions and thoughts.  And I ... I'm left with only emotions.  Unhappiness.  Sorrow.  Betrayal.  Why do these feelings haunt me? Go, now, I do not want to feel any longer!")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, VegalysKeldranesBetrayal, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/vargon/qey_catacomb03/vargon_dialog004.mp3", "", "", 2965459867, 1393077638, Spawn)
	AddConversationOption(conversation, "I will leave now.  May you find peace.")
	StartConversation(conversation, NPC, Spawn, "No! Keldrane means nothing to me.  All that is left is pain.  And despair.")
end






function respawn(NPC)
	spawn(NPC)
end