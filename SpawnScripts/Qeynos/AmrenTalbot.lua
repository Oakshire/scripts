--[[
	Script Name	: SpawnScripts/SouthQeynos/AmrenTalbot.lua
	Script Purpose	: Amren Talbot 
	Script Author	: Cynnar, premierio015
	Script Date	: 28.10.2021
	Script Notes	: dialogues for quest "A Crumpled Note" and "Spellbook Fragments" (2022.02.22 - Dorbin)
--]]

local ACrumpledNote = 5374 -- A Crumpled Note Mages Version
local spellbookFrags = 5485

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/amren_talbot/qey_south/amrentalbot000.mp3", "", "", 186833269, 2706325328, Spawn)
		AddConversationOption(conversation, "I'm not one for thinking about illusions.")
		if HasQuest(Spawn, ACrumpledNote) then
	AddConversationOption(conversation, "I found this note, I think the mages here at the towers could decipher it.", "quest_complete")
	end
	if HasQuest(Spawn, spellbookFrags) then
	AddConversationOption(conversation, "I found this fragment of what appears to be a spell book. It came from the old mage tower in the forest ruins.", "quest_complete2")
end

	StartConversation(conversation, NPC, Spawn, "Focus is the key to unlocking any illusion.  The mind's eye can do many wondrous things, once it focuses.")
end

function quest_complete2(NPC, Spawn)

    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/amren_talbot/qey_south/amrentalbot001.mp3", "", "", 3750992893, 2423832468, Spawn)
    AddConversationOption(conversation, "Thank you.","Reward2")
    StartConversation(conversation, NPC, Spawn, "Have you? Let me take a look at that... Yes, this is what we are looking for! Allow me to defray any expenses you a incurred finding this piece. Here you are.")
end    

function Reward2 (NPC,Spawn)
    SetStepComplete(Spawn, spellbookFrags, 1)
  end  

function Reward1 (NPC,Spawn)
    SetStepComplete(Spawn, spellbookFrags, 1)
  end  

function quest_complete(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/amren_talbot/qey_south/amrentalbot002.mp3", "", "ponder", 2532326758, 3659967005, Spawn)
    AddConversationOption(conversation, "I would appreciate it if you would.","Reward1")
    StartConversation(conversation, NPC, Spawn, "An interesting find, though I doubt it bears much in the realm of truth.  Nevertheless, I shall bring this to my superior's attention.  I suppose I should grant you token for your time. Here you are.")
end    