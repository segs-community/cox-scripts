
plaque_visited = function(name, loc)

    printDebug("Plaque name: " .. name .. " Loc X: " .. round2(loc.x, 4) .. " Y: " .. round2(loc.y, 4) .. " Z: " .. round2(loc.z, 4))
    vec3Ptest = vec3.new(round2(loc.x, 4),round2(loc.y, 4),round2(loc.z, 4))
    Character.faceLocation(client.m_ent, vec3Ptest)
    
    return ""
end
