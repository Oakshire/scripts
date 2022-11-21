--[[
	Script Name		:	SoldierPellenos.lua
	Script Purpose	:	Soldier Pellenos
	Script Author	:	Dorbin
	Script Date		:	08/29/2019
	Script Notes	:	
--]]

require "SpawnScripts/Generic/DialogModule"
local Quest2 = 5773

function spawn(NPC)
SpawnSet(NPC,"mood_state",11851)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hello there!  Come for tea?  I'm sorry, but I'm completely out of sugar!  Ask the gnolls; they killed everyone here.  Yes, everyone ... but me.  And now I don't know where the teapot is.  But there's no sugar, so it doesn't matter.  Hee hee!")
	Dialog.AddVoiceover("voiceover/english/soldier_pellenos/antonica/soldierpellenos000.mp3", 1163216661, 1374396993)
    if not HasQuest(Spawn,Quest2)then
	Dialog.AddOption("Err okay.  Goodbye.")
	elseif GetQuestStep(Spawn,Quest2)>=3 and GetQuestStep(Spawn,Quest2)<=5 then
	Dialog.AddOption("Are you all right?","Dialog1")
    end
	Dialog.Start()
end

 --   SetStepComplete(NPC,Quest2,4)
    
function Dialog1(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Perhaps.  Although I might be all left!  Yes, I'm the only one left.  So I can't be right, after all, can I?")
	Dialog.AddVoiceover("voiceover/english/soldier_pellenos/antonica/soldierpellenos001.mp3", 3557389573, 3806634312)
    PlayFlavor(NPC,"","","crazy",0,0,Spawn)
	Dialog.AddOption("[continue]","Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh dear.  Why is there blood on my forehead?  Where's our commander?  Where's the cook?  Where is everyone!  Why am I the only one who lived?  I shouldn't be alive!")
	Dialog.AddVoiceover("voiceover/english/soldier_pellenos/antonica/soldierpellenos002.mp3", 1526924525, 878736968)
    PlayFlavor(NPC,"","","doh",0,0,Spawn)
	Dialog.AddOption("*Call upon the spirits to heal the madness the young soldier suffers*","Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh my.  Who are you?  When did you arrive?  My eyes are playing tricks on me.  Is that you, Papa?  Oh, Papa!  I saw some bad things today, Papa!  I didn't die with the rest of 'em.")
	Dialog.AddVoiceover("voiceover/english/soldier_pellenos/antonica/soldierpellenos003.mp3", 2378022983, 3720942230)
    PlayFlavor(NPC,"","","doubletake",0,0,Spawn)
	Dialog.AddOption("I'm not your Papa, young man.  I am a healer, and you've been badly wounded.","Dialog4")
	Dialog.Start()
    ApplySpellVisual(NPC,58)
    CastSpell(Spawn,52)
end

function Dialog4(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("No no!  No wounds here!  I'm a strong boy, I am!  Yes, Papa, I'll pull myself together.  I can hear you clearly.")
	Dialog.AddVoiceover("voiceover/english/soldier_pellenos/antonica/soldierpellenos004.mp3", 313471122, 2661378922)
    PlayFlavor(NPC,"","","heckno",0,0,Spawn)
	Dialog.AddOption("I hope my healing prayer works quickly.  You're really losing it.","Dialog5")
	Dialog.Start()
    ApplySpellVisual(NPC,58)
    CastSpell(Spawn,52)
end

function Dialog5(NPC, Spawn)
    FaceTarget(NPC,Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Uh ... what was I just raving about?  Thank you, stranger.  I ... I lost myself for a moment.  But I'm getting better.  This wound is not serious, but I must return to Qeynos and inform them about the gnoll attack.  Um ... you are the one who healed me, aren\'t you?  Thank you.")
	Dialog.AddVoiceover("voiceover/english/soldier_pellenos/antonica/soldierpellenos005.mp3", 3396914222, 3656653380)
    PlayFlavor(NPC,"","","confused",0,0,Spawn)
	Dialog.AddOption("You're welcome.  You seem to have pulled through.","Dialog6")
	Dialog.Start()
    SpawnSet(NPC,"mood_state",0)
    ApplySpellVisual(NPC,57)
    CastSpell(Spawn,53)
end


function Dialog6(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    PlayFlavor(NPC,"","","thanks",0,0)
    SetStepComplete(Spawn,Quest2,5)    
    AddTimer(NPC,6000,"Despawning")
    end
    
function Despawning(NPC,Spawn)
    Despawn(NPC)
end
    
    