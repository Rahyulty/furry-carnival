local Enforce = require "Modules.Enforce"

local Stage1 = {}

Options1 = {
    "[1] Join Them",
    "[2] Refuse",
    "[3] Back"
}

Options2 = {

}
function Stage1.Launch()
    Enforce.Say("You woke up and your head hurts. You dont rember what happened last night but you have a bad feeling about whats going on. You look outside your window and see your village in torn apart and burning. No one is left except you.")
    Enforce.Say("As you get yourself together you hear a knock on your front door. You go down stairs and open your door hoping its your mother and father.It was not")
end



return Stage1