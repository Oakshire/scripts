--[[
	Script Name		:	ItemScripts/LaserGoggles.lua
	Script Purpose	:	
	Script Author	:	fearfx
	Script Date		:	6/15/2016
	Script Notes	:	
--]]
function used(Item, Player)
    local target = GetTarget(Player)
    if target ~= nil and IsEntity(target) then
        local encounter = GetEncounter(target)
        if encounter ~= nil then
            doDamage(Player, target, damage)
        else
            doDamage(Player, target, damage)
        end
    end
end

function doDamage(Player, Target, damage)
    local damage = math.floor(((GetHP(Target) / 100) * 50) + GetHP(Target))
    ProcDamage(Player, Target, " Dev AE Slay", 4, damage)
end