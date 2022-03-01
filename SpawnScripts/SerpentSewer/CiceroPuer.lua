--[[
    Script Name    : SpawnScripts/SerpentSewer/CiceroPuer.lua
    Script Author  : premierio015
    Script Date    : 2020.06.16 02:06:24
    Script Purpose : 
                   : 
--]]

local MurkwaterUniform = 568
local BackAndForth = 569

function spawn(NPC)
        SetPlayerProximityFunction(NPC, 15, "InRange", "LeaveRange", Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, MurkwaterUniform) and not HasCompletedQuest(Spawn, MurkwaterUniform) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer001.mp3", "", "", 1054243120, 2058857995, Spawn)
    AddConversationOption(conversation, "Help with what?", "DLG_01")
    AddConversationOption(conversation, "I'd rather not.")
    StartConversation(conversation, NPC, Spawn, "Say, I've never seen you down here before.  Perhaps you would help me?  Yes, yes?")
    elseif HasQuest(Spawn, MurkwaterUniform) then
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer004.mp3", "", "", 1197336558, 2528909446, Spawn)
    AddConversationOption(conversation, "Don't worry, I'm on it.")
    StartConversation(conversation, NPC, Spawn, "Why have you come back?  I can't do anything until I get those clothes.  Hurry up, okay?")
   elseif GetQuestStep(Spawn, MurkwaterUniform) == 7 then
   conversation = CreateConversation()
   PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer003.mp3", "", "", 1619221767, 2009652220, Spawn)
    AddConversationOption(conversation, "Enjoy. I know I will.", "DLG_03")
    StartConversation(conversation, NPC, Spawn, "Oh, these are nice.  Very nice, not much blood either, easy to clean and mend. They won't notice me. I'll blend right in.  Here, here take your pay, yes, yes!")
  elseif GetQuestStep(Spawn, BackAndForth) == 1 then
   PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer009.mp3", "", "", 4089303557, 564249076, Spawn)
    AddConversationOption(conversation, "Okay. Okay.")
    StartConversation(conversation, NPC, Spawn, "Hey!?  Why are you bothering me again?  Don't you have a gnome to get rid of?")
  elseif GetQuestStep(Spawn, BackAndForth) == 2 then
   PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer010.mp3", "", "", 2785075465, 962834238, Spawn)
   AddConversationOption(conversation, "Are you trying to double cross me?", "DLG_05")
   StartConversation(conversation, NPC, Spawn, "He's dead!?  He's dead!  Oh this is a good day.  Now I do as I promise and tell you where secret place is. First you must take this letter to Tula Mawh.  She will let you know where secret place is.")
  elseif GetQuestStep(Spawn, BackAndForth) == 4 then
  PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer011.mp3", "", "", 1287078860, 595779054, Spawn)
  AddConversationOption(conversation, "Where is the Serpent's Lair?", "DLG_06")
  StartConversation(conversation, NPC, Spawn, "Don't be mad!  I've been expecting you.  I'm sorry I had to tricks you like that. I just couldn't give her the letter myself.  She said she'd gut me and use my intestines for sausage lining if I ever spoke to her again.")
  elseif HasCompletedQuest(Spawn, BackAndForth) then
    PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/quests/qst_cicero_puer_cicero_puer_x1_completed_5d529d35.mp3", "You want to know something else?", "", 3223009092, 3169840791, Spawn)
end
   end
   
			 
function DLG_01 (NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer005.mp3", "", "", 3626061103, 4170093704, Spawn)
AddConversationOption(conversation, "Alright.", "Offer")
AddConversationOption(conversation, "Forget it.")
StartConversation(conversation, NPC, Spawn, "Yes, yes indeed!  I need a disguise.  Don't ask why; I won't tell, but I need the clothes the Murkwaters wear.  You will help me, yes, yes?  I will pay you good, yes!")
end

function DLG_03(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer008.mp3", "", "", 2535742005, 2630595560, Spawn)
AddConversationOption(conversation, "continue", "DLG_04")
AddConversationOption(conversation, "I've done enough for you.")
StartConversation(conversation, NPC, Spawn, "You helped me out pretty good yes, yes.  I'm a little bits in your debt.  I tell you what. You help me with one more thing and I tell you where big fight is.  Lots of pockets to rummage through for trinkets and coin.")
end

function DLG_04(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, BackAndForth)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer015.mp3", "", "", 12463198, 1073441697, Spawn)
AddConversationOption(conversation, "Yeah I'll do it.")
StartConversation(conversation, NPC, Spawn, "It's a secret place you won't find unless I tell you how.  Lots of treasure to be found. What do you say?  Just find Crazy Peepers the gnome and kill him.  He's always causing me big troubles.  Gnomes and big trouble go hand and hand.")
end

function DLG_05(NPC,Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer014.mp3", "", "", 4039402189, 2999879858, Spawn)
AddConversationOption(conversation, "Okay, we'll see.")
StartConversation(conversation, NPC, Spawn, "No, no! Letter tells Tula to tell you where the Serpent's Lair is.  No lies, no doubles cross, you can trust me.  I'm in your debt, kind of.")
end

function DLG_06(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
SetStepComplete(Spawn, BackAndForth, 4)
PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer012.mp3", "", "", 714658674, 870149810, Spawn)
AddConversationOption(conversation, "You can tell me I won't forget.", "DLG_07")
StartConversation(conversation, NPC, Spawn, "I tell you! I tell you! Don't be mad.  The entrance to the Serpent's Lair is ... wait I have better idea.  I write it down for you. ...Oh?  I used my last bit of paper for Tula.")
end

function DLG_07(NPC, Spawn)
FaceTarget(NPC, Spawn)
conversation = CreateConversation()
PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/ciceropuer013.mp3", "", "", 2676633634, 2389717505, Spawn)
AddConversationOption(conversation, "We'll see?")
StartConversation(conversation, NPC, Spawn, "Yes, yes! It is in a large room just south of the east sewer exit.  I promise, you'll find it. You'll see.")
end

function Offer(NPC, Spawn)
FaceTarget(NPC, Spawn)
OfferQuest(NPC, Spawn, MurkwaterUniform)
end

function respawn(NPC)
         spawn(NPC)
end


function InRange(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, MurkwaterUniform) and not HasCompletedQuest(Spawn, MurkwaterUniform) then
	PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/quests/qst_cicero_puer_aoi_unfamiliar_acdcfaef.mp3", "Who are you?  Come closer and identify yourself.", "", 3773783330, 3612041605, Spawn)
        elseif HasCompletedQuest(Spawn, MurkwaterUniform) then
        PlayFlavor(NPC, "voiceover/english/cicero_puer/fprt_sewer02/quests/qst_cicero_puer_cicero_puer_x1_completed_5d529d35.mp3", "You want to know something else?", "", 3223009092, 3169840791, Spawn)
end
	end

function LeaveRange(NPC, Spawn)

end