local GlueEnforce = {}

function GlueEnforce.Say(value,skipfront)
    local Skip 
    if skipfront and type(skipfront) == "boolean" then
        Skip = skipfront
    elseif not skipfront then 
        Skip = false
    elseif skipfront and type(skipfront) ~= "boolean" then
        local TYPE = type(skipfront)
        error("GlueEnforce::Say::Second Argument of the function is not a `boolean` instead is a "..TYPE)
        end
    if Skip == false then
        io.write(value.."\n")
    else
        io.write("\n"..value.."\n")
    end
    
end

function GlueEnforce.PromptUser(sayToUser, skipFront)
    local Skip 
    if skipFront and type(skipFront) == "boolean" then
        Skip = skipFront
    elseif not skipFront then 
        Skip = false
    elseif skipFront and type(skipFront) ~= "boolean" then
        local TYPE = type(skipFront)
        error("GlueEnforce::Say::Second Argument of the function is not a `boolean` instead is a "..TYPE)
        end
    if Skip == false then
        io.write(sayToUser.."\n".."\n")
    else
        io.write("\n"..sayToUser.."\n")
    end

    local Response = io.read("*l")
    return Response
end

function GlueEnforce.StartScreenLoad(customMessage)
    if customMessage then 
        io.write(customMessage.."\n")
        io.write("Press Start to Begin")
        
        local Response = io.read("*l")
        return Response
    else
        io.write("Press Start to Begin")
        local Response = io.read("*l")
        return Response
    end
end

return GlueEnforce