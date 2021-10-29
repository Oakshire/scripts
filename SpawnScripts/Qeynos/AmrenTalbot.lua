--[[
	Script Name	: SpawnScripts/SouthQeynos/AmrenTalbot.lua
	Script Purpose	: Amren Talbot 
	Script Author	: Cynnar, premierio015
	Script Date	: 28.10.2021
	Script Notes	: dialogues for quest "A Crumpled Note"
--]]

local ACrumpledNote = 5374 -- A Crumpled Note Mages Version

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
	StartConversation(conversation, NPC, Spawn, "Focus is the key to unlocking any illusion.  The mind's eye can do many wondrous things, once it focuses.")
end


function quest_complete(NPC, Spawn)
    SetStepComplete(Spawn, ACrumpledNote, 1)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/amren_talbot/qey_south/amrentalbot002.mp3", "", "", 2532326758, 3659967005, Spawn)
    AddConversationOption(conversation, "I would appreciate it if you would.")
    StartConversation(conversation, NPC, Spawn, "An interesting find, though I doubt it bears much in the realm of truth.  Nevertheless, I shall bring this to my superior's attention.  I suppose I should grant you token for your time. Here you are.")
end    