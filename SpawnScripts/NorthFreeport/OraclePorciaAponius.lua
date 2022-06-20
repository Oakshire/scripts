--[[
    Script Name    : SpawnScripts/NorthFreeport/OraclePorciaAponius.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 12:06:39
    Script Purpose : 
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
--SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")  --PORCIA SHOULD ONLY RESPOND TO HAIL.  Script copied from Soothsayer Tabina w/ VOs switched.
waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    Seer(NPC,Spawn)	
end

function respawn(NPC)
	spawn(NPC)
end

local CalloutTimeCheck = false                                                -- used to delay between callout uses


function InRange(NPC, Spawn) --Quest Callout
	if CalloutTimeCheck == false then
    if math.random(1, 100) <= 20 then
        CalloutTimeCheck = true
	    FaceTarget(NPC, Spawn)        
        SeerShout(NPC, Spawn)    
		AddTimer(NPC,50000,"ResetCalloutTimer")                        
    end
end
end

function ResetCalloutTimer(NPC)                                               -- resets callout timer after use
   CalloutTimeCheck = false 
end

function Seer(NPC,Spawn)	
    choice = math.random(1,2)
    FaceTarget(NPC, Spawn) 
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_scout_gf_a250f41f.mp3", "Stealth, guile and bravado shall follow you on your path to greatness.", "", 1797841506, 2868715164, Spawn, 0)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_mage_gf_f18445ae.mp3", "Clearly your intellect is your best asset. The world shall marvel at the wonders you control.", "", 2374480230, 2549502692, Spawn, 0)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_priest_gf_5c80506d.mp3", "Your spirit is strong, as is your faith. You shall move more than mountains, you shall move souls.", "", 894403956, 265994277, Spawn, 0)

    elseif GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==BRAWLER or GetClass(Spawn)==MONK or GetClass(Spawn)==BRUISER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_fighter_gf_544e4a58.mp3","Epic battles await your future, but the strength of your arm shall tame them all!", "orate", 3412016143, 1212387502, Spawn)
        end
    end


function SeerShout(NPC,Spawn)	
    if GetClass(Spawn)==SCOUT or GetClass(Spawn)==ROGUE or GetClass(Spawn)==SWASHBUCKLER or GetClass(Spawn)==BRIGAND or GetClass(Spawn)==BARD or GetClass(Spawn)==TROUBADOR or GetClass(Spawn)==DIRGE or GetClass(Spawn)==PREDATOR or GetClass(Spawn)==RANGER or GetClass(Spawn)==ASSASSIN or GetClass(Spawn)==ANIMALIST or GetClass(Spawn)==BEASTLORD or GetClass(Spawn)==SHAPER or GetClass(Spawn)==CHANNELER then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_scout_gf_a250f41f.mp3", "Stealth, guile and bravado shall follow you on your path to greatness.", "", 1797841506, 2868715164, Spawn, 0)
    
    elseif GetClass(Spawn)==MAGE or GetClass(Spawn)==SORCERER or GetClass(Spawn)==WIZARD or GetClass(Spawn)==WARLOCK or GetClass(Spawn)==ENCHANTER or GetClass(Spawn)==ILLUSIONIST or GetClass(Spawn)==COERCER or GetClass(Spawn)==SUMMONER or GetClass(Spawn)==CONJUROR or GetClass(Spawn)==NECROMANCER then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_mage_gf_f18445ae.mp3", "Clearly your intellect is your best asset. The world shall marvel at the wonders you control.", "", 2374480230, 2549502692, Spawn, 0)

    elseif GetClass(Spawn)==CLERIC or GetClass(Spawn)==TEMPLAR or GetClass(Spawn)==INQUISITOR or GetClass(Spawn)==DRUID or GetClass(Spawn)==WARDEN or GetClass(Spawn)==FURY or GetClass(Spawn)==SHAMAN or GetClass(Spawn)==MYSTIC or GetClass(Spawn)==DEFILER or GetClass(Spawn)==PRIEST then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_priest_gf_5c80506d.mp3", "Your spirit is strong, as is your faith. You shall move more than mountains, you shall move souls.", "", 894403956, 265994277, Spawn, 0)

    elseif GetClass(Spawn)==FIGHTER or GetClass(Spawn)==WARRIOR or GetClass(Spawn)==GUARDIAN or GetClass(Spawn)==BERSERKER or GetClass(Spawn)==BRAWLER or GetClass(Spawn)==MONK or GetClass(Spawn)==BRUISER or GetClass(Spawn)==CRUSADER or GetClass(Spawn)==SHADOWKNIGHT or GetClass(Spawn)==PALADIN then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_seer/ft/eco/evil/human_eco_evil_seer_fighter_gf_544e4a58.mp3","Epic battles await your future, but the strength of your arm shall tame them all!", "orate", 3412016143, 1212387502, Spawn)

    end
end



function respawn(NPC)
	spawn(NPC)
	end