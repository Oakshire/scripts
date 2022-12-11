--[[
	Script Name	: SpawnScripts/Graystone/HarganIcethaw.lua
	Script Purpose	: Hargan Icethaw 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
require "SpawnScripts/Generic/DialogModule"
local Quest1 = 5787

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
   SpawnSet(NPC, "visual_state", 0)
    AddTimer(NPC,45000,"resetVisual")
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahhhh ... Nothing's more rewarding than building up a good, hearty sweat after a long day's work!")
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw000.mp3", 3849445120, 4083065151)
    if HasQuest(Spawn,Quest1) and GetQuestStep(Spawn,Quest1)>=3 and GetQuestStep(Spawn,Quest1)<=4 and not QuestStepIsComplete(Spawn,Quest1,4) then
	Dialog.AddOption("Dagorel said you could show me a thing or two about brawling.","Dialog2")
    end
	Dialog.AddOption("No, I think it's just you.  I'll let you get back to what you're doing.")
	Dialog.Start()
end

function resetVisual(NPC)
SpawnSet(NPC, "visual_state", 11420)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Dagorel you say?  HAHA!!! That old dwarf still takes on whelps and turns them into real fighters? Looking at you, I can see he picks students with real potential! So, he wants me to give you some rough-and-tumble, eh?")
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw001.mp3", 3849445120, 4083065151)
	Dialog.AddOption("He mentioned you are better with your fists than swords.","Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("He's right about that.  Let's give it a go ... it'll keep my blood pumpin'! Let me roll up my sleeves. Okay, let's go a couple of rounds. Give me everything you got!  Don't worry, I can take it!")
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw001.mp3", 3849445120, 4083065151)
	Dialog.AddOption("[punch at his nose]","Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(Spawn, NPC)
  PlayFlavor(Spawn, "", "", "pugilist_attack", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog4a",1,Spawn)
end

function Dialog4a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Again. Mean it this time!")
    PlayFlavor(NPC, "", "", "1h_thrown_ouch_down", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw002.mp3", 3849445120, 4083065151)
	Dialog.AddOption("[give a short jab at his ribs]","Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(Spawn, NPC)
  PlayFlavor(Spawn, "", "", "pugilist_attack02", 0, 0, NPC)
    AddTimer(NPC,800,"Dialog5a",1,Spawn)
end

function Dialog5a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Again! Hit me again!")
    PlayFlavor(NPC, "", "", "1h_thrown_ouch_forehand", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw003.mp3", 3849445120, 4083065151)
	Dialog.AddOption("[give him the old one-two]","Dialog6")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(Spawn, "", "", "pugilist_wild_swing", 0, 0, NPC)
    AddTimer(NPC,1200,"Dialog6a",1,Spawn)
end

function Dialog6a(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(NPC, "", "", "1h_crush_ouch_forehand", 0, 0, Spawn)
    AddTimer(NPC,1800,"Dialog6b",1,Spawn)
end

function Dialog6b(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("AAARRGGGGGHH!!!  Whoa, whoa, whoa! Are you okay?!  Sorry about that, friend.  I guess I got carried away.  I was having so much fun.  Umm ... I think we're done for now.  Don't worry, that bruise should go away after a bit.")
    PlayFlavor(NPC, "", "", "pugilist_kick", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw004.mp3", 3849445120, 4083065151)
	Dialog.AddOption("Wow! I wasn't expecting you to come at me like that...","Dialog7")
	Dialog.Start()
    AddTimer(NPC,1400,"Dialog6c",1,Spawn)
end

function Dialog6c(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(Spawn, "", "", "knockedtoback", 0, 0, NPC)
    AddTimer(NPC,1400,"Dialog6d",1,Spawn)

end

function Dialog6d(NPC, Spawn)
	FaceTarget(Spawn, NPC)
    PlayFlavor(Spawn, "", "", "knockedtoback_getup", 0, 0, NPC)
local invul = IsInvulnerable(Spawn)
if invul == true then
return 0
end

local hp = GetHP(Spawn)
local damage = GetMaxHP(Spawn)*0.26
local damageToTake = damage * 1
-- if we don't have enough HP make them die to pain and suffering not self
if hp <= damageToTake then
else
DamageSpawn(Spawn, Spawn, 192, 3, damageToTake, damageToTake, "Hargan's pugilist kick!", 0, 0, 1, 1)
end
end

function Dialog7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well, I'm still real sorry.  Now you know how a brawler really fights.  It's not all about using your fists.  You can use other weapons you were born with too!  No hard feelings, eh?")
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/hargan_icethaw/qey_village03/harganicethaw005.mp3", 3849445120, 4083065151)
	Dialog.AddOption("All in good fun, right? Thank you for the lesson.")
	Dialog.Start()
    SetStepComplete(Spawn,Quest1,4)
end
