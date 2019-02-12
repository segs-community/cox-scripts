include_lua('Mock_ES.lua')
include_lua('ES_Library_Objects.lua')

function Spawn()
        --TODO: A scaling routine

        print("Starting Dynamic Spawn.")

        --print("Groups counted: " .. GetGroupContainersCount(ES_Object))
        local ESGroups = GetGroupContainers(ES_Object)
        --print("Groups located: " .. #ESGroups)

        if #ESGroups == 0 then
                return ""   --no groups, we can exit
        end

        for testIndex = 1, #ESGroups do
                for k,v in pairs(ES_Object[ESGroups[testIndex]]) do
                        if IsSpawnDef(tostring(k)) ~= nil then    --this is a Spawn Definiton entry
                                local Encounter = k   --for clarity
                                local Spawner = v     --for clarity
                                local SquadCount = math.random(1, GetCanSpawnCount(Encounter))
                                local RandomCanSpawn = "CanSpawn" .. SquadCount
                                local BaseType = GetBaseType(Encounter)
                                local Variant = {}
                                Variant = GetVariant(Encounter, RandomCanSpawn)

                                --Now, step through the template's markers and critter pools.
                                for marker, critter in pairs(Variant[BaseType]) do
                                        local EncPos = Spawner[marker].Position
                                        local EncRot = Spawner[marker].Rotation
                                        local SpawnEntity
                                        --if it's is a table, get a random critter instead
                                        if type(critter) == "table" then
                                                SpawnEntity = critter[math.random(1, #critter)]
                                        else
                                                SpawnEntity = critter
                                        end
                                        --time to make it happen
                                        spawnCritter(SpawnEntity, EncPos, EncRot)
                                end
                        end
                end
        end

        return ""
end

--[[
      These functions are generally necsssary. MODIFY WITH DISCRETION
]]

--Guess!!
function spawnCritter(critter, position, rotation)
      --print("Starting critter spawn with " .. critter)
      MapClientSession.addNpcWithOrientation(client, critter, position, 1, rotation)
      return ""
end


--Returns a table of subgroups found in supplied container group.
function GetGroupContainers(Container)
      local Groups = {}
        for k,v in pairs(Container) do
            if not tonumber(k) then     --ignoring numeric index values
              table.insert(Groups, k)   --k is therefore (hypothetically) a grpXXXX
            end
        end
      return Groups
end

--Returns a count of subgroups found in supplied container group.
function GetGroupContainersCount(Container)
  local Count = 0
    for k,v in pairs(Container) do
        if not tonumber(k) then     --ignoring numeric index values
          Count = Count + 1
        end
    end
  return Count
end
