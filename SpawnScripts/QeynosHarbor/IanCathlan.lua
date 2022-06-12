--[[
    Script Name    : SpawnScripts/QeynosHarbor/IanCathlan.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.11
    Script Purpose : Work in Progress.  Need Dialog.
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
--[[
local FIGHTER = 1
local WARRIOR =2
local GUARDIAN= 3 
local BERSERKER = 4 
local BRAWLER = 5 
local MONK = 6 
local BRUISER= 7 
local CRUSADER = 8 
local SHADOWKNIGHT = 9 
local PALADIN = 10 

local PRIEST = 11 
local CLERIC = 12 
local TEMPLAR = 13 
local INQUISITOR = 14 
local DRUID = 15 
local WARDEN = 16 
local FURY = 17 
local SHAMAN = 18 
local MYSTIC = 19 
local DEFILER = 20 

local MAGE = 21 
local SORCERER = 22 
local WIZARD = 23 
local WARLOCK = 24 
local ENCHANTER = 25 
local ILLUSIONIST = 26 
local COERCER = 27 
local SUMMONER = 28 
local CONJUROR = 29 
local NECROMANCER = 30 

local SCOUT = 31 
local ROGUE = 32 
local SWASHBUCKLER = 33 
local BRIGAND = 34 
local BARD = 35 
local TROUBADOR = 36 
local DIRGE = 37 
local PREDATOR = 38 
local RANGER = 39 
local ASSASSIN = 40 
local ANIMALIST = 41 
local BEASTLORD = 42 
local SHAPER = 43 
local CHANNELER = 44 
--]]


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3", 3568187069, 1024390098)
	Dialog.Start()
end

--[[
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD or GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
	Dialog.New(NPC, Spawn)

	Dialog.AddOption("I was just being friendly.  Good day to you.")
	Dialog.AddOption( "You wouldn't happen to know where I can get some good armor, would you?", "Option1")
	Dialog.AddDialog( "An' hail ta ye as well.  Can ol' Ian help ya with somethin', or are ya just bein' friendly?")
	Dialog.Start()
	else
	Dialog1(NPC, Spawn)    
end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm sorry. I don't know who ye are.  If ye'd be so kind as ta leave me to my business, I'd appreciate it.  Good day ta ye.")
	Dialog.AddVoiceover("voiceover/english/optional3/ian_cathlan/qey_harbor/quests/ian_cathlan/iancathlan017.mp3", 3568187069, 1024390098)
	Dialog.Start()
end	 

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "Maybe ... what do you want me to do?", "Option2")
	StartConversation(conversation, NPC, Spawn, "I might tell ya, if you help me out. In return, I'll give you some old armor that I can have refitted for you.")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can help you look.  Where should I start?", "Option3")
	StartConversation(conversation, NPC, Spawn, "My family has a history of losing things. I was hoping you could help me look for a few items; some are very sentimental.")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I'll return if I find anything.")
	StartConversation(conversation, NPC, Spawn, "I've a list of places where I may have misplaced a few things. Check the area to see if you can find anything. ")
end

]]--