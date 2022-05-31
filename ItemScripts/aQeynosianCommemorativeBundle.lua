--[[
    Script Name    : ItemScripts/aQeynosianCommemorativeBundle.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.30 06:05:32
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


function examined(Item, Player)
end

function used(Item,Player)
SummonItem(Player,1414,1)
Weapon(Item,Player)
RemoveItem(Player,1001003,1)
end

function Weapon(Item,Player)
if GetClass(Player)==FIGHTER or GetClass(Player)==WARRIOR or GetClass(Player)==GUARDIAN or GetClass(Player)==BERSERKER then
    SummonItem(Player, 85495,1 )
elseif GetClass(Player)==BRAWLER or GetClass(Player)==MONK  or GetClass(Player)==BRUISER or GetClass(Player)==ANIMALIST or GetClass(Player)==BEASTLORD then
    SummonItem(Player,85483,1)
elseif GetClass(Player)==CRUSADER or GetClass(Player)==SHADOWKNIGHT  or GetClass(Player)==PALADIN then
    SummonItem(Player,85485,1)
    
elseif GetClass(Player)==PRIEST or GetClass(Player)==CLERIC  or GetClass(Player)==TEMPLAR or GetClass(Player)==INQUISITOR or GetClass(Player)==SHAPER or GetClass(Player)==CHANNELER then
    GSummonItem(Player,85484,1)    
elseif GetClass(Player)==DRUID or GetClass(Player)==WARDEN  or GetClass(Player)==FURY then
    SummonItem(Player,85486,1)
elseif GetClass(Player)==SHAMAN or GetClass(Player)==MYSTIC  or GetClass(Player)==DEFILER then
    SummonItem(Player,85492,1)
    
 elseif GetClass(Player)==MAGE or GetClass(Player)==SORCERER  or GetClass(Player)==WIZARD or GetClass(Player)==WARLOCK then
    SummonItem(Player,85493,1)    
elseif GetClass(Player)==ENCHANTER or GetClass(Player)==ILLUSIONIST  or GetClass(Player)==COERCER then
    SummonItem(Player,85487,1)
elseif GetClass(Player)==SUMMONER or GetClass(Player)==CONJUROR  or GetClass(Player)==NECROMANCER then
    SummonItem(Player,85494,1)   
    
 elseif GetClass(Player)==SCOUT or GetClass(Player)==ROGUE  or GetClass(Player)==SWASHBUCKLER or GetClass(Player)==BRIGAND  then
    SummonItem(Player,85491,1)    
elseif GetClass(Player)==BARD or GetClass(Player)==TROUBADOR  or GetClass(Player)==DIRGE then
    SummonItem(Player,85482,1)
elseif GetClass(Player)==RANGER or GetClass(Player)==ASSASSIN  or GetClass(Player)==PREDATOR then 
    SummonItem(Player,85489,1)
end
end

