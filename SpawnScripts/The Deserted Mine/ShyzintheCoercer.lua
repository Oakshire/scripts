--[[
	Script Name		:	SpawnScripts/TheDesertedMine/ShyzinTheCoercer.lua
	Script Purpose	:	Ring Event for The Behemoth in The Deserted Mine
	Script Author	:	alfa24t
	Script Date		:	03/10/2022
	Script Notes	:	Missing Spells for all mobs
--]]

function spawn(NPC)
	SetTempVariable(NPC, "combat_start", "0")
	SetTempVariable(NPC, "combat_finish", "0")
	SetPlayerProximityFunction(NPC, 15, "inrange")
end

function respawn(NPC)
	spawn(NPC)
end

function animationloop(NPC, Spawn)
	PlayAnimation(NPC, 10961)
	AddTimer(NPC, 2000, "animationloop")
end

function inrange(NPC, Spawn)
	AddTimer(NPC, 150000, "startfight")
end

function startfight(NPC)
	if GetTempVariable(NPC, "combat_start") == "0"  then  
		Say(NPC, "Thank goodness someone arrived!  I'm working for the Far Seas Trading Company, trying to get the mine operational again.  The \"Adventurers\" hired to help me pocketed their advance and fled.  There's a behemoth that's been terrorizing the miners, and profits are nonexistent!")
		Say(NPC, "If you protect me while I cast my enchantment, you should be able to defeat the beast.  The reward will be well worth your effort.  Just protect me while I enchant the behemoth.")
		Say(NPC, "Make sure to dispatch any distractions quickly or I will lose my concentration.  I must begin my casting now, before the beast reaches the top.")
		SetTempVariable(NPC, "combat_start", "1")
		animationloop(NPC, NPC)
		AddTimer(NPC, 150000, "spawnfirstwave")
	end
end

function spawnfirstwave(NPC)
    local zone = GetZone(NPC)
	local Spawn2 = SpawnGroupByID(zone, 4120) -- Greather Symbiant
	AddTimer(NPC, 120000, "spawnfirstwaveisalive")
end

function spawnfirstwaveisalive(NPC) -- If add alive display warning text / if not go to second wave
    local zone = GetZone(NPC)
	local firstwavegrp = GetGroup(GetSpawnGroupByID(zone, 4120))
    if not firstwavegrp == nil then
		SetTempVariable(NPC, "combat_notfinish", "0")
        for k,v in ipairs(firstwavegrp) do
			if IsAlive(GetSpawnByLocationID(zone, v)) then
				SetTempVariable(NPC, "combat_notfinish", "1")
				break
			end
        end
	else
		SetTempVariable(NPC, "combat_notfinish", "0")
    end
	if GetTempVariable(NPC, "combat_notfinish") == "1" then
		Say(NPC, "I can't work in these conditions.  Dispatch those fleas so I can concentrate or I'll leave you to fight the creature in his natural state!")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 30000, "spawnfirstwaveisalivefinal")
	else
		Say(NPC, "Good work with those symbiants.  I should be done here soon.")
		AddTimer(NPC, 300000, "spawnsecondwave")
	end
end

function spawnfirstwaveisalivefinal(NPC) -- If add alive display fail text and continue pop / if not go to second wave
    local zone = GetZone(NPC)
	local firstwavegrp = GetGroup(GetSpawnGroupByID(zone, 4120))
    if not firstwavegrp == nil then
		SetTempVariable(NPC, "combat_notfinish", "0")
        for k,v in ipairs(firstwavegrp) do
			if IsAlive(GetSpawnByLocationID(zone, v)) then
				SetTempVariable(NPC, "combat_notfinish", "1")
				break
			end
        end
	else
		SetTempVariable(NPC, "combat_notfinish", "0")
    end
	if GetTempVariable(NPC, "combat_notfinish") == "1" then
		Say(NPC, "I can't work like this. You're on your own.  I'm evacuating this forsaken mine, and I advise you to leave before the Behemoth tears you all apart as well.")
		-- Play annim and despawn
		Despawn(NPC)
	else
		Say(NPC, "Good work with those symbiants.  I should be done here soon.")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 300000, "spawnsecondwave")
	end
end

function spawnsecondwave(NPC)
    local zone = GetZone(NPC)
	SpawnGroupByID(zone, 4121) -- Greather Symbiant
	AddTimer(NPC, 120000, "spawnsecondwaveisalive")
end

function spawnsecondwaveisalive(NPC) -- If add alive display warning text / if not go to second wave
    local zone = GetZone(NPC)
	local firstwavegrp = GetGroup(GetSpawnGroupByID(zone, 4121))
    if not firstwavegrp == nil then
		SetTempVariable(NPC, "combat_notfinish", "0")
        for k,v in ipairs(firstwavegrp) do
			if IsAlive(GetSpawnByLocationID(zone, v)) then
				SetTempVariable(NPC, "combat_notfinish", "1")
				break
			end
        end
	else
		SetTempVariable(NPC, "combat_notfinish", "0")
    end
	if GetTempVariable(NPC, "combat_notfinish") == "1" then
		Say(NPC, "I can't work in these conditions.  Dispatch those fleas so I can concentrate or I'll leave you to fight the creature in his natural state!")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 30000, "spawnsecondwaveisalivefinal")
	else
		Say(NPC, "Good work with those symbiants.  I should be done here soon.")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 300000, "spawnthirdwave")
	end
end

function spawnsecondwaveisalivefinal(NPC)
    local zone = GetZone(NPC)
	local firstwavegrp = GetGroup(GetSpawnGroupByID(zone, 4121))
    if not firstwavegrp == nil then
		SetTempVariable(NPC, "combat_notfinish", "0")
        for k,v in ipairs(firstwavegrp) do
			if IsAlive(GetSpawnByLocationID(zone, v)) then
				SetTempVariable(NPC, "combat_notfinish", "1")
				break
			end
        end
	else
		SetTempVariable(NPC, "combat_notfinish", "0")
    end
	if GetTempVariable(NPC, "combat_notfinish") == "1" then
		Say(NPC, "I can't work like this. You're on your own.  I'm evacuating this forsaken mine, and I advise you to leave before the Behemoth tears you all apart as well.")
		-- Play annim and despawn
		Despawn(NPC)
	else
		Say(NPC, "Good work with those symbiants.  I should be done here soon.")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 300000, "spawnsecondwave")
	end
end

function spawnthirdwave(NPC)
    local zone = GetZone(NPC)
	SpawnGroupByID(zone, 4122) -- Greather Symbiant
	AddTimer(NPC, 120000, "spawnthirdisalive")
end

function spawnthirdwaveisalive(NPC) -- If add alive display warning text / if not go to second wave
    local zone = GetZone(NPC)
	local firstwavegrp = GetGroup(GetSpawnGroupByID(zone, 4122))
    if not firstwavegrp == nil then
		SetTempVariable(NPC, "combat_notfinish", "0")
        for k,v in ipairs(firstwavegrp) do
			if IsAlive(GetSpawnByLocationID(zone, v)) then
				SetTempVariable(NPC, "combat_notfinish", "1")
				break
			end
        end
	else
		SetTempVariable(NPC, "combat_notfinish", "0")
    end
	if GetTempVariable(NPC, "combat_notfinish") == "1" then
		Say(NPC, "I can't work in these conditions.  Dispatch those fleas so I can concentrate or I'll leave you to fight the creature in his natural state!")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 30000, "spawnthirdwaveisalivefinal")
	else
		Say(NPC, "Good work with those symbiants.  I should be done here soon.")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 300000, "spawnbehemoth")
	end
end

function spawnthirdwaveisalivefinal(NPC)
    local zone = GetZone(NPC)
	local firstwavegrp = GetGroup(GetSpawnGroupByID(zone, 4122))
    if not firstwavegrp == nil then
		SetTempVariable(NPC, "combat_notfinish", "0")
        for k,v in ipairs(firstwavegrp) do
			if IsAlive(GetSpawnByLocationID(zone, v)) then
				SetTempVariable(NPC, "combat_notfinish", "1")
				break
			end
        end
	else
		SetTempVariable(NPC, "combat_notfinish", "0")
    end
	if GetTempVariable(NPC, "combat_notfinish") == "1" then
		Say(NPC, "I can't work like this. You're on your own.  I'm evacuating this forsaken mine, and I advise you to leave before the Behemoth tears you all apart as well.")
		StopTimer(NPC, "animationloop")
		-- Play annim and despawn
		Despawn(NPC)
	else
		Say(NPC, "Good work with those symbiants.  I should be done here soon.")
		SetTempVariable(NPC, "combat_finish", "0")
		AddTimer(NPC, 300000, "spawnbehemot")
		StopTimer(NPC, "animationloop")
	end
end

function spawnbehemot(NPC)
	local zone = GetZone(NPC) -- grab zone
	SpawnByLocationID(zone, 339505)
	Despawn(NPC)
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