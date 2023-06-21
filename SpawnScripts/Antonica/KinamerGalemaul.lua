--[[
	Script Name		:	SpawnScripts/Antonica/KinamerGalemaul.lua
	Script Purpose	:	Kinamer Galemaul
	Script Author	:	premierio015
	Script Date		:	08.05.2022
	Script Notes	:	
--]]
require "SpawnScripts/Generic/DialogModule"

local DoesTheUnderforgeExist = 5518


function spawn(NPC)
ProvidesQuest(NPC, DoesTheUnderforgeExist)
    SetInfoStructString(NPC, "action_state", "metalworking_idle")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Keep clear of the forge, my friend.  The metal is hot and my hammer swings where it will!")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul000.mp3", 165936049, 625468658)
    if CanReceiveQuest(Spawn, DoesTheUnderforgeExist) then
	Dialog.AddOption("You look like you have an interesting style of blacksmithing.", "Option1")
    elseif GetQuestStep(Spawn, DoesTheUnderforgeExist) == 2 then
	Dialog.AddOption("Kinamer, the Underforge is real!  It isn't as impressive as legend makes it, but it does exist.", "Dialog1")
    end
	Dialog.AddOption("I think I'll play it safe and stay back here.  ")
	Dialog.Start()
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye!  Some think I'm dangerous in my old age, but I get the job done.  I never retired, you know.  Blacksmithing is in my blood... I gotta work now and then, keeps me young.  Ach!  But these worthless tools ... they make me mad as a wet cat!")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul001.mp3", 2027558019, 1718672799)
    PlayFlavor(NPC, "", "", "nod", 0, 0,Spawn)
	Dialog.AddOption("What is wrong with the tools?", "Option2")
	Dialog.AddOption("I'm sorry to hear that.  I guess I should look elsewhere for my repairs.")
	Dialog.Start()
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, nothing's wrong with them, I suppose.  It's just ... they're not the beloved tools I left behind in Kaladim.  Back then, we dwarves knew how to make tools.  Not like today. If only I had a smithy like the one in that fabled Stormhold, I would never retire!")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul002.mp3", 1072576802, 3460847281)
    PlayFlavor(NPC, "", "", "no", 0, 0,Spawn)
	Dialog.AddOption("What is a smithy?", "Option3")
	Dialog.AddOption("Well, good luck with that!")
	Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Why, a smithy is the workshop of a blacksmith!  And Stormhold -- the legendary fortress of the Knights of Thunder -- had the greatest smithy outside Kaladim!  Underforge it was called.  It produced all the arms and armor, and kept the Knights' horses shod.  Say ... you've heard the rumors, haven't you?  Some rapscallion crypt raiders found Stormhold, or so everyone claims.  I put no faith in rumors, but I'd be grateful to anyone who would find out the truth for me.")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul003.mp3", 4028492463, 2669208994)
    PlayFlavor(NPC, "", "", "orate", 0, 0,Spawn)
	Dialog.AddOption("If the legend turns out to be true, I'll let you know.", "offer")
	Dialog.AddOption("If I found such a thing I certainly wouldn't tell you.  ")
	Dialog.Start()

end


function Option4(NPC, Spawn)
    SetStepComplete(Spawn, DoesTheUnderforgeExist, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It does!  The tools and anvils -- are they still within?  Oh, this makes an old dwarf very glad indeed!  Perhaps the legends are all true after all!  Thank you!  Thank you for bringing this good news to old Kinamer Galemaul!")
	Dialog.AddVoiceover("voiceover/english/kinamer_galemaul/antonica/kinamergalemaul005.mp3", 4275576159, 2433123313)
    PlayFlavor(NPC, "", "", "smile", 0, 0,Spawn)
	Dialog.AddOption("You are welcome.")
	Dialog.Start()
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DoesTheUnderforgeExist)
end






