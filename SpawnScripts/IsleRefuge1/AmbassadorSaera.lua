--[[
    Script Name    : SpawnScripts/IsleRefuge1/AmbassadorSaera.lua
    Script Author  : Dorbin
    Script Date    : 2022.08.30 03:08:04
    Script Purpose : Just applying parsed dialog here.  Obvisouly needs more.
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

local Qeynos = 5717

function spawn(NPC)
ProvidesQuest(NPC,Qeynos)
end

function respawn(NPC)
	spawn(NPC)
end



function hailed(NPC, Spawn)
Dialog1(NPC, Spawn)
end


--You look lost refugee.  All newcomers must first register with Garven Tralk at the beach.

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have been instructed to pass people of your... stature, to T'Kirr, the Ambassador of Freeport. I suggest that you go speak to him, as you will find Freeport a much more fitting environment for you to live in.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera007.mp3", 2300745754, 3241256270)
	Dialog.AddOption("I don't believe I was speaking to you anyway...")
	Dialog.Start()
end


------

function hailed(NPC, Spawn)
if GetClass(Spawn)>0 then
if not HasQuest(Spawn,5758) and not HasQuest(Spawn,5717) and not HasCompletedQuest(Spawn,5758)  and not HasCompletedQuest(Spawn,5717) and not  HasItem(Spawn, 1413,1) and GetFactionAmount(Spawn,11) >=0  then
   if GetRace(Spawn) == BARBARIAN or GetRace(Spawn) == DWARF or GetRace(Spawn) == ERUDITE or GetRace(Spawn) ==GNOME or GetRace(Spawn) == HALF_ELF or GetRace(Spawn) == HUMAN or GetRace(Spawn) == FROGLOK or GetRace(Spawn) == KERRA or GetRace(Spawn) == HIGH_ELF or GetRace(Spawn) == HALFLING or GetRace(Spawn) == WOOD_ELF or GetRace(Spawn) == FAE or GetRace(Spawn) == AERAKYN then
        Dialog1(NPC, Spawn)
        else
        NotRace(NPC, Spawn)
        end
    elseif HasQuest(Spawn,5717) or HasCompletedQuest(Spawn,5717) then
        DialogDone(NPC,Spawn)
    else
     NotRace(NPC, Spawn) --Completed FP Quest or Has FP Quest
    end
else
    PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "curtsey", 1236739692, 2465236460, Spawn) --COMMONER RESPONSE
end
end

function NotRace(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I have been instructed to pass people of your... stature, to T'Kirr, the Ambassador of Freeport. I suggest that you go speak to him, as you will find Freeport a much more fitting environment for you to live in.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera007.mp3", 2300745754, 3241256270)
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
	Dialog.AddOption("I don't believe I was speaking to you anyway...")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I hope you've received a proper welcome to the isles.  My name is Saera.  I am a Qeynos ambassador and I am here to inform new refugees of our fine city.  Do you wish to learn more about Qeynos?")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera001.mp3", 741146966, 2481777374)
    PlayFlavor(NPC,"","","royalwave",0,0,Spawn)
	Dialog.AddOption("Yes, I do.  Could you tell me of it?", "Dialog2")
	Dialog.AddOption("I must be distracted. I meant to talk to Ambassador T'Kirr.")
	Dialog.Start()
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh yes, Qeynos.  Our city stands as a shining beacon of light in this ever-darkening world and our leader, Queen Antonia Bayle is the fire that inspires us all.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera002.mp3", 2077728306, 53108566)
    PlayFlavor(NPC,"","","orate",0,0,Spawn)
	Dialog.AddOption("[Continue]", "Dialog2a")
	Dialog.Start()
end

function Dialog2a(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Through the hearts and souls of every Qeynosian citizen, and the tireless devotion of our Queen, our city prospers during these trying times. Meanwhile, the city of Freeport sadly suffers due to its leader's thirst for war and conquest.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera003.mp3", 3391430062, 794106337)
    Dialog.AddOption("[Continue]", "Dialog3")
	Dialog.AddOption("I've heard enough. I have much to consider.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We welcome new citizens of Qeynos with open arms.  Our safe city walls offer many opportunities for starting a new life.  Together we can rebuild Norrath.")
    PlayFlavor(NPC,"","","agree",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera004.mp3", 436329400, 1699103452)
	Dialog.AddOption("[Continue]", "Dialog4")
	Dialog.Start()
end



function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We are honored you wish to be a citizen of Qeynos.  You would be an asset to our society, but before you decide, please choose wisely.  Once I approve your transaction with the Far Seas Trading Company, I cannot rescind your request for citizenship.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera005.mp3", 324262694, 747800831)
	Dialog.AddOption("I would like to join Qeynos.", "Dialog5")
	Dialog.AddOption("Let me consider all of this first.")
	Dialog.Start()
end


function Dialog5(NPC, Spawn)
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Pledge allegiance to Qeynos", "Dedicate yourself to the City of Qeynos and to its leader,           Queen Antonia Bayle.                                                                                [This decision is final!]", 2, 16, "Dialog6")
	AddOptionWindowOption(window, " Reconsider", "Rescind your request.  Return to Ambassador Saera if you decide Qeynos is right for you.", 2, 13, "Sigh")
	SendOptionWindow(window, Spawn, "Pledge allegiance to Qeynos?", "Cancel")
end

function Dialog6(NPC, Spawn)
OfferQuest(NPC,Spawn,5717)
FaceTarget(NPC,Spawn)
end

function Sigh(NPC, Spawn)
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
    FaceTarget(NPC,Spawn)
end

function DialogDone(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We cannot thank you enough for choosing to assist Qeynos.  If your travels on our island are an indication of your talents, I know you will do well for yourself, adventurer.")
	Dialog.AddVoiceover("voiceover/english/ambassador_saera/tutorial_island02/ambassadorsaera008.mp3", 2202868294,1256407446)
    PlayFlavor(NPC,"","","bow",0,0,Spawn)
	Dialog.AddOption("Thank you for the compliment.")
	Dialog.Start()
end

