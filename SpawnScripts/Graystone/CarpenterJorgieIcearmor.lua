--[[
	Script Name	: SpawnScripts/Graystone/CarpenterJorgieIcearmor.lua
	Script Purpose	: Carpenter Jorgie Icearmor 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"
local Priest1 = 5772

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A good day's work is the measure of worth!")
	Dialog.AddVoiceover("voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor000.mp3", 2791551387, 1030675041)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    if HasQuest(Spawn,Priest1) and GetQuestStepProgress(Spawn,Priest1,2)==0 and GetQuestStep(Spawn,Priest1) <=2 then
    Dialog.AddOption("I understand you're not feeling well.", "Priest")
    end           
	Dialog.AddOption("I fully agree.  I'll let you get back to work!")
	Dialog.AddOption("No, I think it's just you.  I'll let you get back to what you're doing.")
	Dialog.Start()
end

 function Priest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Harr! Does all of Qeynos know about it?! You tell one friend you've got a bad case of the ... the wind, and soon the whole city is a-buzz!  Best keep yer distance, friend.")
	Dialog.AddVoiceover("voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor001.mp3", 4288259113, 2466627591)
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
	Dialog.AddOption("I see.  When did you start noticing this problem?","Priesta")
	Dialog.AddOption("Is THAT what that smell is? I must be going...")
	Dialog.Start()
end	

 function Priesta(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, earlier today.  Hmm ... now that you mention it the vapors started a little after I'd eaten that hunk of brisket I'd been saving.")
	Dialog.AddVoiceover("voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor002.mp3", 683432825, 959372110)
    PlayFlavor(NPC, "", "", "gutcramp", 0, 0, Spawn)
	Dialog.AddOption("A hunk of brisket?  How old was it?","Priestb")
	Dialog.Start()
end	

 function Priestb(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The missus cooked up this brisket that was so darned good; I wanted to keep a slab for special occasions.  So, I stashed it 'round back where the cats and rats couldn't get at it.  I suppose that was ... oh ... two months, three months ago.")
	Dialog.AddVoiceover("voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor003.mp3", 1074806250, 332386423)
    PlayFlavor(NPC, "", "", "confused", 0, 0, Spawn)
	Dialog.AddOption("You ate three-month-old meat?!","Priestc")
	Dialog.AddOption("...you need more help than I can offer. Good bye.")
	Dialog.Start()
end	

 function Priestc(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Aye, it was a bit gamey.  Maybe I shoulda cured it or cooked it first. I thought it was all right -- better than most days at the pub. But now I've a terrible pain in my gut, and my face is roasting hot.")
	Dialog.AddVoiceover("voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor004.mp3", 4032914528, 185062024)
    PlayFlavor(NPC, "", "", "gutcramp", 0, 0, Spawn)
	Dialog.AddOption("You have food poisoning!  Let me heal you!","Priestd")
	Dialog.AddOption("You're going to die, and I can't help you! Gods! What did I do to deserve this test?!")
	Dialog.Start()
end	

 function Priestd(NPC, Spawn)
    SetStepComplete(Spawn,Priest1,2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ho now, I feel better already!  Next time, I won't eat any brisket older than a month, 'less it's been properly salted.  An' I'll pick out the maggots first.  You're a temple healer, yes?  Good work!  Good work!  I'll be sure to give a little something extra to the temple this week.  Maybe a hefty slab of meat!")
	Dialog.AddVoiceover("voiceover/english/carpenter_jorgie_icearmor/qey_harbor/jorgieicearmor005.mp3", 1129428515, 388268360)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
	Dialog.AddOption("Blessings be upon ... Oh, I'm gonna be sick!")
	Dialog.Start()
	ApplySpellVisual(NPC,58)
	CastSpell(Spawn,53)	
end	