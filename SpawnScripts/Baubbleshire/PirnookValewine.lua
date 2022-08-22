--[[
	Script Name	: SpawnScripts/Baubbleshire/PirnookValewine.lua
	Script Purpose	: Pirnook Valewine 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: Updated Dialog Module & Emotes 2022.08.21 Dorbin
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
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I just miss the Vale terribly, and I know that I'll never see it again. It'll never be as it was before, well, before I came here, anyway.")
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_001.mp3", 469707323, 1438321644)
	Dialog.AddOption("Well, it sounds like you need to talk about something.", "Dialog4")
	Dialog.AddOption("So much is lost to us all, but you're among friends now.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh! Excuse me for not recognizing your face.  I've only just arrived.  You know, this place is nice enough, but it still doesn't compare to the Vale ... Aaah, I guess I'll just have to make the best of it.")
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_000.mp3", 1161953593, 3861334059)
	Dialog.AddOption("Why the long face?", "Dialog1")
	Dialog.AddOption("Just as we all have.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I know, I know, but you haven't seen what I've seen!  You haven't heard the screams in the night!  Oh, those ghastly, horrific screams of pain and ... and merriment!  Cries of merriment in the slaughter!  It's ... it's happening now!  Right now!  They're suffering and I can't help them!  No one can help them!")
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_006.mp3", 1731561500, 3691799364)
	Dialog.AddOption("Calm down!  What's happened?!  What have you seen?", "Dialog6")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You're ... you're right, I do, but I'm hesitant. I think that if I talk about it ... if someone else knows what I've seen, then ... then it'll be real.  I don't want it to be real.")
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_002.mp3", 2224643347, 542143669)
	PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
	Dialog.AddOption("What have you seen?  It's ok, talking will make you feel better.", "Dialog5")
	Dialog.AddOption("Okay, when you're ready, you'll tell your tale.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well ... I ... I can't, I just can't describe the things I've seen. I can tell you what I feel, and what I think, I suppose.  Yes, it's better this way.  The world should know that the Vale ... well, it just might not be there anymore, at least not in the way we know it.")
	PlayFlavor(NPC, "", "", "wince", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_003.mp3", 731206016, 291679412)
	Dialog.AddOption("A lot of things have changed since the Cataclysms.  Nothing's the same anymore. ", "Dialog8")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Death and suffering!  All of them dead and suffering!  They ... they bring it!  They revel in it!  It's like wine and song to them!  They're beyond evil, and they won't stop until they reave every last bit of life from the land!")
	PlayFlavor(NPC, "", "", "cringe", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_007.mp3", 3860679298, 1354308742)
	Dialog.AddOption("Who brings death and suffering?!", "Dialog9")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Yes. It did.  Something is happening in the vale at this very moment!  It's ... it's terrible!  I just ... I just don't want to think about it!  I can't!  I'm really very sorry, but I just can't.  Not yet.  I need time, just a little time for the nightmares to go away...")
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_005.mp3", 2664299681, 2936484351)
	PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddOption("This sounds really serious.  You shouldn't hide this from the world.", "Dialog3")
	Dialog.AddOption("Alright.  You will talk when you're ready.")
	Dialog.Start()
end

function Dialog8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, I know. But you see, Rivervale and the Misty Thicket were special; they weren't harmed in the Cataclysms!  Somehow our lands survived unscathed!  It was a paradise when the rest of the world was broken and shattered.")
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_004.mp3", 493600233, 1483940215)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Something recently happened in Rivervale?", "Dialog7")
	Dialog.Start()
end

function Dialog9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Terrible, horrible things in the night.  They shriek and howl, and then they sing softly and tenderly and sooth the nightmares away.  They're here for all of us; they won't stop until they've drained all life away.  Oh no, Launa!  My sweet Launa!  She's still there!  I abandoned her!  I had to, my sweet Launa, I had to ...  you were lost to them, but I couldn't do it!  I just couldn't do it!  Oh, please forgive me...")
	PlayFlavor(NPC, "", "", "scream", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/optional1/pirnook_valewine/qey_village06/lore_pirnook_008.mp3", 3545121720, 1853628282)
	Dialog.AddOption("Pirnook?  Pirnook?")
	Dialog.Start()
end

