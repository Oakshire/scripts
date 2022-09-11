--[[
	Script Name		:	SpawnScripts/EchoesOfTimeEpic/KingZalaktheAncient.lua
	Script Purpose	:	King Zalak the Ancient in Echoes of Time: Epic 
	Script Author	:	alfa24t
	Script Date		:	03/09/2022
	Boss Mechanics : Boss periodically call Royal Patriarch that can spawn in 3 different spot. If Royal P come near Zalak it cast AOE on raid and heal Zalak

Buff
UnholyBlessing -- 90195
InnoruuksCaress -- 90130
Spell
Grave Sacrament III -- 90105
SiphonStrength -- 90174

--]]

buffs = {90195, 90130}
spells = {90105,90174}
groupspawn = {365523, 365519, 365524, 365521, 365522} --need to remove 365520 from zone spwns
adds = {365525, 365526, 133772501, 133772502, 133772503, 133772504, 133772505, 133772506, 133772507}

function spawn(NPC)
	AddTimer(NPC, 1500, "spellbuffloop")
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
end

function aggro(NPC, Spawn)
	AddTimer(NPC, math.random(15000, 25000), "spellattackloop")
    AddTimer(NPC, 30000, "addsloop")
end

function spellbuffloop(NPC, Spawn) -- Loopback function for spellcasts.
	if IsAlive(NPC) then
		CastSpell(NPC, buffs[math.random(#buffs)], 3, NPC)
		AddTimer(NPC, math.random(15000, 25000), "spellbuffloop")
	end
end

function spellattackloop(NPC, Spawn) -- Loopback function for spellcasts.
	if IsAlive(NPC) then
		if IsInCombat(NPC) then
			local hated = GetMostHated(NPC) 
			if hated ~= nil then 
				FaceTarget(NPC, hated) 
				CastSpell(hated, spells[math.random(#spells)], 3, NPC)
			end
			AddTimer(NPC, math.random(15000, 25000), "spellattackloop")
		end
	end
end

function addsloop(NPC, Spawn)
	zone = GetZone(NPC)
	if IsAlive(NPC) then
		if IsInCombat(NPC) then
			Shout(NPC, "Royal Patriarchs come aid your king!")
			SpawnByLocationID(zone, adds[math.random(#adds)])
			SpawnByLocationID(zone, adds[math.random(#adds)])
			SpawnByLocationID(zone, adds[math.random(#adds)])
			AddTimer(NPC, 30000, "addsloop")
		end
	end
end

function healthchanged(NPC, Spawn)
end

function auto_attack_tick(NPC, Spawn)
end

function death(NPC, Spawn)
	--StopTimer(NPC, "spellbuffloop")
	--StopTimer(NPC, "spellattackloop")
	--StopTimer(NPC, "addsloop")
	for k,v in ipairs(adds) do
		if IsAlive(GetSpawnByLocationID(zone, v)) then
			Despawn(GetSpawnByLocationID(zone, v), 1)
		end
	end
end

function killed(NPC, Spawn)
	--StopTimer(NPC, "spellbuffloop")
	--StopTimer(NPC, "spellattackloop")
	--StopTimer(NPC, "addsloop")
	for k,v in ipairs(adds) do
		if IsAlive(GetSpawnByLocationID(zone, v)) then
			Despawn(GetSpawnByLocationID(zone, v), 1)
		end
	end
end

function CombatReset(NPC)
	--StopTimer(NPC, "spellbuffloop")
	--StopTimer(NPC, "spellattackloop")
	--StopTimer(NPC, "addsloop")
	local zone = GetZone(NPC)
	for k,v in ipairs(adds) do
		if IsAlive(GetSpawnByLocationID(zone, v)) then
			Despawn(GetSpawnByLocationID(zone, v), 1)
		end
	end
	for k,v in ipairs(groupspawn) do
		if IsAlive(GetSpawnByLocationID(zone, v)) then
			Despawn(GetSpawnByLocationID(zone, v), 1)
		end
	end
	SpawnGroupByID(zone, 9116)
	Despawn(NPC)
end

function randomchat(NPC, Message)
end