--[[
    Script Name    : SpawnScripts/QeynosHarbor/SirAidanGodard.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.28 05:10:55
    Script Purpose : 
                   : 
- -]]

local ACrumpledNote = 5375 -- A Crumpled Note Warriors Version quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/sir_aidan_godard/qey_harbor/siraidangodard000.mp3", "", "", 3029735688, 33892878, Spawn)
	if HasQuest(Spawn, ACrumpledNote) then
   	 AddConversationOption(conversation, "I think you should see this note I recovered from the catacombs.", "quest_complete")
   	 end
	 AddConversationOption(conversation, "Thanks for the information.")
	  StartConversation(conversation, NPC, Spawn, "Before you stands the Hall of Steel.  Within these walls is the birthplace of the Steel Warriors, the greatest fighters in all of Norrath.")
end

function quest_complete(NPC, Spawn)
    SetStepComplete(Spawn, ACrumpledNote, 1)
	conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/sir_aidan_godard/qey_harbor/siraidangodard001.mp3", "", "", 3964717986, 1813107488, Spawn)
   AddConversationOption(conversation, "Thank you, I hope this was of service to Qeynos.")
   StartConversation(conversation, NPC, Spawn, "Let me take a look at that ... hmm, thank you very much.  I'll make sure my superiors see this; they'll be quite interested.  Here, allow me to reward you for your troubles.")	 
end



function respawn(NPC)
	spawn(NPC)
end