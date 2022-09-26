--[[
	Script Name		: SpawnScripts/NorthQeynos/MervosStadrin.lua
	Script Purpose	: Mervos Stadrin
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
Dialog2(NPC, Spawn)
end

function Dialog1(NPC, Spawn)
	HandInCollections(Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("This is a magnificent find! Here, take this for all your hard work.")
	Dialog.AddOption("Okay, bye!")
	Dialog.Start()
    if HasCollectionsToHandIn(Spawn) then
    HandInCollections(Spawn)
    end
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello, traveler!  How I envy you.  What I wouldn't give to journey the world as I did in my youth.   Alas, I am an old man, but at least I can occupy myself with my various trinkets and collections that I picked up in my travels.")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_3_1008.mp3", 0, 0)
	Dialog.AddOption("What collections?","Dialog6")
    if HasCollectionsToHandIn(Spawn) then
	Dialog.AddOption("I have a collection for you.", "Dialog1")
    end
	Dialog.AddOption("Goodbye!")
	Dialog.Start()
end


function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Quelle magnifique trouvaille ! Tiens, prends Ã§a pour ta peine.")
	Dialog.AddOption("Ok, salut !")
	Dialog.Start()
end



function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why, any sort of collection. There's so much out there to  find! Just open your eyes and peek under the rocks.  If you find anything interesting, let me have a look. Collecting is the only way I seem to relive my youth! ")
	Dialog.AddOption("I'll keep that in mind.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Bonjour voyageur ! Comme je t'envie. Je donnerais tout pour arpenter le monde comme autrefois, quand j'Ã©tais jeune. HÃ©las, je suis dÃ©sormais un vieil homme, mais au moins, je peux m'occuper avec les nombreux bibelots et les collections que j'ai amassÃ©s au cours de mes voyages.")
	Dialog.AddVoiceover("voiceover/french/voice_emotes/greetings/greetings_1_1008.mp3", 0, 0)
	Dialog.AddOption("Quelles collections ?")
	Dialog.AddOption("J'ai une collection pour toi.", "Dialog4")
	Dialog.AddOption("Au revoir!")
	Dialog.Start()
end



