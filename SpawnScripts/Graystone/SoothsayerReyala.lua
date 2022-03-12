--[[
    Script Name    : SpawnScripts/Graystone/SoothsayerReyala.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.11 11:03:14
    Script Purpose : Good Seer Script
                   : 
--]]
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

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange", "LeaveRange")
waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 898.85, -22.61, -101.52, 2, math.random(15, 30))
	MovementLoopAddLocation(NPC, 896.39, -22.61, -104.37,2, math.random(15, 30))	
	MovementLoopAddLocation(NPC, 896.09, -22.61, -104.17,2, math.random(15, 30))	
	MovementLoopAddLocation(NPC, 896.99, -22.37, -109.86,2, math.random(15, 30))	
	MovementLoopAddLocation(NPC,896.97, -22.37, -110.01,2, 1)		
	MovementLoopAddLocation(NPC, 899.54, -22.61, -102.76,2, 0)
	MovementLoopAddLocation(NPC, 899.54, -22.61, -102.92,2, math.random(15, 30))
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Seer(NPC,Spawn)	
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
    if math.random(1, 100) <= 25 then
	FaceTarget(NPC, Spawn)        
    SeerShout(NPC, Spawn)    
    end
end

function Seer(NPC,Spawn)	
    choice = math.random(1,2)
    FaceTarget(NPC, Spawn) 
    if choice ==1 then
    PlayFlavor(NPC, "","", "ponder", 0, 0, Spawn)
        else
   
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_scout_gf_a250f41f.mp3","Stealth, guile, and brovado shall follow you on your path to greatness.", "orate", 3335989969, 3601217765, Spawn)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_mage_gf_f18445ae.mp3","Clearly your intellect is your best asset.  The world shall marvel at the wonders you control.", "orate", 2143349270, 291509869, Spawn)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_priest_gf_5c80506d.mp3","Your spirit is strong, as is your faith. You shall move more than mountains, you shall move souls.", "orate", 1603654197, 361421551, Spawn)

    elseif GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==BRAWLER or GetClass(Spawn)==MONK or GetClass(Spawn)==BRUISER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_fighter_gf_544e4a58.mp3","Epic battles await your future, but the strength of your arm shall tame them all!", "orate", 2750782728, 2274979632, Spawn)
        end
    end
end

function SeerShout(NPC,Spawn)	
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_scout_gf_a250f41f.mp3","Stealth, guile and brovado shall follow you on your path to greatness.", "orate", 3335989969, 3601217765, Spawn)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_mage_gf_f18445ae.mp3","Clearly your intellect is your best asset.  The world shall marvel at the wonders you control.", "orate", 2143349270, 291509869)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_priest_gf_5c80506d.mp3","Your spirit is strong, as is your faith. You shall move more than mountains, you shall move souls.", "orate", 1603654197, 361421551)

    elseif GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==BRAWLER or GetClass(Spawn)==MONK or GetClass(Spawn)==BRUISER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
    PlayFlavor(NPC, "voiceover/english/human_eco_good_seer/ft/eco/good/human_eco_good_seer_fighter_gf_544e4a58.mp3","Epic battles await your future, but the strength of your arm shall tame them all!", "orate", 2750782728, 2274979632)

    end
end

