--[[
    Script Name    : SpawnScripts/Antonica/KnightMorteWinghammer.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 12:05:15
    Script Purpose : 
                   : 
--]]
local LordGrimrotsScythe = 5522

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/knight_morte_winghammer/antonica/quests/firemyst/morte_winghammer000.mp3", "", "", 427855541, 2221169308, Spawn)
	 if GetQuestStep(Spawn, LordGrimrotsScythe) == 3 then
	AddConversationOption(conversation, "You're...in the dwarven brigade?  But...you're a human!  I mean, Ignar sent me.", "Option1")
	end
		AddConversationOption(conversation, "Glad to brighten your day.  Just passing through.")
	StartConversation(conversation, NPC, Spawn, "Hello!  It's such a pleasure to talk to someone else for a change!  What brings you this way from the big city, eh?")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/knight_morte_winghammer/antonica/quests/firemyst/morte_winghammer001.mp3", "", "", 457217351, 2761152415, Spawn)
	AddConversationOption(conversation, "I suppose so.  I'm here to pick up your report.", "Option2")
	AddConversationOption(conversation, "I'll be back later.")
	StartConversation(conversation, NPC, Spawn, "Did he? Ignar's such a good  person, you know. He stuck up for me when I joined the dwarven brigade, even though the other dwarves were a bit down on the idea.  Frankly, all I want out of this is a chance to learn some good blacksmithing.  That's what I really want to do, be a blacksmith.  I can't help but meet the right sort of folk for that in a dwarven unit, can I?  It's an absolutely brilliant idea, isn't it?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/knight_morte_winghammer/antonica/quests/firemyst/morte_winghammer002.mp3", "", "", 324436321, 1708126787, Spawn)
		AddConversationOption(conversation, "Do you have your report ready?", "Option3")
	AddConversationOption(conversation, "I'll be back later.  Sounds like this might take a while.")
	StartConversation(conversation, NPC, Spawn, "There are probably some good human blacksmiths, too, but I want to learn from the best of the best! I'm tickled that they consider me one of their own now!  Mostly.  The only downside is that I'm not meeting many women this way, but oh, well!  Once I start my own smithy, I'll be a hot man around town.  Get it? Ha!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayAnimation(NPC, 12030) -- ponder
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/knight_morte_winghammer/antonica/quests/firemyst/morte_winghammer003.mp3", "", "", 2960742057, 217719766, Spawn)
	AddConversationOption(conversation, "I think Ignar's waiting on your report, soldier.", "Option4")
	AddConversationOption(conversation, "Yep, this will take a while.  I'll be back.")
	StartConversation(conversation, NPC, Spawn, "Still, I can't decide whether they're just humoring me or not.  I get a lot of, \"How's the weather up there?\" and \"Good day to be a dwarf, Longshanks!\"  I have yet to meet any blacksmiths, either.  Maybe I've made a mistake after all ... d'you think?")
end

function Option4(NPC, Spawn)
    SetStepComplete(Spawn, LordGrimrotsScythe, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/knight_morte_winghammer/antonica/quests/firemyst/morte_winghammer004.mp3", "", "", 3382872987, 887284875, Spawn)
	AddConversationOption(conversation, "I've got to let Ignar know.  Uh, thanks!")
	StartConversation(conversation, NPC, Spawn, "Oh, right! My report!  Supposedly, someone's found Lord Grimrot's war scythe and is trying to raise him from the dead using its power.  Isn't it the oddest thing you ever heard?  Who'd want to bring back a dead guy who LOST a war?  I mean, if you're going to go through the trouble of bringing back the dead, go get one of the WINNERS, eh?  What?  You're leaving already?")
end

function respawn(NPC)
	spawn(NPC)
end