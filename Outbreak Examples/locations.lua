location_visited = function(id)
    print("location_visited: " .. tostring(id) .. "\n")

    if id == 1852042661 then
        --return "Atlas Park plaque"
        MapClientSession.simple_dialog(client, "Information Box")
    elseif id == 1599205236 then
        return "Police on the way!"
    elseif id == -1112143698 then
        return "All agents are currently assisting other customers...."
    else  
        MapClientSession.simple_dialog(client, "location_visited: " .. tostring(id))
    end
    return ""
end
