--[[
    Script Name    : SpawnScripts/EastFreeport/RennyParvat.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 04:09:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
Dialog2(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is a decent find, I suppose. I can give you a small reward for it.")
	Dialog.AddOption("Thanks a lot.")
	Dialog.Start()
    if HasCollectionsToHandIn(Spawn) then
    HandInCollections(Spawn) 
    end
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you looking at?   Stay away from me, and keep your hands off my collections, you scumbag!")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1046.mp3", 0, 0)
	Dialog.AddOption("What collections?", "Dialog8")
    if HasCollectionsToHandIn(Spawn) then
	Dialog.AddOption("I have a collection for you.", "Dialog1")
    end
	Dialog.AddOption("Goodbye!")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What collections?  What do you mean, \"What collections?\" My collections, you fool! If you think you're going to get them from me, you're wrong!   But if you have something to donate, then maybe we can talk.")
	Dialog.AddOption("I'll just be on my way.")
	Dialog.Start()
end