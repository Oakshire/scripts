--[[
    Script Name    : SpawnScripts/IsleRefuge1/agrovedeer.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 07:09:57
    Script Purpose : 
                   : 
--]]
 

function spawn(NPC)
   local Level = GetLevel(NPC)
    local level1 = 2
    local level2 = 3
    local difficulty1 = 6
    local hp1 = 45
    local power1 = 35
    local difficulty2 = 6
    local hp2 = 75
    local power2 = 45
    local difficulty3 = 6
    local hp3 = 110
    local power3 = 55
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructUInt(NPC, "hp_regen", 1)
    SetInfoStructUInt(NPC, "friendly_target_npc", 1)
    Diseased(NPC)   
    ChooseMovement(NPC)
end



function Diseased(NPC)
    choice= MakeRandomInt(1,2)
    if choice == 1 then
    SetTempVariable(NPC,"Update","true" )
    else
    CastSpell(NPC,993)
    SetTempVariable(NPC,"Update","false" )
    end
end

function casted_on(NPC, Spawn, SpellName)  --Priests use minor heal if the deer is diseased.  These deer will then give updates for scouts to scouts.
if HasSpellEffect(NPC,993) then
  if SpellName == 'Minor Healing' or SpellName == 'Minor Arch Healing' or SpellName == 'Cure' or SpellName == 'Cure Noxious' then
        choice = MakeRandomInt(1,4)
        if choice ==1 then
        SendMessage(Spawn, "The grove deer bleats appreciatively as it appears healthier.")
        elseif choice ==2 then
        SendMessage(Spawn, "The grove deer's coat returns to a natual sheen.")
        elseif choice ==3 then
        SendMessage(Spawn, "The grove deer's eyes glow normally as you purge its malady.")
        else
        SendMessage(Spawn, "The grove deer's hooves stomp thankfully as its disease abates.")
        end        
    CastSpell(NPC,993,1, NPC)
    SpawnSet(NPC,"visual_state",0)
    FaceTarget(NPC,Spawn)
    SetTempVariable(NPC,"Update","true" )
    AddTimer(NPC,120000,"DiseaseReturn")   
    end
    end
end

function DiseaseReturn(NPC) --Reset Disease
    CastSpell(NPC,993,1, NPC)
    SetTempVariable(NPC,"Update","false" )
end   


function death (NPC,Spawn) -- Gives Quest Update if on the scout quest 'Deer Hunt'.  ONLY Healthy deer update.
    if GetQuestStep(Spawn,5737)==1 then
        if GetTempVariable(NPC, "Update") == "true" then
--        if not HasSpellEffect(NPC,993) then
            AddStepProgress(Spawn,5737,1,1)
        SendMessage(Spawn, "You successfully harvest the grove deer.")
        else
        SendMessage(Spawn, "The grove deer's meat was too diseased to harvest successfully.  A priest could help remove the disease.")
        end
    end
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 12, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 12, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 5, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0)
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 12, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

