--[[
	Script Name		:	SpawnScripts/EchoesOfTimeEpic/royalpatriarch.lua
	Script Purpose	:	royal patriarch in Echoes of Time: Epic
	Script Author	:	alfa24t
	Script Date		:	03/09/2022
	Script Notes	:	spawnID 5310004
--]]

function spawn(NPC)
	AddTimer(NPC, 1500, "gotoKingZalak")
end

function gotoKingZalak(NPC) -- Loopback function for King Zalak current location.
	local zone = GetZone(NPC)
	local spawnKingZalak = GetSpawn(NPC, 5310002)
	Shout(NPC, "I hear and I obey great king!")
	SetFollowTarget(NPC, spawnKingZalak, 5)
    ToggleFollow(NPC)
	AddTimer(NPC, 2500, "checkgotoKingZalak")
end

function checkgotoKingZalak(NPC) -- Loopback function for King Zalak current location.
	local zone = GetZone(NPC)
	local spawnKingZalak = GetSpawn(NPC, 5310002)
	if GetDistance(NPC, spawnKingZalak) > 4 then
		AddTimer(NPC, 2500, "checkgotoKingZalak")
	else
        AddTimer(NPC, 10, "heal")
    end
end

function heal(NPC, Spawn)
    local zalak = GetSpawn(NPC, 5310002)
    if GetDistance(NPC, zalak) < 4 then
        ModifyHP(zalak, 2000)-- Heal value not good, need to parse fight on live
        AddTimer(NPC, 10, "explode")
    else
        AddTimer(NPC, 2500, "heal")
    end
    
end
 
function explode(NPC, Spawn)
	npctxt = {"My life is for you King Zalak!", "My life ends in a blaze of glory for you Oh King!"}
    Shout(NPC, npctxt[math.random(#npctxt)])
	-- Should be an AOE of FOCUS about 70k reparted on raid members in range
    CastSpell(NPC, 5474, 1, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function hailed_busy(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)
end

function targeted(NPC, Spawn)
end

function attacked(NPC, Spawn)
	ToggleFollow(NPC)
end

function aggro(NPC, Spawn)
end

function healthchanged(NPC, Spawn)
end

function auto_attack_tick(NPC, Spawn)
end

function death(NPC, Spawn)
end

function killed(NPC, Spawn)
end

function CombatReset(NPC)
end

function randomchat(NPC, Message)
end