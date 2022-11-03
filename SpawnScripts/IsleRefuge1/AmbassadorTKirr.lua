--[[
    Script Name    : SpawnScripts/IsleRefuge1/AmbassadorTKirr.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 03:08:00
    Script Purpose : Just placing the parced dialog here.
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local BARBARIAN = 0
local DARK_ELF = 1
local DWARF = 2
local ERUDITE = 3
local FROGLOK = 4
local GNOME = 5
local HALF_ELF = 6
local HALFLING = 7
local HIGH_ELF = 8
local HUMAN = 9
local IKSAR = 10
local KERRA = 11
local OGRE = 12
local RATONGA = 13
local TROLL = 14
local WOOD_ELF = 15
local FAE = 16
local ARASAI = 17
local SARNAK = 18
local VAMPIRE = 19
local AERAKYN = 20

function spawn(NPC)
ProvidesQuest(NPC,5758)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
if GetClass(Spawn)>0 then
if not HasQuest(Spawn,5758) and not HasQuest(Spawn,5717) and not HasCompletedQuest(Spawn,5758)  and not HasCompletedQuest(Spawn,5717) and not HasItem(Spawn, 1414,1) and GetFactionAmount(Spawn,12) >=0 then
    if GetRace(Spawn) == BARBARIAN or GetRace(Spawn) == DARK_ELF or GetRace(Spawn) == ERUDITE or GetRace(Spawn) ==GNOME or GetRace(Spawn) == HALF_ELF or GetRace(Spawn) == HUMAN or GetRace(Spawn) == IKSAR or GetRace(Spawn) == KERRA or GetRace(Spawn) == OGRE or GetRace(Spawn) == RATONGA or GetRace(Spawn) == TROLL or GetRace(Spawn) == ARASAI or GetRace(Spawn) == SARNAK or GetRace(Spawn) == VAMPIRE or GetRace(Spawn) == AERAKYN then
    Dialog1(NPC, Spawn)
    else
    PlayFlavor(NPC,"voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr003.mp3","Ignore this fair-skinned wench's lies! She knows nothing of Freeport!","no",1210422898,1324228526,Spawn) --NOT RIGHT RACE
    end
    elseif HasQuest(Spawn,5717)then
    PlayFlavor(NPC,"voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr003.mp3","Ignore this fair-skinned wench's lies! She knows nothing of Freeport!","shakefist",1210422898,1324228526,Spawn) --POSSIBLE FREEPORTER ACCEPTED QEYNOS
else
    PlayFlavor(NPC,"voiceover/english/island_of_refuge/ambassador_tkir/ior_ktir_002.mp3","Right, can't you tell I'm busy?","glare",1541998982,3704557731,Spawn) --DONE WITH AVAILBLE STEPS
end
else
    PlayFlavor(NPC,"voiceover/english/island_of_refuge/ambassador_tkir/ior_ktir_002.mp3","Right, can't you tell I'm busy?","stare",1541998982,3704557731,Spawn) --COMMONER RESPONSE
end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Auugghh! Just thinking of those lovely white doves flying around a beautiful moat and the way Qeynos citizens always have a smile... Gah! Just the thought disgusts me.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr001.mp3", 1545000454, 4086082448)
    PlayFlavor(NPC,"","","frustrated",0,0,Spawn)
	Dialog.AddOption("Umm, well what is Freeport like?", "Dialog2")
	Dialog.AddOption("You don't seem like a very nice person...","Dialog1a")
	Dialog.Start()
end

function Dialog1a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Listen here and listen well. If you want a real life, one with freedom, one with power, and of course one with riches, Freeport is the place for you!")
	Dialog.AddVoiceover("voiceover/english/island_of_refuge/ambassador_tkir/ior_ktir_007.mp3", 1473255226, 2922317764)
    PlayFlavor(NPC,"","","glare",0,0,Spawn)
    if GetRace(Spawn) == BARBARIAN  or GetRace(Spawn) == ERUDITE or GetRace(Spawn) ==GNOME or GetRace(Spawn) == HALF_ELF or GetRace(Spawn) == HUMAN  or GetRace(Spawn) == KERRA  or GetRace(Spawn) == VAMPIRE or GetRace(Spawn) == AERAKYN then
	Dialog.AddOption("[continue]", "Dialog2a")
    else
    Dialog.AddOption("Then tell me more about it.", "Dialog3")
    end
	Dialog.AddOption("You had me at riches!", "Dialog3")
	Dialog.AddOption("I think I should be going...", "Sigh")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Listen and listen well. If you want a real life, one with freedom, one with power, one with an opportunity to serve a greater cause, Freeport is your only choice.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr002.mp3", 4073129922, 2847751764)
    PlayFlavor(NPC,"","","scold",0,0,Spawn)
    if GetRace(Spawn) == BARBARIAN  or GetRace(Spawn) == ERUDITE or GetRace(Spawn) ==GNOME or GetRace(Spawn) == HALF_ELF or GetRace(Spawn) == HUMAN  or GetRace(Spawn) == KERRA  or GetRace(Spawn) == VAMPIRE or GetRace(Spawn) == AERAKYN then
	Dialog.AddOption("[continue]", "Dialog2a")
    else
    Dialog.AddOption("Then tell me more about it.", "Dialog3")
    end
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ignore this fair-skinned wench's lies! She knows nothing of Freeport!")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr003.mp3", 1210422898,1324228526)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
    Dialog.AddOption("Then tell me more about it.", "Dialog3")
	Dialog.AddOption("She might not, but I have to consider this.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My words intrigue you... good.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr004.mp3", 2159575268, 1334539968)
    PlayFlavor(NPC,"","","nod",0,0,Spawn)
	Dialog.AddOption("[continue]", "Dialog4")
	Dialog.Start()
end



function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Well then, let me continue. Our great Overlord rules Freeport with a watchful eye and an iron fist.  With his strength guiding us, Freeport easily defends its walls against both orcish hordes and ruthless cutthroats.  A lesser city would have been destroyed long ago.")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr005.mp3", 365161424, 1294590918)
	Dialog.AddOption("[continue]", "Dialog5")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("So what do you think?  Do you possess the strength to live in the greatest city in Norrath?  Is your will strong enough to see your way through the troubled times ahead?  Or are you a smiling do-gooder who prefers frolicking in the streets of a softer city?")
	Dialog.AddVoiceover("voiceover/english/ambassador_t_kirr/tutorial_island02/ambassadortkirr007.mp3", 3785883027, 2697291122)
    PlayFlavor(NPC,"","","tapfoot",0,0,Spawn)
	Dialog.AddOption("I'm born and bred to lead.  How do I get to Freeport?", "Dialog6")
	Dialog.AddOption("I think I'll weigh my options a bit first.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Pledge allegiance to Freeport", "Dedicate yourself to the City of Freeport and to its leader,           Overlord Lucan D'lere.                                                                                [This decision is final!]", 2, 16, "Dialog7")
	AddOptionWindowOption(window, " Reconsider", "Rescind your request.  Return to Ambassador T'Kirr if you decide Freeport is right for you.", 2, 13, "Sigh")
	SendOptionWindow(window, Spawn, "Pledge allegiance to Freeport?", "Cancel")
end

function Dialog7(NPC, Spawn)
OfferQuest(NPC,Spawn,5758)
FaceTarget(NPC,Spawn)
end

function Sigh(NPC, Spawn)
    PlayFlavor(NPC,"voiceover/english/island_of_refuge/ambassador_tkir/ior_ktir_002.mp3","Right, can't you tell I'm busy?","stare",1541998982,3704557731,Spawn)
    FaceTarget(NPC,Spawn)
end





