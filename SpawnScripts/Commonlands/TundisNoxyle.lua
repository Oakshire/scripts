--[[
    Script Name    : SpawnScripts/Commonlands/TundisNoxyle.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.03 09:06:10
    Script Purpose : 
                   : 
--]]

local KeyToFallenGate = 5252

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, KeyToFallenGate) == 1 then
	AddConversationOption(conversation, "I can assist you with your work here.  I come to join the Thexian loyalists in uncovering Neriak.", "Option1")
	elseif GetQuestStep(Spawn, KeyToFallenGate) == 3 then
	AddConversationOption(conversation, "I've returned with the stones to prove my worth.", "Option3")
	end	
	AddConversationOption(conversation, "I'm not interested in speaking with you either.")
	StartConversation(conversation, NPC, Spawn, "Do not interrupt what is undoubtedly the most important discovery in the past three hundred years.  Be gone, I have much work to attend to here.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle.mp3", "", "", 1179760403, 1179389139, Spawn)
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I've not come this far only to slink away.", "Option2")
	StartConversation(conversation, NPC, Spawn, "Is that so? First you must prove yourself. Strength of mind and body is required in the deep halls. The weak are worthless to us.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle001.mp3", "", "", 2912576524, 2398521485, Spawn)
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, KeyToFallenGate, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "You shall not wait long.")
	StartConversation(conversation, NPC, Spawn, "As you wish.  There are giants in this valley made from the living rock. Bring me five stones from the bodies of these creatures, and I will know that you are strong enough to be one of us.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle002.mp3", "", "", 2361598359, 1658238525, Spawn)
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, KeyToFallenGate, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I will attend... with honor...")
	StartConversation(conversation, NPC, Spawn, "So you have.  In order to become a member of the Thexian loyalists, you will need to be ordained and formally welcomed to our ranks.  You will join our group at the meeting in Freeport and receive a key to the Gate. Now, leave me to continue my research.")
	PlayFlavor(NPC, "voiceover/english/tundis_n_oxyle/commonlands/qst_tundisnoxyle003.mp3", "", "", 2372701210, 2129157187, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end