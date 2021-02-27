--[[
    Script Name    : SpawnScripts/Commonlands/CannixSilverflame.lua
    Script Author  : Premierio015
    Script Date    : 2021.02.27 10:02:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame001.mp3", "", "", 3283011934, 1161547540, Spawn)
	AddConversationOption(conversation, "Are you a guard or something?", "Option1")
	AddConversationOption(conversation, "You're excused.  ")
	StartConversation(conversation, NPC, Spawn, "Greetings to you as well, traveler.  Now if you'll excuse me, I must remain vigilant while this time is appointed unto me.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cannix_silverflame/commonlands/cannixsilverflame002.mp3", "", "", 1936975525, 2350985185, Spawn )
	AddConversationOption(conversation, "I see. I'll leave you to your thoughts. ")
	StartConversation(conversation, NPC, Spawn, "A guard? No. I suppose if I have a title, you can call me a ... a pilgrim.  Yes, just a pilgrim looking for the light of truth.  Aren't we all seeking a little truth in these turbulent times?")
end


function respawn(NPC)

end

